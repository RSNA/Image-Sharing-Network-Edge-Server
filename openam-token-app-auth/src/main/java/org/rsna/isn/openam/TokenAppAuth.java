/* Copyright (c) 2014, Radiological Society of North America
 * All rights reserved.
 * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * Neither the name of the Radiological Society of North America nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 * CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
 * THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
 * USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 */

package org.rsna.isn.openam;

import javax.security.auth.Subject;
import javax.security.auth.callback.Callback;
import javax.security.auth.callback.NameCallback;
import javax.security.auth.callback.PasswordCallback;
import javax.security.auth.login.LoginException;
import com.sun.identity.authentication.spi.AMLoginModule;
import com.sun.identity.authentication.spi.AuthLoginException;
import com.sun.identity.authentication.spi.InvalidPasswordException;
import com.sun.identity.authentication.util.ISAuthConstants;
import com.sun.identity.shared.datastruct.CollectionHelper;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.Map;
import java.util.ResourceBundle;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import org.rsna.isn.TokenAppHash;
import java.security.Principal;

public class TokenAppAuth extends AMLoginModule
{
    private static String amAuthTokenAppAuth = "amAuthTokenAppAuth";
    private Map options;
    private Map sharedState;
    private ResourceBundle bundle;
    private String password;
    private String passwordHash;
    private String passwordSalt;
    private String userName;
    private Principal userPrincipal = null;
    private String userTokenId;

    private class TokenAppPrincipal implements Principal, java.io.Serializable {
	private String name;
	
	TokenAppPrincipal(String name) {
	    this.name = name;
	}
	public String getName() {
	    return name;
	}
	public String toString() {
	    return ("TokenAppPrincipal:  " + name);
	}

	public boolean equals(Object o) {
	    if (o == null) {
		return false;
	    }
	    
	    if (this == o) {
		return true;
	    }
	    
	    if (!(o instanceof TokenAppPrincipal)) {
		return false;
	    }
	    
	    TokenAppPrincipal that = (TokenAppPrincipal)o;
	    return this.getName().equals(that.getName());
	}

	public int hashCode() {
	    return name.hashCode();
	}

    }

    public TokenAppAuth()
    {
	super();
    }

    public void init(Subject subject, Map sharedState, Map options)
    {
        this.options = options;
        this.sharedState = sharedState;
        bundle = amCache.getResBundle(amAuthTokenAppAuth, getLoginLocale());
    }

    public int process(Callback[] callbacks, int state) throws AuthLoginException
    {
	
	if (state != ISAuthConstants.LOGIN_START) {
            throw new AuthLoginException(amAuthTokenAppAuth, "invalidState", null);
        }
        if (callbacks != null && callbacks.length == 0) {
            userName = (String) sharedState.get(getUserKey());
	    password = (String) sharedState.get(getPwdKey());
	    if (userName == null || password == null) {
		return ISAuthConstants.LOGIN_START;
            }
        } else {        
            userName = ((NameCallback) callbacks[0]).getName();
                
            password = new String(((PasswordCallback) callbacks[1]).getPassword());
                
            if (userName == null || userName.length() == 0) {
                throw new AuthLoginException(amAuthTokenAppAuth, "noUserName", null);
            }
        }
        
	storeUsernamePasswd(userName, password);
	
	Connection database = null;

	try {
	    Context initctx = new InitialContext();
	    DataSource ds = (DataSource)initctx.lookup("java://rsnadbDS");
	    
	    database = ds.getConnection();
	    PreparedStatement thisStatement = 
		database.prepareStatement("select user_login,crypted_password,salt,role_id from users where user_login = ?");
	    thisStatement.setString(1,userName);
	    
	    ResultSet results = thisStatement.executeQuery();
	    
	    if (results == null) {
		throw new AuthLoginException(amAuthTokenAppAuth, "nullResult", null);
	    }
	    
	    if(results.next()) {
		passwordHash = results.getString("crypted_password");
		passwordSalt = results.getString("salt");
		setAuthLevel(results.getInt("role_id"));
	    } else {
		throw new AuthLoginException(amAuthTokenAppAuth, "nullResult", null);
	    }
	} catch(Throwable e) {
	    throw new AuthLoginException(e);
	} finally {
	    if(database != null)
		try {
		    database.close();
		} catch(Exception e) {}
	}
	boolean passwordMatch = false;
	if(password != null) {
	    try {
	    passwordMatch = java.security.MessageDigest.isEqual(TokenAppHash.gen(passwordSalt, password).getBytes("UTF8"),
								passwordHash.getBytes("UTF8"));
	    } catch(Exception e) {}
	}
	if (passwordMatch) {
            userTokenId = userName;
            return ISAuthConstants.LOGIN_SUCCEED;
        } else {           
	    setFailureID(userName);
            throw new InvalidPasswordException(amAuthTokenAppAuth, "loginFailed", null, userName, null);
        }

    }

    public java.security.Principal getPrincipal()
    {
	if (userPrincipal != null) {
            return userPrincipal;
        } else if (userTokenId != null) {
            userPrincipal = new TokenAppPrincipal(userTokenId);
            return userPrincipal;   
        } else {
            return null;
        }
    }

    public void destroyModuleState() {

        userTokenId = null;
        userPrincipal = null;
    }

    public void nullifyUserdVars() {

	options = null;
	sharedState = null;
	bundle = null;
	password = null;
	passwordHash = null;
	passwordSalt = null;
	userName = null;
	userPrincipal = null;
	userTokenId = null;
    }
}
