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

package org.rsna.isn;

import java.security.MessageDigest;
import java.math.BigInteger;

public class TokenAppHash {
    
    private static String REST_AUTH_SITE_KEY = "7fba4c77e47e71b8d00c1431e1553ca6b9a8ffe7";
    private static int REST_AUTH_DIGEST_STRETCHES = 10;

    public static String gen(String salt, String password) throws Exception {
	
	MessageDigest md = MessageDigest.getInstance("SHA-1");
	String digestStr = REST_AUTH_SITE_KEY;
	byte[] constBytes = ("--" + salt + "--" + password + "--" + REST_AUTH_SITE_KEY).getBytes("UTF8");
	for(int i = 0;i<REST_AUTH_DIGEST_STRETCHES;i++) {
	    md.update(digestStr.getBytes("UTF8"));
	    md.update(constBytes);
	    digestStr = String.format("%040x", (new BigInteger(1,md.digest())));
	    md.reset();
	}
	return digestStr;
    }
}
