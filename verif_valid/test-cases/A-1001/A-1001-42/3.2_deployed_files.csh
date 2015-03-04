#!/bin/csh
set NEW_PATH=edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs
set UPGRADE_PATH=/usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs

foreach f ( \
  openam-shared-11.0.0.jar \
  commons-logging-api-1.1.jar \
  openam-xacml3-schema-11.0.0.jar \
  openam-idpdiscovery-11.0.0.jar \
  org.restlet.ext.jackson-2.1.1.jar \
  cc_zh_TW-2008-08-08.jar \
  ST4-4.0.7.jar \
  openam-dtd-schema-11.0.0.jar \
  openam-mib-schema-11.0.0.jar \
  webservices-rt-2009-29-07.jar \
  authapi-2005-08-12.jar \
  dcm4che-net-2.0.26.jar \
  openam-auth-oauth2-11.0.0.jar \
  jsr311-api-1.1.1.jar \
  jaxrpc-spi-1.1.3_01.jar \
  forgerock-authz-filter-1.2.0.jar \
  org.restlet.osgi-org.restlet-2.1.1.jar \
  openam-authz-filter-11.0.0.jar \
  prep-content-3.2.0-t1.jar \
  jersey-client-1.1.5.2.jar \
  cc_es-2008-08-08.jar \
  cc_it-2008-08-08.jar \
  openam-dashboard-11.0.0.jar \
  openam-wsfederation-schema-11.0.0.jar \
  openam-auth-cert-11.0.0.jar \
#  activation-1.1.jar \
  cc_zh-2008-08-08.jar \
  forgerock-jaspi-container-1.2.0.jar \
  xercesImpl-2.11.0.jar \
  cc_sv-2008-08-08.jar \
  jaxp-api-1.4.2.jar \
  openam-auth-ad-11.0.0.jar \
  xml-serializer-2.11.0.jar \
  org.restlet.osgi-org.restlet.ext.json-2.1.1.jar \
  isorelax-20030108.jar \
  commons-collections-3.2.1.jar \
  openam-saml2-schema-11.0.0.jar \
  aopalliance-1.0.jar \
  commons-cli-1.2.jar \
  openam-auth-httpbasic-11.0.0.jar \
  json-web-token-2.0.2.jar \
  grizzly-framework-2.3.4.jar \
  org.osgi.core-4.0.0.jar \
  velocity-1.7.jar \
  antlr-runtime-3.5.jar \
  dcm4che-tool-dcmecho-2.0.28.jar \
  json-fluent-2.0.2.jar \
  openam-cli-impl-11.0.0.jar \
  xml-apis-2.11.0.jar \
  cc_fr-2008-08-08.jar \
  org.restlet.jse-org.restlet-2.1.1.jar \
  openam-core-11.0.0.jar \
  openam-cli-definitions-11.0.0.jar \
  json-resource-2.0.2.jar \
  jato-2005-05-04.jar \
  esapiport-2009-26-07.jar \
  openam-datastore-11.0.0.jar \
  postgresql-8.4-702.jdbc4.jar \
  openam-coretoken-11.0.0.jar \
  publicsuffix-1.0.1.jar \
  openam-auth-radius-11.0.0.jar \
  openam-auth-hotp-11.0.0.jar \
  openam-server-auth-ui-11.0.0.jar \
  openam-auth-persistentcookie-11.0.0.jar \
  i18n-core-1.4.0.jar \
  OpenFM-11.0.0.jar \
  openam-federation-library-11.0.0.jar \
  xalan-2.7.1.jar \
  org.restlet.osgi-org.restlet.lib.org.json-2.0.jar \
  freemarker-2.3.19.jar \
  openam-auth-datastore-11.0.0.jar \
  oauth-client-1.1.5.2.jar \
  openam-jaxrpc-schema-11.0.0.jar \
  openam-auth-msisdn-11.0.0.jar \
  openam-authn-filter-modules-11.0.0.jar \
  openam-auth-adaptive-11.0.0.jar \
  click-nodeps-2.3.0.jar \
  openam-auth-deviceprint-module-11.0.0.jar \
  openam-auth-nt-11.0.0.jar \
  jackson-core-asl-1.9.7.jar \
  org.restlet.jse-org.restlet.ext.json-2.1.1.jar \
#  xml-resolver-2.11.0.jar \
  slf4j-log4j12-1.6.1.jar \
  openam-authfilter-shared-11.0.0.jar \
  click-extras-2.3.0.jar \
  javax.mail-1.5.1.jar \
  webservices-extra-2008-03-12.jar \
  openam-auth-ldap-11.0.0.jar \
  relaxngDatatype-20020414.jar \
  json-resource-servlet-2.0.2.jar \
  openam-ldap-utils-11.0.0.jar \
  openam-common-auth-ui-11.0.0.jar \
  openam-auth-oath-11.0.0.jar \
  openam-auth-windowsdesktopsso-11.0.0.jar \
  forgerock-util-1.1.0.jar \
  xsdlib-20060615.jar \
#  log4j-1.2.16.jar \
  commons-fileupload-1.2.2.jar \
  java-ipv6-0.14.jar \
  oauth-server-1.1.5.2.jar \
  openam-forgerock-rest-11.0.0.jar \
#  activation-1.1.jar \
  jaxrpc-impl-1.1.3_01-041406.jar \
  jstl-1.1.2.jar \
  openam-oauth2-core-token-service-11.0.0.jar \
#  log4j-1.2.16.jar \
  json-20090211.jar \
  cc_ja-2008-08-08.jar \
  webservices-extra-api-2003-09-04.jar \
  openam-auth-common-11.0.0.jar \
  commons-codec-1.6.jar \
  openam-oauth2-common-11.0.0.jar \
  commons-lang-2.4.jar \
  openam-oauth2-main-11.0.0.jar \
  commons-io-2.3.jar \
  forgerock-auth-filter-common-1.2.0.jar \
  commons-logging-1.1.3.jar \
  guice-3.0.jar \
  antlr-2.7.7.jar \
  org.restlet.ext.freemarker-2.1.1.jar \
  cc_de-2008-08-08.jar \
  slf4j-api-1.6.1.jar \
  openam-oauth2-restlet-extension-11.0.0.jar \
  javax.security.auth.message-3.1.jar \
  je-5.0.73.jar \
  openam-auth-jdbc-11.0.0.jar \
  openam-entitlements-11.0.0.jar \
  openam-rest-11.0.0.jar \
  openam-auth-securid-11.0.0.jar \
  commons-lang-2.6.jar \
  json-patch-1.0.0.jar \
  c3p0-0.9.1.2.jar \
  openam-oauth-11.0.0.jar \
  forgerock-jaspi-jwt-session-module-1.2.0.jar \
  geoip-1.2.8.jar \
  opendj-server-2.6.0.jar \
  openam-auth-anonymous-11.0.0.jar \
  jasypt-1.9.1.jar \
  webservices-api-2009-14-01.jar \
  openam-auth-membership-11.0.0.jar \
  cc-2008-08-08.jar \
  opendj-ldap-sdk-2.6.4.jar \
  dcm4che-core-2.0.26.jar \
  openam-liberty-schema-11.0.0.jar \
  openam-authn-filter-config-11.0.0.jar \
  openam-auth-application-11.0.0.jar \
  serializer-2.7.1.jar \
  org.restlet.ext.servlet-2.1.1.jar \
  openam-idsvcs-schema-11.0.0.jar \
  jss4-2007-08-11.jar \
  stringtemplate-3.2.1.jar \
  org.restlet.jse-org.restlet.lib.org.json-2.0.jar \
  ognl-2.6.9.jar \
  mail-1.4.5.jar \
  jaxrpc-api-1.1.jar \
  jersey-bundle-1.1.1-ea.jar \
  commons-io-1.4.jar \
  openam-annotations-11.0.0.jar \
  oauth-signature-1.1.5.2.jar \
  slf4j-api-1.7.2.jar \
  openam-oauth2-openam-extension-11.0.0.jar \
  org.forgerock.json.resource-1.2.2.jar \
  javax.inject-1.jar \
  jsoup-1.7.3.jar \
  cc_zh_HK-2008-08-08.jar \
  cc_ko-2008-08-08.jar \
  cc_zh_CN-2008-08-08.jar \
  jdmkrt-2007-01-10.jar \
  core-3.2.0-t1.jar \
  jackson-mapper-asl-1.9.7.jar \
 )
  echo $f
  echo diff -q  $NEW_PATH/*/*/$f $UPGRADE_PATH/*/*/$f
  diff -q  $NEW_PATH/*/*/$f $UPGRADE_PATH/*/*/$f
end

foreach f ( \
  db/seeds.rb \
  README \
  Rakefile \
  pom.xml \
  target/dependency-maven-plugin-markers/org.rsna.isn-torquebox-zip-3.x.incremental.1870.marker \
  META-INF/MANIFEST.MF \
  app/views/sessions/new.html.erb \
  app/views/retrieve_content/index.html.erb \
  app/views/patients/_results.html.erb \
  app/views/patients/_blank_search_term.html.erb \
  app/views/patients/_consent_dialog.html.erb \
  app/views/patients/create_rsna_id.html.erb \
  app/views/patients/index.html.erb \
  app/views/patients/xds_export.html.erb \
  app/views/patients/xds_import.html.erb \
  app/views/users/_reset_password_form.html.erb \
  app/views/users/new.html.erb \
  app/views/users/roles.html.erb \
  app/views/users/_user_bar.html.erb \
  app/views/users/change_password.html.erb \
  app/views/layouts/_tabs.html.erb \
  app/views/layouts/application.html.erb \
  app/views/layouts/print.html.erb \
  app/views/exams/_results.html.erb \
  app/views/exams/search.html.erb \
  app/views/exams/show_cart.html.erb \
  app/views/exams/print_site_to_site_info.html.erb \
  app/views/exams/retry_job.html.erb \
  app/views/exams/_token_info.html.erb \
  app/views/exams/print_patient_info.html.erb \
  app/views/exams/index.html.erb \
  app/views/exams/_token_dialog.html.erb \
  app/views/edge_configurations/_form.html.erb \
  app/views/edge_configurations/new.html.erb \
  app/views/edge_configurations/index.html.erb \
  app/views/edge_configurations/edit.html.erb \
  app/views/devices/_form.html.erb \
  app/views/devices/new.html.erb \
  app/views/devices/index.html.erb \
  app/views/devices/edit.html.erb \
  app/views/admin/audit.html.erb \
  app/views/admin/_paginator.html.erb \
  app/views/admin/_paginated_results.html.erb \
  app/views/admin/_audit_details.html.erb \
  app/views/admin/_transaction_list.html.erb \
  app/views/admin/_paginator_buttons.html.erb \
  app/views/tail/index.html.erb \
  app/views/email_configurations/edit_email_configuration.html.erb \
  app/views/email_configurations/test.html.erb \
  app/helpers/application_helper.rb \
  app/helpers/devices_helper.rb \
  app/helpers/documents_helper.rb \
  app/helpers/edge_configurations_helper.rb \
  app/controllers/sessions_controller.rb \
  app/controllers/devices_controller.rb \
  app/controllers/users_controller.rb \
  app/controllers/exams_controller.rb \
  app/controllers/email_configurations_controller.rb \
  app/controllers/configuration_methods.rb \
  app/controllers/application_controller.rb \
  app/controllers/admin_controller.rb \
  app/controllers/patients_controller.rb \
  app/controllers/tail_controller.rb \
  app/controllers/edge_configurations_controller.rb \
  app/controllers/retrieve_content_controller.rb \
  app/assets/images/IMageShareLogo.png \
  app/assets/images/footer-background.png \
  app/assets/images/reverse-tab-right.png \
  app/assets/images/print-button-background.png \
  app/assets/images/dialog-background.png \
  app/assets/images/footer.png \
  app/assets/images/header-background-purple.png \
  app/assets/images/rsna-image-share.png \
  app/assets/images/title-gradient.png \
  app/assets/images/reverse-tab-left.png \
  app/assets/images/rsna-edge.png \
  app/assets/images/button-background.png \
  app/assets/images/header-background.png \
  app/assets/images/footer-hand.png \
  app/assets/images/print-header.jpg \
  app/assets/images/nibib-logo.png \
  app/assets/images/asc.gif \
  app/assets/images/ajax-loader.gif \
  app/assets/images/rails.png \
  app/assets/images/desc.gif \
  app/assets/javascripts/iframe.js \
  app/assets/javascripts/application.js \
  app/assets/javascripts/slate.js \
  app/assets/javascripts/slate/bootswatch.js \
  app/assets/javascripts/slate/loader.js \
  app/assets/javascripts/pages/email_configuration.js \
  app/assets/javascripts/pages/cart.js \
  app/assets/javascripts/pages/test_email.js \
  app/assets/javascripts/stuff.js \
  app/assets/stylesheets/sti-edge.css \
  app/assets/stylesheets/print_layout.css \
  app/assets/stylesheets/application.css \
  app/assets/stylesheets/slate.css \
  app/assets/stylesheets/slate/base.less \
  app/assets/stylesheets/slate/loader.css.less \
  app/assets/stylesheets/slate/bootswatch.css.less \
  app/assets/stylesheets/slate/mixins.less \
  app/assets/stylesheets/slate/variables.less \
  app/models/exam.rb \
  app/models/patient.rb \
  app/models/view_exam_status.rb \
  app/models/report_author.rb \
  app/models/job.rb \
  app/models/device.rb \
  app/models/job_transaction.rb \
  app/models/hipaa_accession_number.rb \
  app/models/email_configuration.rb \
  app/models/user.rb \
  app/models/job_set.rb \
  app/models/hipaa_mrn.rb \
  app/models/search.rb \
  app/models/status_code.rb \
  app/models/hipaa_view.rb \
  app/models/edge_configuration.rb \
  app/models/rsna_id.rb \
  app/models/view_job_status.rb \
  app/models/report.rb \
  lib/sso.rb \
  lib/rsna_tables.rb \
  lib/tasks/torquebox.rake \
  lib/hipaa_filter/tasks/hipaa_log_tasks.rake \
  lib/hipaa_filter/test/hipaa_log_test.rb \
  lib/hipaa_filter/hipaa_filter/hipaa_log.rb \
  lib/hipaa_filter/spec/test_body.rb \
  lib/restful-authentication/LICENSE \
  lib/restful-authentication/Rakefile \
  lib/restful-authentication/tasks/auth.rake \
  lib/restful-authentication/restful-authentication.gemspec \
  lib/restful-authentication/TODO \
  lib/restful-authentication/lib/trustification.rb \
  lib/restful-authentication/lib/authorization/aasm_roles.rb \
  lib/restful-authentication/lib/authorization/stateful_roles.rb \
  lib/restful-authentication/lib/trustification/email_validation.rb \
  lib/restful-authentication/lib/authentication/by_cookie_token.rb \
  lib/restful-authentication/lib/authentication/by_password.rb \
  lib/restful-authentication/lib/authorization.rb \
  lib/restful-authentication/lib/authentication.rb \
  lib/restful-authentication/rails/init.rb \
  lib/restful-authentication/CHANGELOG \
  lib/restful-authentication/generators/authenticated/authenticated_generator.rb \
  lib/restful-authentication/generators/authenticated/USAGE \
  lib/restful-authentication/generators/authenticated/lib/insert_routes.rb \
  lib/restful-authentication/generators/authenticated/templates/model_controller.rb \
  lib/restful-authentication/generators/authenticated/templates/authenticated_test_helper.rb \
  lib/restful-authentication/generators/authenticated/templates/controller.rb \
  lib/restful-authentication/generators/authenticated/templates/features/accounts.feature \
  lib/restful-authentication/generators/authenticated/templates/features/sessions.feature \
  lib/restful-authentication/generators/authenticated/templates/features/step_definitions/user_steps.rb \
  lib/restful-authentication/generators/authenticated/templates/features/step_definitions/rest_auth_features_helper.rb \
  lib/restful-authentication/generators/authenticated/templates/features/step_definitions/ra_navigation_steps.rb \
  lib/restful-authentication/generators/authenticated/templates/features/step_definitions/ra_response_steps.rb \
  lib/restful-authentication/generators/authenticated/templates/features/step_definitions/ra_resource_steps.rb \
  lib/restful-authentication/generators/authenticated/templates/features/step_definitions/ra_env.rb \
  lib/restful-authentication/generators/authenticated/templates/helper.rb \
  lib/restful-authentication/generators/authenticated/templates/site_keys.rb \
  lib/restful-authentication/generators/authenticated/templates/_model_partial.html.erb \
  lib/restful-authentication/generators/authenticated/templates/test/model_functional_test.rb \
  lib/restful-authentication/generators/authenticated/templates/test/mailer_test.rb \
  lib/restful-authentication/generators/authenticated/templates/test/unit_test.rb \
  lib/restful-authentication/generators/authenticated/templates/test/functional_test.rb \
  lib/restful-authentication/generators/authenticated/templates/activation.erb \
  lib/restful-authentication/generators/authenticated/templates/signup_notification.erb \
  lib/restful-authentication/generators/authenticated/templates/observer.rb \
  lib/restful-authentication/generators/authenticated/templates/login.html.erb \
  lib/restful-authentication/generators/authenticated/templates/authenticated_system.rb \
  lib/restful-authentication/generators/authenticated/templates/model.rb \
  lib/restful-authentication/generators/authenticated/templates/migration.rb \
  lib/restful-authentication/generators/authenticated/templates/model_helper_spec.rb \
  lib/restful-authentication/generators/authenticated/templates/model_helper.rb \
  lib/restful-authentication/generators/authenticated/templates/mailer.rb \
  lib/restful-authentication/generators/authenticated/templates/signup.html.erb \
  lib/restful-authentication/generators/authenticated/templates/spec/fixtures/users.yml \
  lib/restful-authentication/generators/authenticated/templates/spec/helpers/users_helper_spec.rb \
  lib/restful-authentication/generators/authenticated/templates/spec/controllers/access_control_spec.rb \
  lib/restful-authentication/generators/authenticated/templates/spec/controllers/users_controller_spec.rb \
  lib/restful-authentication/generators/authenticated/templates/spec/controllers/authenticated_system_spec.rb \
  lib/restful-authentication/generators/authenticated/templates/spec/controllers/sessions_controller_spec.rb \
  lib/restful-authentication/generators/authenticated/templates/spec/models/user_spec.rb \
  lib/restful-authentication/notes/RailsPlugins.txt \
  lib/restful-authentication/notes/SecurityFramework.graffle \
  lib/restful-authentication/notes/Trustification.txt \
  lib/restful-authentication/notes/Authorization.txt \
  lib/restful-authentication/notes/Authentication.txt \
  lib/restful-authentication/notes/Tradeoffs.txt \
  lib/restful-authentication/notes/AccessControl.txt \
  lib/restful-authentication/notes/SecurityPatterns.txt \
  lib/restful-authentication/notes/SecurityFramework.png \
  lib/restful-authentication/README.textile \
  lib/assets/javascripts/shadedborder/license.txt \
  lib/assets/javascripts/shadedborder/grad.png \
  lib/assets/javascripts/shadedborder/simple.html \
  lib/assets/javascripts/shadedborder/back.jpg \
  lib/assets/javascripts/shadedborder/grad2.png \
  lib/assets/javascripts/shadedborder/shadedborder.js \
  lib/assets/javascripts/shadedborder/grad3.png \
  lib/assets/javascripts/shadedborder/test.html \
  lib/assets/javascripts/jquery.tablesorter.min.js \
  license \
  config/initializers/active_record_backgroundable.rb \
  config/initializers/isn.rb \
  config/initializers/session_store.rb \
  config/initializers/cookies_serializer.rb \
  config/initializers/inflections.rb \
  config/initializers/mime_types.rb \
  config/initializers/site_keys.rb \
  config/initializers/rsna_rails.rb \
  config/initializers/wrap_parameters.rb \
  config/initializers/backtrace_silencers.rb \
  config/initializers/filter_parameter_logging.rb \
  config/initializers/assets.rb \
  config/initializers/hippa_filter.rb \
  config/warble.rb \
  config/database.yml \
  config/torquebox.rb \
  config/secrets.yml \
  config/locales/en.yml \
  config/environments/test.rb \
  config/environments/production.rb \
  config/environments/development.rb \
  config/application.rb \
  config/boot.rb \
  config/environment.rb \
  config/routes.rb \
)
  echo $NEW_PATH/temp*/token-app.knob*/$f
  echo diff -q $NEW_PATH/temp*/token-app.knob*/$f $UPGRADE_PATH/temp*/token-app.knob*/$f
  diff -q $NEW_PATH/temp*/token-app.knob*/$f $UPGRADE_PATH/temp*/token-app.knob*/$f

end


##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/slf4j-log4j12-1.6.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/postgresql-8.4-702.jdbc4.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/ST4-4.0.7.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/stringtemplate-3.2.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/commons-io-1.4.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/antlr-2.7.7.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/javax.mail-1.5.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/dcm4che-tool-dcmecho-2.0.28.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/commons-lang-2.4.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/log4j-1.2.16.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/dcm4che-core-2.0.26.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/slf4j-api-1.6.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/c3p0-0.9.1.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/core-3.2.0-t1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/activation-1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/dcm4che-net-2.0.26.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/jsoup-1.7.3.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/antlr-runtime-3.5.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/prep-content-3.2.0-t1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/commons-cli-1.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/vendor/jars/jasypt-1.9.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/doc/README_FOR_APP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/token-app-init: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/doc.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/config.ru: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/Gemfile.lock: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/.bundle/config: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/Gemfile: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/bin/rails: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/bin/bundle: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/bin/rake: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/make-knob.sh: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/422.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/500.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/robots.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/favicon.ico: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/404.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/application-c20d6e1de4d934886b82709237a85455.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/FontAwesome-3ce11cd4c6313ffa14867d24324f1853.otf: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/rsna-edge-b350bb4eec41f90810fa65065afbcdf5.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/rails-019aac0720a08ca1c0ff8d3d5bf5c1b1.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/title-gradient-2e55317d909881223532c1682c72e922.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/desc-c9e73986588691eeb7a6d17dd67caaa7.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/footer-bd8dec41dc511f0d6296dbfedeb7c9ea.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/footer-background-3b9ad7bcaf5ad44859f968c9662250d6.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/IMageShareLogo-c49636c7eb1790e90f79ff13a03e24d7.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/fontawesome-webfont-5abaa7af3d70fae4fcbf01281922d896.eot: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/print-button-background-4453ae47433d20d1a73d88559eb78763.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/application-c20d6e1de4d934886b82709237a85455.js.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/jquery.tablesorter.min-9dafbfdc9ee5a6fea2fc239af1b83c23.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/header-background-purple-55572b691720a448ec250e86d3755fd8.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/jquery.tablesorter.min-9dafbfdc9ee5a6fea2fc239af1b83c23.js.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/footer-hand-265905d295ae206f6b2cc49b8babf678.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/manifest-f9dddeedd666f7352c2bb53c08b4579b.json: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/print_layout-23af2ef22c6878c9c951efdbbcc40058.css.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/nibib-logo-a7e5743011a34a262418592516cf2438.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/reverse-tab-right-a63d3deb35a4f125ffa5c8888685a48f.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/application-88f5906713e59e92e40c66dff804d147.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/fontawesome-webfont-3d14bce836862c6c64030cce8f537505.svg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/print_layout-23af2ef22c6878c9c951efdbbcc40058.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/iframe-31c787ed619340c3083f5f97f0705f0a.js.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/rsna-image-share-f079c33e4bc943b891715353989e8195.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/asc-dd124c23aaeb129de3cafa8512a7b4fe.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/dialog-background-3839c45781db0d5f03c40d22dcbf13f6.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/header-background-a5d78f6213eaa9be95f963a6bb047d3c.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/twitter/bootstrap/glyphicons-halflings-regular-5e9cad9ab322352217f006e37dcb017d.ttf: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/twitter/bootstrap/glyphicons-halflings-regular-159355b1e61175ce435320d1f8aee975.woff: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/twitter/bootstrap/glyphicons-halflings-regular-4c565b09e15e6727f4386d896b20aa29.svg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/twitter/bootstrap/glyphicons-halflings-regular-8efb862474b22f3aa6a3004ef022de8e.eot: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/fontawesome-webfont-2eccafc70d4a63b728b28a1201ef6a4c.ttf: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/application-88f5906713e59e92e40c66dff804d147.css.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/iframe-31c787ed619340c3083f5f97f0705f0a.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/print-header-dafc103050bbfee14e98ac7d2f48f404.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/ajax-loader-59b1e7a343ece32b84739b1ef576a337.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/reverse-tab-left-11fd272ce6f4eb9987ed9450976f6da7.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/pages/email_configuration-494a47a840d2344248b672dc83bb183e.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/pages/test_email-925bb40983318ed8149b91c5886d6e03.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/pages/email_configuration-494a47a840d2344248b672dc83bb183e.js.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/pages/test_email-925bb40983318ed8149b91c5886d6e03.js.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/pages/cart-4d40ef060e88f0aaead2c08f339ac460.js.gz: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/pages/cart-4d40ef060e88f0aaead2c08f339ac460.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/fontawesome-webfont-1d18c6b3b5354db51c6525039aaef9f6.woff: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/token-app.knob-a49d9f2821c5b370/public/assets/button-background-21d70c8645243521cfdc6f0e74b97775.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/validatorStatus.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/sunLogo.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/ie7.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/styles.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/css_ns4win.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/css_ie6up.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/css_ns4sol.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/new_style.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/css_generic.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/css_ie5win.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/ie9.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/css/css_ns6up.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/validator.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/validatorFooter.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/license.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/openfm/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/openfm/fam_tivolids_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/openfm/fam_sds_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/openfm/fam_sds_index.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/openfm/fam_ad_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/sms/serverdefaults.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/sms/serverconfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/sms/AMConfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/sms/legacy.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/sms/defaultDelegationPolicies.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/sms/SunAMClientData.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/sms/serverupgrade.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/ad/ad_config_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/ad/ad_user_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/ad/ad_dashboard.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/ad/ad_deviceprint.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/common/am_index.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/common/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/common/am_config_user_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/common/am_basic.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/adam/adam_dashboard.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/adam/adam_user_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/adam/adam_deviceprint.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/tivoli/tivoli_deviceprint.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/tivoli/tivoli_user_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/tivoli/tivoli_dashboard.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/sfha/99-cts-add-schema-backport.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/sfha/cts-delete-schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/sfha/odsee-cts-indices.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/sfha/cts-indices.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/sfha/cts-add-schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/sfha/cts-container.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_user_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_dashboard.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_user_index.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_userinit.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/amsdk_plugin/amsdk_init_template.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/amsdk_plugin/amsdk_sunone_schema2.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_config_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_plugin.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_config_index.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/odsee/odsee_deviceprint.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_remove_config_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_remove_user_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_embinit.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_user_index.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_deviceprint.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_config_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_userinit.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_user_schema.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_dashboard.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/ldif/opendj/opendj_plugin.ldif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/opendj/opendj.zip: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/keystore/keystore.jks: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/template/keystore/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/NamingRequest.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/wsdl/IdentityServices.wsdl: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/wsdl/sts_schema.xsd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/wsdl/famsts.wsdl: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/wsdl/IdentityManagementServices.wsdl: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/remote-auth.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/sp.xml-template: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/README.unconfigured: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/web.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/index.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/conf/keystore.jks: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/conf/idp-extended.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/conf/idp.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/conf/.keypass: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/conf/.storepass: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/com/sun/identity/fedlet/ag/MetaDataParser.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/com/sun/identity/fedlet/ag/UserData.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/AG/com/sun/identity/fedlet/ag/AssertionGen.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/FederationConfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/logout.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/header.jspf: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/web.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/index.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/sp-extended.xml-template: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/fedletEncode.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/fedlet.cot-template: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/fedlet/idp-extended.xml-template: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/remoteInterface.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/NamingResponse.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/SessionResponse.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/debug.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/Auth_Module_Properties.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/web.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/jato.tld: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/smsflatfile.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/SessionNotification.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-common-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/click-nodeps-2.3.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/oauth-server-1.1.5.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-oauth2-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/commons-logging-1.1.3.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.jse-org.restlet.ext.json-2.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-federation-library-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-oauth2-restlet-extension-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_sv-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/commons-collections-3.2.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/opendj-ldap-sdk-2.6.4.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/json-patch-1.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-oauth2-main-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-application-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jsr311-api-1.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/commons-io-2.3.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_it-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/relaxngDatatype-20020414.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jaxrpc-api-1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/guice-3.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-dashboard-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.jse-org.restlet-2.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-datastore-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.jse-org.restlet.lib.org.json-2.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/forgerock-jaspi-container-1.2.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-msisdn-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/webservices-extra-2008-03-12.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/esapiport-2009-26-07.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jackson-mapper-asl-1.9.7.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.ext.jackson-2.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/json-resource-servlet-2.0.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/mail-1.4.5.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-membership-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-oauth2-openam-extension-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jaxp-api-1.4.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/publicsuffix-1.0.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-ad-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-ldap-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/json-web-token-2.0.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-idpdiscovery-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-xacml3-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/opendj-server-2.6.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-hotp-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-mib-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-idsvcs-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-oauth2-common-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jackson-core-asl-1.9.7.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/isorelax-20030108.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/ognl-2.6.9.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-authn-filter-config-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/webservices-rt-2009-29-07.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/xml-serializer-2.11.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-annotations-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/json-resource-2.0.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-common-auth-ui-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/commons-lang-2.6.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/oauth-client-1.1.5.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.ext.freemarker-2.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.forgerock.json.resource-1.2.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/webservices-api-2009-14-01.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_de-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/json-fluent-2.0.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/xml-resolver-2.11.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-adaptive-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/je-5.0.73.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/forgerock-jaspi-jwt-session-module-1.2.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/click-extras-2.3.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-authfilter-shared-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-jdbc-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-cli-definitions-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-authz-filter-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_zh_CN-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-nt-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/log4j-1.2.16.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-anonymous-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-liberty-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/xalan-2.7.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-server-auth-ui-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-windowsdesktopsso-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jato-2005-05-04.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/json-20090211.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/geoip-1.2.8.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-wsfederation-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jaxrpc-impl-1.1.3_01-041406.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-ldap-utils-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-rest-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-cli-impl-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/grizzly-framework-2.3.4.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/commons-codec-1.6.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_ko-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.osgi-org.restlet.ext.json-2.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_fr-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-core-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_es-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/i18n-core-1.4.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/freemarker-2.3.19.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/forgerock-auth-filter-common-1.2.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jss4-2007-08-11.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/forgerock-authz-filter-1.2.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-radius-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-entitlements-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_ja-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-saml2-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/webservices-extra-api-2003-09-04.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/activation-1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.osgi.core-4.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-oauth2-core-token-service-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/serializer-2.7.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.osgi-org.restlet.lib.org.json-2.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_zh-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/java-ipv6-0.14.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-httpbasic-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/commons-logging-api-1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jaxrpc-spi-1.1.3_01.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/OpenFM-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/slf4j-api-1.7.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jdmkrt-2007-01-10.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/commons-fileupload-1.2.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jstl-1.1.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/oauth-signature-1.1.5.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_zh_HK-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.ext.servlet-2.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jersey-client-1.1.5.2.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/xml-apis-2.11.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-securid-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/xsdlib-20060615.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/javax.security.auth.message-3.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/authapi-2005-08-12.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/aopalliance-1.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/forgerock-util-1.1.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/jersey-bundle-1.1.1-ea.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-cert-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-oath-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-coretoken-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/javax.inject-1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/velocity-1.7.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-forgerock-rest-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/xercesImpl-2.11.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-datastore-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/cc_zh_TW-2008-08-08.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-deviceprint-module-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/org.restlet.osgi-org.restlet-2.1.1.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-authn-filter-modules-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-dtd-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-shared-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-oauth-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-auth-persistentcookie-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/lib/openam-jaxrpc-schema-11.0.0.jar: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/jaxrpc-ri-runtime.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/server-config.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/cc.tld: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/policyAdmin.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/auth.tld: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/legal-notices/license.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amPasswordReset.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/agenttab.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmMultiProtocol.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/license.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amWebAgent.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/AgentService.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmSOAPBinding.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/is-html.xsl: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/configuratorPlugins.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/identityLocaleService.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmDisco.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/serviceDefaultValues.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/openProvisioning.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/tools/amadm.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amLogging.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/famWSSAuthService.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/webServiceClientUI.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/serverdefaults.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/subConfigNamesPlugin.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/banking.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/webServiceUI.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amAgent70.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/entitlement.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/debugconfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/options.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amDelegation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/AGBits.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/serverconfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/FederationConfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fedletJarExtract.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amAccessControl.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmServiceNames.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/idRepoS1DS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmIDFF.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/famSTS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmWSFederation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmLibertyPersonalProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amEntrySpecific.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/idRepoGenericV3.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmAuthFederation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmSAML2.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/jaxrpc-securitytokenmgr-config.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/defaultDelegationPoliciesForAmSDK.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amProperty.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/serviceNames.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/ums.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amPolicyConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amUser.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/webServiceSTSUI.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amG11NSettings.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/is-wml.xsl: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/log4j.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amClientData.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amAuthConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmSAML2SOAPBinding.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/click-page.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/jaxrpc-ri-runtime.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/naming.profile: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amSession.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/policyIndex.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/jaxrpc-libertymanager-config.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/configuratorTagSwap.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/defaultSummary.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fedletBits.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmAuthSAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/idRepoAmSDK.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmSAML.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/famServiceNames.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/dashboardService.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/ssoUpgrade.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/CoreTokenConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/famSAML2Config.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/validserverconfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/schemaNames.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amAdminConsole.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amConsoleConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/agenttaborder.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amPlatform.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amNaming.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/webServiceProviderUI.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/agentViewBean.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/famIDFFConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/AMConfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amRealmService.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amServiceTable.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmConfiguratorPlugins.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/famFederationCommon.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/hiddenserverconfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/legacy.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amMonitoring.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amPolicy.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/jaxrpc-assertmgr-config.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/jaxrpc-fsassertmgr-config.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/defaultDelegationPolicies.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/agentlocaleprop.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/SunAMClientData.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmAuthnSvc.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amFilteredRole.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmCOTConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmServiceDefaultValues.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/OAuthConfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/idRepoEmbeddedOpenDS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMPolicy.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyWSPersonalProfileDSAttributeMapList.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSubjectAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAuthToRealm_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSAuthDomainsEdit.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSCConfigAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSEntityDescriptorsAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/MAPClientManagerViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryProviderResourceIdMapperViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerEditCTSViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/G11NSupportedCharsetsViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerEditSessionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerEditAdvancedViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryDescriptionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCServiceProfileViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryBootstrapRefOffViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCConfigConsoleViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryBootstrapRefOffEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerEditSecurityViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryDescriptionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/MAPCreateDeviceTwoViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCConfigViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSOAPBindingRequestHandlerListDupViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/MAPDeviceProfileViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerEditGeneralViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerConfigXMLViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryBootstrapRefOffAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SiteEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCPolicyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCConfigSystemViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/G11NSupportedCharsetsEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCPolicyResourceComparatorAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SubConfigModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SMG11NModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/CharsetAliasEntry.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPCreateDeviceModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SubSchemaModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/STSExportPolicyModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCConsolePropertiesModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SOAPBindingRequestHandler.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/STSExportPolicyModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/PolicyResourceComparator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/LocaleSupportedCharsetsEntry.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SecurityTokenServiceModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPServiceModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCPolicyModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SMDiscoEntryData.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SMDescriptionData.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPDeviceProfileModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SMDiscoveryServiceModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/ServerSiteModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPModelBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCSAML2SOAPBindingModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCPlatformModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SMDiscoveryServiceData.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCConfigModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SubSchemaModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCUtils.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SMDiscoveryServiceModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SubConfigModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SAML2SOAPBindingRequestHandler.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPServiceModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/ServerSiteModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SecurityTokenServiceModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCPlatformModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCModelBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCSOAPBindingModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCPolicyModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPDeviceProfileModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/SCConfigModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/MAPCreateDeviceModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/model/DiscoveryDataCache.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMG11NViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryProviderResourceIdMapperEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryServiceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/G11NCharsetAliasAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSOAPBindingRequestHandlerListAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerCloneViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SiteAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCPlatform30ViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSOAPBindingRequestHandlerListViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCConfigAuthViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SubConfigEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SubConfigAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SecurityTokenServiceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/STSExportPolicyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/MAPDuplicationDeviceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSAML2SOAPBindingRequestHandlerListEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSAML2SOAPBindingViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSOAPBindingRequestHandlerListEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerConfigInheritViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerConfigXMLAddServerViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/G11NSupportedCharsetsAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SubSchemaTypeSelectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/G11NCharsetAliasEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSAML2SOAPBindingRequestHandlerListViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryProviderResourceIdMapperAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCPolicyResourceComparatorViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/G11NCharsetAliasViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SMDiscoveryDescriptionViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerEditSDKViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCConfigGlobalViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/MAPCreateDeviceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSAML2SOAPBindingRequestHandlerListAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSOAPBindingViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerSiteViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCPolicyResourceComparatorEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCSAML2SOAPBindingRequestHandlerListDupViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/ServerEditViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/service/SCPropertiesBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionIP_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMRules.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAuthConfiguration.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyMAPCreateDevice1.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMIdentityMembershipCondition_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblEntityServices.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerConfigXMLAddServer.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAgentAddJ2EE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSOAPBindingRequestHandlerList.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSMSessions.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityResOffering_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSessionHAProperties.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSEntityDescriptorsProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSSPAuthenticationContext.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySubConfigSelect.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblUserServices.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblG11NSupportedCharsets.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAgentInheritProperties.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMPMAuthenticatedUsersSubject.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMResponseProviderEdit_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMConditionAuthLevel.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMIdentityMembershipCondition.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleWithPrefixAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMReferralEdit.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyUserResOffering_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMPolicyReferral_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCPolicyResourceComparator.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMRulesActions.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityMembersFilteredIdentity.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserDiscoveryDescriptionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserPasswordResetOptionsTiledView.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMChangeUserPasswordViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserDiscoveryDescriptionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserResourceOfferingEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/model/UMUserResourceOfferingModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/model/UMUserPasswordResetOptionsModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/model/UMChangeUserPasswordModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/model/UMUserPasswordResetOptionsModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/model/UMChangeUserPasswordModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/model/UMUserPasswordResetOptionsData.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/model/UMUserResourceOfferingModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserDiscoveryDescriptionViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserResourceOfferingAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserPasswordResetOptionsViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserResourceOfferingViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/user/UMUserResourceOfferingViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityServicesSelect.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileHostedIdentityProvider_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPropertyNames.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileRemoteServiceProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleNoResourceAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyWSPersonalProfileDSAttributeMapList_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerEditSDK.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSContactPerson_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblRealmResourceOffering.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLTrustedPartnersSenderPostProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPolicySessionProperty.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSelectServiceType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLTrustedPartnersReceiverSOAPProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSPPServiceDSAttributeMapListViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSAuthNServicesHandlersAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSPersonalProfileServiceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSAuthNServicesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSPPServiceDSAttributeMapListEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/model/WSPersonalProfileServiceModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/model/WSAuthNServicesModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/model/WSAuthHandlerEntry.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSAuthNServicesHandlersEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSPPServiceSupportedContainerEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSAuthNServicesHandlersViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSPPServiceSupportedContainerViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSPPServiceDSAttributeMapListAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/webservices/WSPPServiceSupportedContainerAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRealmAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyOrgSelectServices.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSCConfigGlobal.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblServer.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerConfigXMLWithAMSDK.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLTargetURLsProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblUMUserPasswordResetOptions.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRMSelectRealm.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/twoBtnsPageTitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCPolicyResourceComparator_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/delegation/DelegationServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/delegation/model/DelegationModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/delegation/model/DelegationConfig.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/delegation/model/DelegationModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/delegation/model/DelegationConfigNode.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/delegation/DelegationViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/delegation/DelegationPropertiesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCSystemConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityMembership_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblServerConfigXMLUsers.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAuthDomain.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSubjectEdit.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblGroupMembers.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySubConfigSelectableName.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionSessionProperty_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMReferralEdit_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyG11NSupportedCharsets.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAgentGroupAddJ2EE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionSession.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAgentGroupAddWeb.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAgentGroups.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleWithPrefixAdd_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityMembers.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMReferrals.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleAddNoAction_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblRMServices.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSCConfigSystem.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSessionHAStatistics.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMPolicyNormal.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionTime_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAgentAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionSession_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCAuthConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRealmAuth_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerEditSession.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionIP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionNoneAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSEntityDescriptors.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/threeBtnsPageTitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAuthConfig_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionAuthScheme_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblRoleMembers.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntitiesAddAgentType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyUserChangePassword.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSelectResponseAttributeType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblMAPClientDetection.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyUMUserRoles_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCSOAPBindingRequestHandlerList_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRealmResOffering.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAuthToRealm.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAgentGroupAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSAuthDomainsEdit_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMPolicyNormal_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSCConfigConsole.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/AuthConfigViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/NewAuthInstanceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/AuthPropertiesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/NewAuthConfigViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/CoreAttributesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/model/CoreAttributesModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/model/AuthConfigurationModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/model/AuthPropertiesModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/model/AuthConfigurationModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/model/CoreAttributesModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/model/AuthPropertiesModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/model/AuthProfileModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/AuthServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/ReorderAuthChainsViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/AuthActionTiledView.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/authentication/EditAuthTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAgentAddWeb.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/version/VersionServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/version/VersionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/version/MastheadViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/version/ButtonFrameViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/simplePageTitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMSubjects.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLTrustedPartnersReceiverPostProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyAuthConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/components/view/html/SerializedField.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSEntityDescriptorsAffiliate_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCSOAPBindingRequestHandlerList.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionAuthToService.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/adminConsoleProperties_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySessionPropertyEntry.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblG11NCharsetAlias.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/pageTitleRealmSelect.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ResponseProviderOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyNormalViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SessionPropertyConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultSessionConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMLDAPUserSubjectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SubjectOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IPConditionHelper$IPVersion.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SubjectNoneEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SelectResponseProviderTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SubjectAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyConditionPluginViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ProfileViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IdentityMembershipConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ReferralAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMAuthenticatedUsersSubjectEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDSAMERoleSubjectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SelectReferralTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyReferralViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SelectConditionTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SubjectEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToServiceAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultAuthSchemeConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicySelectTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SessionPropertyConditionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/RuleNoResourceAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultIPConditionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IdentitySubjectAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicySubjectPluginViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SessionPropertyEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ActionTiledView.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ConditionProxyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultAuthLevelConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SubjectNoneAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMLDAPOrgSubjectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/PolicyModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/SelectRealmModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/IdentitySubjectModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/CachedPolicy.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/IdentitySubjectModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/PolicyCache.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/PolicyModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/TimePolicyModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/model/SelectRealmModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ConditionOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToRealmAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ReferralEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthLevelHelper.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IdentityMembershipHelper.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToRealmViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultTimeConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultSessionConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SessionPropertyOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToServiceHelper.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultAuthLevelConditionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultIPConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IPConditionHelper.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SelectSubjectTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ResponseProviderAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IdentitySubjectEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultAuthLevelConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SelectRealmViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ActionSchemaGUI.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ResponseProviderEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToRealmHelper.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IDRepoResponseProviderEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/RuleOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IDRepoResponseProviderAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultAuthSchemeConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToRealmEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SessionPropertyAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyReferralAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMAuthenticatedUsersSubjectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToServiceEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyNormalAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultTimeConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ReferralProxyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMLDAPGroupSubjectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMAuthenticatedUsersSubjectAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/RuleEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IdentityMembershipConditionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultSessionConditionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/RuleWithPrefixAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IdentityMembershipConditionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SelectServiceTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/RuleNoResourceEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/AuthToServiceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SessionPropertyConditionHelper.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultIPConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SubjectProxyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/RuleWithPrefixEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ResponseProviderProxyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IdentitySubjectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/IDRepoResponseProviderViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ResponseProviderPluginViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyNormalEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultTimeConditionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/TimeConditionHelper.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/ReferralOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMDefaultAuthSchemeConditionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/RuleAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SelectTypeViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMLDAPRoleSubjectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PolicyReferralEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/SessionPropertyConditionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policy/PMServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSAuthDomains.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMIdentitySubject_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMReferralAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLTargetURLsProfile_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSEntityDescriptorsAffiliate.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMIdentitySubject.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCGlobalConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/adminConsoleProperties.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblRMIDRepo.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyUMUserGroups_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLProfile_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRMServicesSelect.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionAuthLevel.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSEntityDescriptorsProfile_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileHostedServiceProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblRMRealm.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerEditGeneral.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLSiteIDProfile_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileHostedServiceProvider_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/PageTrail.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMBaseServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/OrderedListComparator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMConsoleConfig.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMViewBeanBase$SessionStore$1.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMShowMenuEntry.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMDelimitAttrTokenizer.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/VersionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMFormatUtils.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMResourceBundleCache$1.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMAdminLog.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMSystemConfig.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/StringLengthComparator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/ConsoleException.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/SubConfigMeta.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMResBundleCacher.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMResourceBundleCache.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMPropertySheetModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/SMSubConfigComparator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMAdminLog$1.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMAdminUtils.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMServiceProfileModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMModelBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AttributeI18NKeyComparator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMDisplayType.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMCommonNameGenerator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMAttrSchemaComparator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/SMSubConfig.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMServiceProfileModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMI18NUtils.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AccessControlModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMAuthUtils.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AccessControlModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMConsoleException.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/AMAdminConstants.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/model/QueryResults.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMLogoutCommand.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMViewConfig.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMTableTiledView.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMViewInterface.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/PageTrail$Marker.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/CloseWindowViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMPropertySheet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMTabEntry.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMInvalidURLViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/ConsoleServletBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMLoginViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMPrimaryMastHeadViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/BlankTabViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMUncaughtExceptionViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMAdminFrameViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMServiceProfileViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/PageTrailManager.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMPostViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMPipeDelimitAttrTokenizer.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/MessageViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMViewBeanBase$SessionStore.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AMServiceProfile.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/base/AuthenticatedViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAgentGroupsCombined.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMConditions.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionAuthScheme.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/CreateHostedSPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/CreateRemoteIDPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/CreateFedletWarningViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/CreateFedletViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureGoogleAppsWarningViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/CreateHostedIDPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureGoogleAppsViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureSalesForceAppsFinishWarningViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureGoogleAppsCompleteViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/model/TaskModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/model/TaskModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureOAuth2ViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ValidateSAML2SetupViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/CreateRemoteSPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/CompleteCreateHostedIDPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureSalesForceAppsCompleteViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/TaskServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/HomeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureSalesForceAppsWarningViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/task/ConfigureSalesForceAppsViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSCreateRemoteIdentityProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySCConsoleConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntitiesAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityResourceOfferingAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityResourceOfferingViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/ServicesAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/ServicesSelectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/IDMServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EndUserViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/model/EntityResourceOfferingModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/model/EntitiesModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/model/EntitiesModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/model/EntityResourceOfferingModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityDiscoveryDescriptionViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/ServicesNoAttributeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityMembersFilteredIdentityViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntitiesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityResourceOfferingEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/ServiceViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/ServicesTiledView.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityDiscoveryDescriptionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/HomeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityResourceOfferingViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/ServicesEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityMembershipViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityMembersViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityDiscoveryDescriptionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/idm/EntityServicesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSelectSubjectType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleWithPrefixAddNoAction_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSelectConditionType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionSessionProperty.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntitiesEdit.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRMIDRepoEdit.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySubConfigName.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSContactPerson.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerEditAdvanced.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleAdd_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAuthInstance.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSubjectNoneAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMPolicySelectType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleNoResourceAddNoAction_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSelectReferralType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileHostedIdentityProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionAuthToService_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityMembership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerEditSecurity.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSCreateHostedIdentityProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2IDPServicesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLSiteID$SiteID.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLTrustedPartnersEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/CreateSAML2MetaDataViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2IDPAssertionProcessingViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2PEPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/IDFFIDPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLSiteIDEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2IDPAssertionContentViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2SPAssertionContentViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/ImportEntityViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLPropertyXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2AuthnAuthorityViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/CreateCOTViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/IDFFAuthContexts.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2Base.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/IDFFViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/EntityPropertiesBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2AuthContexts$SAMLv2AuthContext.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/CreateMetaDataModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/FSSAMLServiceModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/EntityModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/IDFFModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/SAMLv2ModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/ImportEntityModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/WSFedPropertiesModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/FSSAMLServiceModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/CreateMetaDataModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/IDFFModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/ImportEntityModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/FSAuthDomainsModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/FSAuthDomainsModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/SAMLv2Model.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/EntityModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/model/WSFedPropertiesModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLTargetURLsViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2SPAssertionProcessingViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLPropertyTemplate.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSAuthDomainsEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/IDFFAuthContexts$IDFFAuthContext.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLServiceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLProperty.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLTrustedPartnersViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2AttrQueryViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2AffiliateViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/IDFFAffiliateViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLSelectTrustedPartnerTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/WSFedGeneralViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSAuthDomainsOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2PDPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2IDPAdvancedViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLTrustedPartnersAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLTargetURLsAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/WSFedGeneralBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/WSFedSPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2GeneralViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FileUploaderViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/IDFFSPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2AuthContexts.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2AttrAuthorityViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2SPAdvancedViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLTargetURLsEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLSiteIDAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLSetTrustedPartnerTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/IDFFGeneralViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLSiteIDViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/WSFedIDPViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/SAMLv2SPServicesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FederationViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/federation/FSSAMLSiteID.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblDelegation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMResponseProviderAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyG11NSupportedCharsets_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/AttributeSchemaComparator.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/PrivilegeXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/SubConfigPropertyXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/MultiServicesPropertyXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/PropertyTemplate.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/PropertyXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/PropertyXMLBuilderBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/PolicyPropertyXMLBuilderBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/PolicyPropertyXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/ResponseProviderXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/property/AgentPropertyXMLBuilder.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyNewAuthConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSite.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblRoleServices.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPMResponseProviders.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionTime.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyG11NCharsetAlias.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySiteAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAuthConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyUMUserGroups.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSCreateRemoteServiceProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLTrustedPartnersSenderArtifactProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSCCore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleNoResourceAddNoAction.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRMIDRepoSelectType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityResOffering.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAgentsJ2EEWebAgent.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyWSPersonalProfileSupportedContainers_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAgentsCombined.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSIDPAuthenticationContext.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblPolicyResourceComparator.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertySiteEdit.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSAuthDomainsAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblServerConfigXMLServers.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblServerConfigAdvanced.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSubjectNoneAdd_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleAddNoAction.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/SMServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/SessionHAStatisticsViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/SessionHAStatisticsBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/model/SMProfileModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/model/SMSessionCache.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/model/SMSessionData.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/model/SMProfileModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/SMProfileViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/session/SMViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMResponseAttributeAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyWSAuthNServicesHandlers_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSSAMLSiteID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblAgents.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerEditCTS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleWithPrefixAddNoAction.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyWSPersonalProfileSupportedContainers.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileRemoteIdentityProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLSelectTrustedPartnerType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLTrustedPartnersReceiverArtifactProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblIDMEntities.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyMAPDuplicationDevice.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSSAMLTargetURLs.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerClone.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileRemoteServiceProvider_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSContactPerson.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblSubConfig.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/controller/TabControllerBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/controller/DMTabController.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/controller/TabController.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/controller/FedTabController.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSProfileRemoteIdentityProvider_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyServerConfigXML.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntityMembers_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleNoResourceAdd_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMRuleAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentProfileViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentGroupMembersViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/WebServiceSTSEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/WebServiceClientEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentConfigurationServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/WebServiceUIElement.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentTabManager.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentGroupAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/WebServiceEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentExportPolicyViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentsViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/model/AgentDumpModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/model/WSSAttributeNames.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/model/AgentsModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/model/AgentsModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/model/AgentDumpModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/model/AgentExportPolicyModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/model/AgentExportPolicyModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentConfigInheritViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/WebServiceUserCredAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/GenericAgentProfileViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/WebServiceUserCredEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/WebServiceProviderEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/HomeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/agentconfig/AgentDumpViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policyProperties.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyWSAuthNServicesHandlers.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/policyProperties_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMResponseProviderEdit.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLSetTrustedPartnerType.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRealmResOffering_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyUserResOffering.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMSubjectEdit_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyBlank.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmResourceOfferingViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmResourceOfferingAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/IDRepoEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/ServicesAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/ServicesSelectViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/IDRepoAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RMServlet.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmResourceOfferingViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/IDRepoViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RMRealmViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/ServicesProfileModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/ServicesProfileModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/IDRepoModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/ServicesModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/RMRealmModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/RMRealmModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/RealmResourceOfferingModelImpl.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/IDRepoModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/RealmResourceOfferingModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/model/ServicesModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/ServicesNoAttributeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RMRealmViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmPropertiesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmDiscoveryDescriptionViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmDiscoveryDescriptionEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RMRealmAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/ServicesTiledView.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/ServicesViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmPropertiesBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/HomePageViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/IDRepoOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmDiscoveryDescriptionAddViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/IDRepoSelectTypeViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/ServicesEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/HasEntitiesTabs.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RealmResourceOfferingEditViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/RMRealmOpViewBeanBase.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/realm/ServicesCannotAssignServiceViewBean.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyRMIDRepoAdd.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblFSSAMLTrustedPartners.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/fourBtnsPageTitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/model/CCMapListModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/model/CCUnOrderedListModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/model/CCOrderedListModel.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/taglib/CCUnOrderedListTag.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/taglib/CCMapListTag.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/taglib/CCGlobalMapListTag.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/taglib/CCOrderedListTag.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/view/CCUnOrderedList.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/view/CCGlobalMapList.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/view/CCMapList.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/ui/view/CCOrderedList.class: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSCreateHostedServiceProvider.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/oneBtnPageTitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyNewAuthInstance.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyUMUserRoles.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMConditionAuthLevel_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/tblProviderResourceIdMapper.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyEntitiesCOSPriority.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyG11NCharsetAlias_Readonly.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyPMPolicyReferral.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/com/sun/identity/console/propertyFSSAMLSiteIDProfile.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/rsa_api.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/idRepoService.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/CoreTokenStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/fmConfiguratorTagSwap.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/bootstrap.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/serverupgrade.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/amClientDetection.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/classes/bootstrapConfig.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/click.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/sun-jaxws.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/com_sun_web_ui/cc.tld: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/policy.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/sms.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/logDTD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/WEB-INF/SessionRequest.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/META-INF/maven/org.forgerock.openam/openam-server-only/pom.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/META-INF/maven/org.forgerock.openam/openam-server-only/pom.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/META-INF/maven/org.forgerock.openam/openam-console/pom.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/META-INF/maven/org.forgerock.openam/openam-console/pom.properties: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/META-INF/MANIFEST.MF: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spSingleLogoutRedirect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spMNIPOST.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/saeerror.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spAssertionConsumer.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spMNIRequestInit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/fedletXACMLResp.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/fedletXACMLQuery.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spMNIRedirect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/fedletSampleApp.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpSingleLogoutRedirect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpSingleLogoutInit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/exportmetadata.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/fedletAttrQuery.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/default.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spSSOInit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpMNIRedirect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/SA_IDP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpSSOFederate.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpMNIPOST.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spSingleLogoutPOST.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpSSOInit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/spSingleLogoutInit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/saml2error.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpSingleLogoutPOST.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/fedletSSOInit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/idpMNIRequestInit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/SA_SP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/jsp/fedletAttrResp.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/saml2/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/index.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/validatorAuthFail.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth/registerconsumer.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth/userconsole.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth/index.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth/deleteconsumer.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth/deletetoken.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/contentflow.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/jquery-1.8.1-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/datatables-1.9.3-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/i18next-1.5.8-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/jquery.ba-dotimeout-1.0-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/moment-1.7.2-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/xdate-0.7-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/mustache-0.7.0.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/less-1.3.3-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/spin-1.2.5-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/handlebars-1.0.rc.1.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/js2form-1.0.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/jquery-ui-1.8.23.custom-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/underscore-1.4.4-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/requirejs-2.0.6-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/backbone-0.9.2-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/libs/form2js-1.0.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/themeConfig.json: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/css/user/helpers.less: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/css/user/forms.less: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/css/user/config.less: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/css/user/contentflow.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/css/user/layout.less: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/css/user/demo_table.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/css/styles.less: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/back_disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/sort_asc.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/slider_grey.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/1x1_0.5_black.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/back_enabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/back_enabled_hover.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/sort_desc_disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/forward_disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/sort_asc_disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/scrollbar_grey.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/loader.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/sort_desc.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/forward_enabled_hover.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/favicon.ico: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/blank.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/sort_both.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/forward_enabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/img/Sorting icons.psd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/libs/qunit-1.12.0.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/libs/sinon-1.7.3.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/css/qunit-1.12.0.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/Gruntfile.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/tests/openam/loginUrlParams.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/tests/openam/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/tests/openam/login.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/tests/openam/theme.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/theming.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/invalidLoginCredentials.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/realm.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/goto.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/authlevel.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/gotoOnFail.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/module.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/arg.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/user.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/common.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/locale.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/IDToken.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/service.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/openam/loginUrlParams/forceAuth.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/mocks/lessRequests.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/qunit/package.json: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/process/CommonConfig.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/process/UserConfig.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/validators/CommonValidators.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/validators/UserValidators.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/routes/AMRoutesConfig.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/routes/CommonRoutesConfig.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/routes/UserRoutesConfig.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/errorhandlers/CommonErrorHandlers.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/AppConfiguration.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/config/messages/UserMessages.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/box-bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/main.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/overlay.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/footer_bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/cross.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/menu-next.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/icon-key.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/login-icon.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/icon_info.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/passphrase/user.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/passphrase/mail.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/passphrase/twitter.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/passphrase/report.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dialog-close.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/span_error.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/default_profile_image.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/icon-user.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/input-bg-gray.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/menu_bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/logo.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/login-register-bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/navi-next.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/datatable/sort_asc.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/datatable/sort_desc.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/datatable/sort_both.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/menu-bg-orange.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/notifications/warning.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/notifications/error.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/notifications/info.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/span_ok.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/salesforce.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/gmail.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/liveplan.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/concur.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/vault.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/docs.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/calendar.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/drive.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/googleplus.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/webex.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/dashboard/fusion_tables.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/images/input-bg-orange.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/locales/en-US/translation.json: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/ChangeSecurityDataDialogTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/UserProfileTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/EnterOldPasswordDialog.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/LoginBaseTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/LoginDialog.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/DefaultBaseTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/ForgottenPasswordTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/TermsOfUseTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/ChangeSiteIdentificationDialogTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/LoginTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/404.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/user/UserRegistrationTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/common/EmptyTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/common/FooterTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/common/DialogTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/common/ConfirmationDialogTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/common/NavigationTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/ChangeSecurityDataDialogTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/UserProfileTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/RESTLoginUnavailableTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/RESTLoginTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/DashboardTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/authn/DataStore1.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/oauth2/TokensTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/templates/openam/RESTConfirmLoginTemplate.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/login/LoggedUserBarView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/login/InternalLoginHelper.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/SiteConfigurator.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/TermsOfUseDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/delegates/SiteConfigurationDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/delegates/SecurityQuestionDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/delegates/SiteIdentificationDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/delegates/CountryStateDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/delegates/UserDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/delegates/InternalUserDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/NotFoundView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/profile/UserProfileView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/profile/ChangeSecurityDataDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/profile/EnterOldPasswordDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/profile/ChangeSiteIdentificationDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/LoginView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/ForgottenPasswordDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/LoginDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/user/UserRegistrationView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/ViewManager.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/ErrorsHandler.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/AbstractConfigurationAware.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/AbstractView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/AbstractDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/EventManager.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/SpinnerManager.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/ProcessConfiguration.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/Router.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/i18nManager.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/Configuration.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/UniversalDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/UniversalCachedDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/PolicyDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/ValidatorsManager.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/ServiceInvoker.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/main/SessionManager.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/GridTableView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/Navigation.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/Messages.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/Footer.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/ConfirmationDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/Dialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/Breadcrumbs.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/popup/PopupCtrl.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/popup/PopupView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/ElementTable.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/components/LineTableView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/DateUtil.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/ObjectUtil.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/typeextentions/String.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/ValidatorsUtils.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/Constants.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/FormGenerationUtils.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/UIUtils.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/commons/ui/common/util/CookieHelper.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/login/RESTConfirmLoginView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/login/RESTLoginHelper.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/login/AuthNDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/login/RESTLoginDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/login/RESTLoginView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/delegates/TokenDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/delegates/UserDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/profile/UserProfileView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/profile/ChangeSecurityDataDialog.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/user/oauth2/TokensView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/common/util/Constants.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/common/util/ThemeManager.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/dashboard/DashboardDelegate.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/dashboard/main.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/org/forgerock/openam/ui/dashboard/DashboardView.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/XUI/favicon.ico: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/options.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/step3.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/step2.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/step4.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/step5.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/step6.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/step7.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/wizard.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/wizard/step1.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/defaultSummary.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/OATH.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ja/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_de/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_fr/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_TW/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_zh_CN/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/OAuthActivate.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Exception.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/PersistentCookie.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/invalidAuthlevel.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/devicePrintLogin.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/org_inactive.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/module_template.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/session_timeout.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/userDenied.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/OAuthPwd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/login_denied.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/authException.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/new_org.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Message.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/profileError.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/account_expired.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/readme.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/disclaimerDeclined.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/membership.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/OATH.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/invalid_domain.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Login.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/login_failed_template.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/auth_error_template.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/module_denied.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/DevicePrintModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/user_inactive.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Logout.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/Redirect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/invalidPCookieUserid.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/disclaimer.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/register.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/noConfig.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default/maxSessions.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_ko/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_es/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/SAE.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/PersistentCookie.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/Anonymous.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/LDAP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/WSSAuthModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/Adaptive.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/Cert.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/RADIUS.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/SecurID.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/WindowsDesktopSSO.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/OATH.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/Application.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/HTTPBasic.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/AD.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/Membership.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/MSISDN.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/DevicePrintModule.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/NT.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/Federation.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/DataStore.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/JDBC.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/OAuth.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/auth/default_en/HOTP.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/ListOfCOTs.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/Federate.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/LogoutDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/CommonLogin.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/NameRegistration.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/Error.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/Termination.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/TerminationDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/cdclogin.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/Header.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/Footer.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/NameRegistrationDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default/FederationDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/ListOfCOTs.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/Federate.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/LogoutDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/CommonLogin.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/NameRegistration.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/Error.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/Termination.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/TerminationDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/cdclogin.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/Header.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/Footer.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/NameRegistrationDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/federation/default_en/FederationDone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/config/upgrade/upgrade.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/styles.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/adminstyle.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/css_ns4win.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/css_ie6up.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/css_ns4sol.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/css_ie5win.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/css/css_ns6up.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/error_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/warning_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/brandingLogo.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/PrimaryProductName.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/gradlogtop.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/login-backimage.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/gradlogsides.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/error_32_sunplex.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/required.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/Identity_LogIn.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/spacer.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/gradlogbot.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/button/primary-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/button/primary-enabled-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/button/primary-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/button/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/button/primary-mini-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/button/primary-roll-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/button/primary-mini-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/info_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/logo_sun.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/images/info_32_sunplex.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/html/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/html/ui/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/js/password.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/js/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/js/browserVersion.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/ui/PWResetQuestion.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/ui/PWResetInvalidURL.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/ui/PWResetUserValidation.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/ui/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/ui/PWResetBase.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/ui/PWResetSuccess.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/password/ui/PWResetUncaughtException.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/box-bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/error_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/warning_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/forge-rock.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/PrimaryProductName.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/login-backimage-long.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/gradlogtop.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/login-backimage.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/gradlogsides.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/required.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/icons.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/gradlogbot.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/secondary-mini-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/primary-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/primary-enabled-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/primary-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/secondary-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/secondary-mini-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/secondary-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/primary-mini-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/secondary-enabled-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/primary-roll-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/secondary-roll-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/button/primary-mini-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/info_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/body-bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/loading.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/images/open-am.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/side-bg.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/proxyidpfinder.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/showServerConfig.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/encode.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/validateWait.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/validatorMain.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth2/checkSession.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth2/registerClient.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/fed_images/brandingLogo.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/fed_images/Identity_LogIn.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/fed_images/spacer.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/fed_images/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/fed_images/logo_sun.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/ssoadm.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/validatorRpt.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth2c/OAuthProxy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth2c/OAuthLogout.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/oauth2c/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/getServerInfo.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/filechooser/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/table/pagetitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/table/AdvancedSort.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/table/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/table/Table.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/wizard/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/wizard/WizardWindow.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/version/Masthead.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/version/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/version/ButtonFrame.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/version/Version.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/datetime/pagetitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/datetime/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/datetime/DateTimeWindow.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/Navigator.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/ButtonNav.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/Masthead.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/Help2Ie.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/Help2Nav4.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/help2pagetitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help2/Help2Nav6up.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help/Masthead.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help/helpPagetitle.xml: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/jsp/help/Help.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/css/css_ns4win.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/css/css_ie6up.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/css/css_ns4sol.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/css/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/css/css_ie5win.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/css/css_ns6up.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/dtd/breadcrumb.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/dtd/pagetitle.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/dtd/propertysheet.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/dtd/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/dtd/descriptor.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/dtd/table.dtd: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/error_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/warning_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/masthead_down_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/down_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/minor_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/masthead_critical_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/major_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/critical_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/minor_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/major_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/critical_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/masthead_major_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/down_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alarms/masthead_minor_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/PrimaryProductName.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/favicon/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/favicon/favicon.ico: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/login-backimage-long.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/gradlogtop.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/href/link_arrow.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/href/to_top.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/href/to_anchor.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/href/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/login-backimage.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/advanced_sort_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_down_nonsel_check.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/deselectall_radio.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/check_all_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/table_preferences.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_prev.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/uncheck_all_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_up_nonsel.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/advanced_sort.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_down_sel_check.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_down_sel.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_next_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/deselectall_radio_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/check_all.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_first.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/table-act-sep.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/empty_table_cell.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/advanced_filter.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/gradtblhdrsrt.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/scrollpage_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_prev_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_first_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/table_preferences_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/uncheck_all.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/actions_separator.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_next.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/advanced_filter_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_last_dis.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/gradtblhdr.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_up_sel_check.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/paginate.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/gradtblttl.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/pagination_last.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_down_nonsel.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_up_sel.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/scrollpage.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/table/sort_up_nonsel_check.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/gradlogsides.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/required.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/pagetitle/search-sep.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/pagetitle/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/wizard/subtitle_background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/wizard/wiz-arrow.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/wizard/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/wizard/wizbdy_minitab_background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/version/javalogo-color.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/version/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/version/version_logo.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/version/version_brand.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_linelastnode.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handlerighttop.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_server_critical.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_server.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_folder_minor.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_document.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_linemiddlenode.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_folder_major.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_folder_down.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handlerightlast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_folder.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handlerightmiddle.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handlerighttopns.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handledownmiddle.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_server_minor.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_storage_major.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_server_major.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handledowntopns.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_blank.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_server_down.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_linefirstnode.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_storage.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handledowntop.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_folder_critical.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_handledownlast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tree/tree_linevertical.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/datetime/date_time_gradient.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/datetime/forward.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/datetime/calendar_24.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/datetime/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/datetime/backward.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/minitab_deselect.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level2_background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level1_deselect.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/RTsecondary_jlf.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tab3dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level1_selected.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/minitab_selected.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tab-jlf-selected.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tabdivider.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tab-jlf-unselected-loc.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level2_deselect.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/minitab_background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tab-jlf-unselected.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level1_background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/LFsecondary_jlf.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tab2dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level3_selected.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level2_selected.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level3_background.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tab1dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/tab-jlf-selected-loc.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/tabs/level1_selected-1lev.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/gradlogbot.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/secondary-mini-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/primary-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/primary-enabled-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/primary-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/secondary-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/secondary-mini-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/secondary-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/primary-mini-enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/secondary-enabled-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/primary-roll-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/secondary-roll-mast.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/button/primary-mini-roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/info_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/topology/switch_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/topology/switch_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/topology/server_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/topology/storage_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/topology/storage_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/topology/server_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/topology/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/help_back_disabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/help_print.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/help_print_disabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/help_btnnav_gradient.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/help_forward_disabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/help_forward.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/help/help_back.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/corplogo_main.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/Asterisk7x20.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/javalogo.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/search.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/corplogo_popup.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/required.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/white-black.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/dividerbar.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/other/graydot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/error_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/warning_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/info_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/warning_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/help_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/warning_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/error_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/info_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/help_medium.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/error_small.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/info_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/alerts/help_large.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead-sunname.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/branded_image.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/status_icon.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/statusarea-separator.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead_link_enabled.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead_bar_right.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead_bar_left.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/console_logo.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead_bar_center.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead_link_roll.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead-background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead-sun-background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/sec-masthead-background.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/images/masthead/masthead-separator.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_TW/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/it/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/fr/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ja/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_CN/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh_HK/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/de/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/es/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/ko/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/zh/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/sv/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/pt_BR/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/blank.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/tips_on_searching.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/JavaHelpSearch/DOCS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/JavaHelpSearch/OFFSETS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/JavaHelpSearch/DOCS.TAB: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/JavaHelpSearch/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/JavaHelpSearch/TMAP: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/JavaHelpSearch/POSITIONS: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/html/en/help/JavaHelpSearch/SCHEMA: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/dynamic.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/jsMenuLicense.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/focusCookie.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/scrollCookie.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/topology.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/tree.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/popup.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/cookie.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/browserVersion.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/stylesheet.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/wizard.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/addremove.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/editable.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/com_sun_web_ui/js/orderablelist.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/fed_css/styles.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/fed_css/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/style2.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/yui-overrides.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/iestyle.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/Specific/identityService.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/Specific/adminRealm.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/Specific/wizard.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/Specific/protectResource.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/Specific/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/Specific/optionUpgrade.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/Specific/confUserStore.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/css/style.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/json/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/json/json.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/animation/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/animation/animation-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/animation/animation-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/animation/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/animation/animation.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dragdrop/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dragdrop/dragdrop-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dragdrop/dragdrop-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dragdrop/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dragdrop/dragdrop.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/history/history-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/history/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/history/history-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/history/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/history/history-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/history/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/history/assets/blank.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo/yahoo-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo/yahoo-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo/yahoo.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/connection/connection-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/connection/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/connection/connection.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/connection/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/connection/connection-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/logger.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/logger-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/logger-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/assets/skins/sam/logger.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/assets/skins/sam/logger-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/assets/logger-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/assets/logger.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/logger/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuiloader/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuiloader/yuiloader-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuiloader/yuiloader-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuiloader/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuiloader/yuiloader-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dom/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dom/dom.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dom/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dom/dom-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/dom/dom-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/imageloader/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/imageloader/imageloader-experimental.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/imageloader/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/imageloader/imageloader-experimental-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/imageloader/imageloader-experimental-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/event/event-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/event/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/event/event.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/event/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/event/event-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/menu.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/menu-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/menu-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/skins/sam/menu-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/skins/sam/menu.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/menu.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/map.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/menu/assets/menu-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/reset/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/reset/reset-min.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/reset/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/reset/reset.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datasource/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datasource/datasource-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datasource/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datasource/datasource-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datasource/datasource-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/tabview-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/tabview-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/tabview.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/skins/sam/tabview.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/skins/sam/tabview-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/tabview.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/skin-sam.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/tabview-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/loading.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/tabview/assets/border_tabs.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo-dom-event/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo-dom-event/yahoo-dom-event.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yahoo-dom-event/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/grids/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/grids/grids.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/grids/grids-min.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/grids/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/utilities/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/utilities/utilities.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/utilities/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/calendar-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/calendar-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/calendar.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/skins/sam/calendar-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/skins/sam/calendar.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/calendar-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/calendar.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/callt.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/calx.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/calrt.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/calendar/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/base/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/base/base.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/base/base-min.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/base/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/slider/slider.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/slider/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/slider/slider-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/slider/slider-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/slider/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/colorpicker-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/colorpicker-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/colorpicker-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/hue_thumb.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/skins/sam/colorpicker.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/skins/sam/picker_mask.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/skins/sam/hue_bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/skins/sam/colorpicker-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/picker_thumb.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/colorpicker_core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/colorpicker/assets/picker_mask.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/element/element-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/element/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/element/element-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/element/element-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/element/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/treeview.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/treeview-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/skins/sam/treeview-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/skins/sam/treeview.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/skins/sam/treeview-loading.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/skins/sam/treeview-sprite.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/treeview-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/treeview.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/treeview-loading.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/assets/sprite-orig.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/treeview/treeview-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/fonts/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/fonts/fonts-min.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/fonts/fonts.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/fonts/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/button-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/button-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/button-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/split-button-arrow-focus.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/button-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/split-button-arrow.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/split-button-arrow-active.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/button.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/split-button-arrow-disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/split-button-arrow-hover.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/menu-button-arrow-disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/skins/sam/menu-button-arrow.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/menuarrow.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/splitarrow_active.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/button.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/splitarrow.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/button-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/button/assets/background.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/container.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/container-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/container_core-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/container_core.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/container_core-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/container-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/skins/sam/container-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/skins/sam/container.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/alrt16_1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/tip16_1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/close12_1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/hlp16_1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/blck16_1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/container-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/warn16_1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/container.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/container/assets/info16_1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/datatable-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/datatable-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/skins/sam/datatable-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/skins/sam/datatable.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/skins/sam/dt-arrow-up.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/skins/sam/dt-arrow-dn.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/datatable.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/assets/datatable-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/datatable/datatable-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/yuitest-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/yuitest-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/yuitest-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/assets/skins/sam/yuitest-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/assets/skins/sam/yuitest.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/assets/yuitest-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/assets/testlogger.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/yuitest/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/reset-fonts-grids/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/reset-fonts-grids/reset-fonts-grids.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/reset-fonts-grids/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/autocomplete.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/autocomplete-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/autocomplete-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/assets/skins/sam/autocomplete.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/assets/skins/sam/autocomplete-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/assets/autocomplete-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/autocomplete/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/calendar.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/editor-sprite-active.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/datatable.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/autocomplete.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/split-button-arrow-focus.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/tabview.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/logger.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/split-button-arrow.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/colorpicker.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/split-button-arrow-active.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/button.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/sprite.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/editor-knob.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/split-button-arrow-disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/split-button-arrow-hover.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/menu-button-arrow-disabled.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/menu.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/dt-arrow-up.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/menu-button-arrow.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/picker_mask.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/hue_bg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/container.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/dt-arrow-dn.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/editor-sprite.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/yuitest.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/treeview.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/treeview-loading.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/editor.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/blankimage.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/skins/sam/treeview-sprite.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/README: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/editor-beta.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/editor-beta-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/editor-beta-debug.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/sam/editor-sprite-active.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/sam/editor-knob.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/sam/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/sam/editor-skin.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/sam/editor-sprite.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/sam/editor.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/skins/sam/blankimage.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/editor-core.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/lib/yui/editor/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/Thumbs.db: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/javalogo.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/check_true.JPG: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/message.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/right.GIF: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/Thumbs.db: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/footer.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/wiz-arrow.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/background1.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/buttonbg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/nextbg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/background2.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/wizard/left-pane-background.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/warning.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/ok.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/rel_interstitial_loading.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/arrow.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/balloon_icon.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/update.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/left.GIF: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/message.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/images/error.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/templates/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/templates/main.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/js/App.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/js/AjaxUtils.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/assets/js/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/auth.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/sha256.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/require-jquery.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/jquery-ui.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/admincli.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/org/codehaus/mojo/jquery-amd/1.7.1-alpha-1/jquery-amd-1.7.1-alpha-1.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/swfobject/swfobject/2.2/swfobject-2.2-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/openam.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/browserVersion.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/json2/json2/1.0/json2-1.0.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/jquery.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/Bluff-0.3.6.2/bluff-src.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/Bluff-0.3.6.2/excanvas.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/Bluff-0.3.6.2/js-class.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/Bluff-0.3.6.2/MIT-LICENSE.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/Bluff-0.3.6.2/GPL-LICENSE.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/Bluff-0.3.6.2/CHANGELOG.txt: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/Bluff-0.3.6.2/bluff-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/openam-authnmodule-adaptive-deviceprint-scripts-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/js/jquery-amd-min.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/Debug.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/nowritewarning.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/isAlive.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SubConfigAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/G11NCharsetAliasAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SubSchemaTypeSelect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCConfigSystem.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSAML2SOAPBinding.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/MAPDeviceProfile.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/MAPCreateDevice.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSAML2SOAPBindingRequestHandlerListEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCPolicy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCConfigConsole.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/G11NCharsetAliasEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerEditGeneral.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/G11NSupportedCharsetsEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerConfigXMLAddServer.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMDiscoveryBootstrapRefOffAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSAML2SOAPBindingRequestHandlerListDup.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SecurityTokenService.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/MAPDuplicationDevice.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMG11N.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/STSExportPolicy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerConfigXML.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSOAPBindingRequestHandlerListAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerEditAdvanced.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/MAPClientManager.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMDiscoveryProviderResourceIdMapperEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMDiscoveryProviderResourceIdMapperAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerEditSDK.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/MAPCreateDeviceTwo.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSOAPBinding.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCConfig.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCPolicyResourceComparatorAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerEditSecurity.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCConfigGlobal.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCPolicyResourceComparatorEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerClone.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSOAPBindingRequestHandlerListDup.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSOAPBindingRequestHandlerListEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCSAML2SOAPBindingRequestHandlerListAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerEditCTS.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerSite.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMDiscoveryService.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerConfigInherit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCConfigAuth.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMDiscoveryDescriptionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCServiceProfile.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/G11NSupportedCharsetsAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SubConfigEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMDiscoveryBootstrapRefOffEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerEditSession.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SiteEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SMDiscoveryDescriptionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SiteAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/SCPlatform30.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/service/ServerAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/dm/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/css/css_master.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/css/help.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/css/commontask.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/css/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/css/openam.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/UMChangeUserPassword.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/UMUserResourceOfferingAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/UMUserResourceOfferingEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/UMUserDiscoveryDescriptionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/UMUserResourceOffering.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/UMUserDiscoveryDescriptionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/user/UMUserPasswordResetOptions.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSPPServiceSupportedContainerAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSPPServiceDSAttributeMapListAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSPPServiceSupportedContainerEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSAuthNServices.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSPPServiceDSAttributeMapListEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSAuthNServicesHandlersEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSAuthNServicesHandlersAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/webservices/WSPersonalProfileService.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/delegation/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/delegation/DelegationProperties.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/delegation/Delegation.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/AuthProperties.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/AuthConfig.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/ReorderAuthChains.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/NewAuthConfig.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/NewAuthInstance.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/EditAuthType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/authentication/CoreAttributes.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/version/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultIPConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultTimeCondition.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultSessionConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/RuleWithPrefixAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMAuthenticatedUsersSubjectAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/AuthToServiceAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PolicyNormalAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/AuthToRealmAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PolicySelectType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultAuthLevelConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/IDRepoResponseProviderAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMLDAPRoleSubject.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/IdentitySubjectEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ResponseProviderAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/AuthToRealmEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SessionPropertyAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ResponseProviderProxy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultSessionConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ReferralProxy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PolicyNormalEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/RuleAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SessionPropertyConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMAuthenticatedUsersSubjectEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/IdentityMembershipConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PolicyReferralAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDSAMERoleSubject.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMLDAPOrgSubject.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/AuthToRealm.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultAuthSchemeConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultAuthLevelConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/RuleEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SessionPropertyEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultIPConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultSessionCondition.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/IDRepoResponseProviderEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultIPCondition.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/IdentitySubjectAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/RuleNoResourceEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SubjectAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ReferralAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMLDAPUserSubject.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ResponseProviderEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/IdentityMembershipConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SubjectNoneAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/IdentitySubject.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ReferralEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SelectServiceType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SelectResponseProviderType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SelectConditionType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultAuthLevelCondition.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultTimeConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultTimeConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultAuthSchemeConditionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SelectSubjectType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMLDAPGroupSubject.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SelectReferralType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ConditionProxy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/Policy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SubjectProxy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SubjectEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/ConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SelectRealm.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SubjectNoneEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/RuleNoResourceAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/AuthToServiceEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SessionPropertyConditionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PolicyReferralEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/RuleWithPrefixEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/PMDefaultAuthSchemeCondition.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/policy/SessionPropertyCondition.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/CloseWindow.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/AMAdminFrame.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/Message.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/oldcopyright.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/Authenticated.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/AMInvalidURL.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/Version.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/AMUncaughtException.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/AMLogin.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/base/AMPost.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/CreateRemoteSP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/Home.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureGoogleApps.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureSalesForceApps.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureGoogleAppsWarning.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureSalesForceAppsFinishWarning.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/CreateHostedIDP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/CreateFedlet.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureSalesForceAppsComplete.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/CreateHostedSP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureSalesForceAppsWarning.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/CreateFedletWarning.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/CompleteCreateHostedIDP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ValidateSAML2Setup.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureOAuth2.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/CreateRemoteIDP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/task/ConfigureGoogleAppsComplete.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityDiscoveryDescriptionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EndUser.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/Home.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityMembersFilteredIdentity.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityServices.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityMembership.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/ServicesEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityResourceOffering.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/ServicesNoAttribute.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityResourceOfferingAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityDiscoveryDescriptionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityResourceOfferingEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/Entities.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/EntityMembers.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/ServicesAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/idm/ServicesSelect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/PrimaryProductName.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/question.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/progresspointer.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/dot.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/grad1.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/leftBottom.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/gradation-grey.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/sCurve.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightToggle-rollover.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightToggle.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/mastheadGrad.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightBottom.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightToggleEmpty.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/bkgrnd.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/header-bkg-short.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/spacer.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/s-curve.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightTop.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/close.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/grad2.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/close2.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightToggle-selected.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightToggleEmpty-2.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/s-curve2.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/header-bkg.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/leftTop.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/rightEdge.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/header-bkg.jpg: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/grad3.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/tasks/s-curve.png: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/progressfailed.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/progresspassed.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/LrlGroup.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/processing.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/infoicon.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/LrlUser.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/help/info-selected.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/help/info-hover.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/images/help/info.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/ajax/AjaxProxy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/ajax/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/ajax/FileUpload.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2SPServices.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2IDPAssertionContent.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2IDPAdvanced.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FileUploader.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLTargetURLsEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLSiteIDEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2General.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLTrustedPartnersEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/IDFFAffiliate.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/CreateSAML2MetaData.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/CreateCOT.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/IDFFSP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/WSFedSP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2SPAssertionContent.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSAuthDomainsEditViewBean.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2AttrQuery.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/Federation.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2SPAdvanced.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2IDPServices.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2SPAssertionProcessing.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2PEP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/WSFedIDP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2Affiliate.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/WSFedGeneral.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLService.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2IDPAssertionProcessing.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLSetTrustedPartnerType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLSiteIDAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/IDFFGeneral.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2AuthnAuthority.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLTrustedPartnersAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2AttrAuthority.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/SAMLv2PDP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLTargetURLsAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/IDFFIDP.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/FSSAMLSelectTrustedPartnerType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/federation/ImportEntity.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/html/level3/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/html/level1/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/html/level2/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/html/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/blank.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/help/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/session/SMProfile.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/session/SessionHAStatistics.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/session/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/js/help.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/js/tasksPage.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/js/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/js/am.js: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/Configurator.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/GenericAgentProfile.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/AgentExportPolicy.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/Home.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/WebServiceProviderEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/AgentDump.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/AgentGroupAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/WebServiceUserCredEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/WebServiceUserCredAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/AgentConfigInherit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/WebServiceClientEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/WebServiceSTSEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/AgentAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/Agents.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/agentconfig/AgentGroupMembers.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RealmDiscoveryDescriptionEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/IDRepoSelectType.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RealmProperties.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/ServicesCannotAssignService.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/IDRepoAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RMRealm.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/HomePage.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RealmDiscoveryDescriptionAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/ServicesEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/IDRepoEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/ServicesNoAttribute.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/Services.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RMRealmAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RealmResourceOfferingEdit.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RealmResourceOffering.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/IDRepo.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/RealmResourceOfferingAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/ServicesAdd.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/console/realm/ServicesSelect.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/services.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/click/error.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/click/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/click/not-found.htm: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/wsfederation/jsp/realmSelection.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/wsfederation/jsp/logout.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/wsfederation/jsp/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/wsfederation/jsp/multi.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/wsfederation/jsp/post.jsp: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/wsfederation/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/Java.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/CCCSS_Default.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/master-style.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/adminstyle.css: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/error_32_sunplex.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/Identity_LogIn.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/spacer.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/index.html: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/logo_sun.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/warning_32_sunplex.gif: No such file or directory
##-- diff: /usr/local/edgeserver/torquebox-3.x.incremental.1870/jboss/standalone/tmp/vfs/temp88d43a74c6468b8b/openam.war-b5df65af393ec1d9/login_images/info_32_sunplex.gif: No such file or directory
##-- 
##-- 
##-- 
