# AuthApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApproveDeviceSignIn**](AuthApi.md#ApproveDeviceSignIn) | **POST** /api/v1/auth/device/approve | Approve a device sign-in
[**ConfirmRecovery**](AuthApi.md#ConfirmRecovery) | **POST** /api/v1/auth/recovery/confirm | Confirm a recovery sign-in
[**EndAllSessions**](AuthApi.md#EndAllSessions) | **DELETE** /api/v1/auth/sessions | Sign out everywhere
[**GetToken**](AuthApi.md#GetToken) | **POST** /api/v1/auth/token | Get a token
[**MakeRecoveryCodes**](AuthApi.md#MakeRecoveryCodes) | **POST** /api/v1/users/me/recovery-codes | Make recovery codes
[**RecoverPassword**](AuthApi.md#RecoverPassword) | **POST** /api/v1/password-recovery/ | Send a password reset email
[**ResetPassword**](AuthApi.md#ResetPassword) | **POST** /api/v1/reset-password/ | Reset a password
[**RevokeToken**](AuthApi.md#RevokeToken) | **POST** /api/v1/auth/revoke | Sign out one session
[**SetPassword**](AuthApi.md#SetPassword) | **POST** /api/v1/set-password/ | Choose a first password
[**StartDeviceSignIn**](AuthApi.md#StartDeviceSignIn) | **POST** /api/v1/auth/device | Start a device sign-in
[**UseRecoveryCode**](AuthApi.md#UseRecoveryCode) | **POST** /api/v1/auth/recovery | Sign in with a recovery code
[**VerifyEmail**](AuthApi.md#VerifyEmail) | **POST** /api/v1/verify-email | Verify an email address
[**Whoami**](AuthApi.md#Whoami) | **GET** /api/v1/auth/whoami | Who a token signs in as


# **ApproveDeviceSignIn**
> Message ApproveDeviceSignIn(device_approval)

Approve a device sign-in

Approve or deny the device showing this code, for the signed-in person.

### Example
```R
library(chickenstats.api)

# Approve a device sign-in
#
# prepare function argument(s)
var_device_approval <- DeviceApproval$new("user_code_example", "approve_example") # DeviceApproval | 

api_instance <- AuthApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ApproveDeviceSignIn(var_device_approvaldata_file = "result.txt")
result <- api_instance$ApproveDeviceSignIn(var_device_approval)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_approval** | [**DeviceApproval**](DeviceApproval.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **ConfirmRecovery**
> Message ConfirmRecovery(recovery_confirm)

Confirm a recovery sign-in

Turn the account's authenticator app off and end every session.  No session needed: the emailed link is the proof. A link is spent once the app is off, and also by any later end of the account's sessions, since it was issued before the stamp that leaves.

### Example
```R
library(chickenstats.api)

# Confirm a recovery sign-in
#
# prepare function argument(s)
var_recovery_confirm <- RecoveryConfirm$new("token_example") # RecoveryConfirm | 

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ConfirmRecovery(var_recovery_confirmdata_file = "result.txt")
result <- api_instance$ConfirmRecovery(var_recovery_confirm)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recovery_confirm** | [**RecoveryConfirm**](RecoveryConfirm.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **EndAllSessions**
> EndAllSessions()

Sign out everywhere

End every session on every device, this one included.  Named API tokens are left alone; revoke those at /users/me/tokens.

### Example
```R
library(chickenstats.api)

# Sign out everywhere
#

api_instance <- AuthApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
api_instance$EndAllSessions()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successful Response |  -  |
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |

# **GetToken**
> Token GetToken(grant_type = var.grant_type, username = var.username, password = var.password, refresh_token = var.refresh_token, subject_token = var.subject_token, subject_token_type = var.subject_token_type, device_code = var.device_code, mfa_token = var.mfa_token, otp = var.otp, client_id = var.client_id, client_secret = var.client_secret, scope = var.scope)

Get a token

The OAuth 2.0 token endpoint (RFC 6749), form-encoded.  Grants: password (username, password); refresh_token; Firebase sign-in as a token exchange (RFC 8693: subject_token, subject_token_type urn:ietf:params:oauth:token-type:id_token); the device grant (RFC 8628: device_code from /auth/device); and urn:chickenstats:params:oauth:grant-type:mfa-otp (mfa_token, otp) after a password grant's mfa_required. client_id is accepted and ignored.

### Example
```R
library(chickenstats.api)

# Get a token
#
# prepare function argument(s)
var_grant_type <- "grant_type_example" # character |  (Optional)
var_username <- "username_example" # character |  (Optional)
var_password <- "password_example" # character |  (Optional)
var_refresh_token <- "refresh_token_example" # character |  (Optional)
var_subject_token <- "subject_token_example" # character |  (Optional)
var_subject_token_type <- "subject_token_type_example" # character |  (Optional)
var_device_code <- "device_code_example" # character |  (Optional)
var_mfa_token <- "mfa_token_example" # character |  (Optional)
var_otp <- "otp_example" # character |  (Optional)
var_client_id <- "client_id_example" # character |  (Optional)
var_client_secret <- "client_secret_example" # character |  (Optional)
var_scope <- "scope_example" # character |  (Optional)

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetToken(grant_type = var_grant_type, username = var_username, password = var_password, refresh_token = var_refresh_token, subject_token = var_subject_token, subject_token_type = var_subject_token_type, device_code = var_device_code, mfa_token = var_mfa_token, otp = var_otp, client_id = var_client_id, client_secret = var_client_secret, scope = var_scopedata_file = "result.txt")
result <- api_instance$GetToken(grant_type = var_grant_type, username = var_username, password = var_password, refresh_token = var_refresh_token, subject_token = var_subject_token, subject_token_type = var_subject_token_type, device_code = var_device_code, mfa_token = var_mfa_token, otp = var_otp, client_id = var_client_id, client_secret = var_client_secret, scope = var_scope)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **character**|  | [optional] 
 **username** | **character**|  | [optional] 
 **password** | **character**|  | [optional] 
 **refresh_token** | **character**|  | [optional] 
 **subject_token** | **character**|  | [optional] 
 **subject_token_type** | **character**|  | [optional] 
 **device_code** | **character**|  | [optional] 
 **mfa_token** | **character**|  | [optional] 
 **otp** | **character**|  | [optional] 
 **client_id** | **character**|  | [optional] 
 **client_secret** | **character**|  | [optional] 
 **scope** | **character**|  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **400** | An RFC 6749 error. |  -  |
| **403** | mfa_required: the account has an authenticator app. Send mfa_token and the code as otp with grant_type urn:chickenstats:params:oauth:grant-type:mfa-otp. |  -  |
| **429** | Too many attempts; wait and retry. |  -  |
| **503** | Firebase didn&#39;t answer; retry. A refresh token stays live. |  -  |
| **422** | Validation Error |  -  |

# **MakeRecoveryCodes**
> RecoveryCodes MakeRecoveryCodes()

Make recovery codes

A new set of ten codes, voiding the old. They are shown this once.  Needs a sign-in in the last ten minutes, like the authenticator change it backs up, and an authenticator app to stand in for.

### Example
```R
library(chickenstats.api)

# Make recovery codes
#

api_instance <- AuthApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MakeRecoveryCodes(data_file = "result.txt")
result <- api_instance$MakeRecoveryCodes()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RecoveryCodes**](RecoveryCodes.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |

# **RecoverPassword**
> Message RecoverPassword(password_recovery)

Send a password reset email

Always returns 200 to prevent email enumeration.

### Example
```R
library(chickenstats.api)

# Send a password reset email
#
# prepare function argument(s)
var_password_recovery <- PasswordRecovery$new("email_example") # PasswordRecovery | 

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RecoverPassword(var_password_recoverydata_file = "result.txt")
result <- api_instance$RecoverPassword(var_password_recovery)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_recovery** | [**PasswordRecovery**](PasswordRecovery.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **ResetPassword**
> Message ResetPassword(new_password)

Reset a password

Set a password with the token from the recovery email.

### Example
```R
library(chickenstats.api)

# Reset a password
#
# prepare function argument(s)
var_new_password <- NewPassword$new("token_example", "new_password_example") # NewPassword | 

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ResetPassword(var_new_passworddata_file = "result.txt")
result <- api_instance$ResetPassword(var_new_password)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_password** | [**NewPassword**](NewPassword.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **RevokeToken**
> RevokeToken(token = var.token, token_type_hint = var.token_type_hint, client_id = var.client_id)

Sign out one session

Revoke a token (RFC 7009).  A refresh or access token ends its session; a named API token stops working. Always 200, even for a token that was never valid, so it reveals nothing.

### Example
```R
library(chickenstats.api)

# Sign out one session
#
# prepare function argument(s)
var_token <- "token_example" # character |  (Optional)
var_token_type_hint <- "token_type_hint_example" # character |  (Optional)
var_client_id <- "client_id_example" # character |  (Optional)

api_instance <- AuthApi$new()
api_instance$RevokeToken(token = var_token, token_type_hint = var_token_type_hint, client_id = var_client_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | [optional] 
 **token_type_hint** | **character**|  | [optional] 
 **client_id** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Revoked, or was never valid |  -  |
| **400** | An RFC 6749 error. |  -  |
| **422** | Validation Error |  -  |

# **SetPassword**
> Message SetPassword(new_password)

Choose a first password

Choose a new account's password with the token its verified address got.

### Example
```R
library(chickenstats.api)

# Choose a first password
#
# prepare function argument(s)
var_new_password <- NewPassword$new("token_example", "new_password_example") # NewPassword | 

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SetPassword(var_new_passworddata_file = "result.txt")
result <- api_instance$SetPassword(var_new_password)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_password** | [**NewPassword**](NewPassword.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **StartDeviceSignIn**
> DeviceAuthorization StartDeviceSignIn(client_id = var.client_id, scope = var.scope)

Start a device sign-in

Sign in a machine with no browser (RFC 8628).  Show the person user_code and verification_uri, then poll /auth/token with the device grant every `interval` seconds until they approve it.

### Example
```R
library(chickenstats.api)

# Start a device sign-in
#
# prepare function argument(s)
var_client_id <- "client_id_example" # character |  (Optional)
var_scope <- "scope_example" # character |  (Optional)

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$StartDeviceSignIn(client_id = var_client_id, scope = var_scopedata_file = "result.txt")
result <- api_instance$StartDeviceSignIn(client_id = var_client_id, scope = var_scope)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **character**|  | [optional] 
 **scope** | **character**|  | [optional] 

### Return type

[**DeviceAuthorization**](DeviceAuthorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **UseRecoveryCode**
> Message UseRecoveryCode(recovery_request)

Sign in with a recovery code

Spend a code and email the account a link that turns its app off.  The answer is _SENT whatever happens, so it never says whether the code was right. And a code is spent only once its link has gone to the mail server: with no mail configured it isn't tried, and a failed send rolls the spend back, so the code still works.

### Example
```R
library(chickenstats.api)

# Sign in with a recovery code
#
# prepare function argument(s)
var_recovery_request <- RecoveryRequest$new("email_example", "code_example") # RecoveryRequest | 

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UseRecoveryCode(var_recovery_requestdata_file = "result.txt")
result <- api_instance$UseRecoveryCode(var_recovery_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recovery_request** | [**RecoveryRequest**](RecoveryRequest.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **VerifyEmail**
> EmailVerified VerifyEmail(email_verification)

Verify an email address

Prove an address with the code from its verification email (API-335).  No session needed: the link is the proof, and it may be opened on another device. A session from before stays unverified, since the claim is baked into its token and an unproven address gets no refresh token, so the person signs in again to use the account. The code is never logged.  The announcements box on that page is the signup's opt-in, applied now that the address is proven.  An account that has never had a session gets a token to choose its password, and whatever password it had is replaced first: signup takes none, and one set before the address was proven isn't the owner's to keep.

### Example
```R
library(chickenstats.api)

# Verify an email address
#
# prepare function argument(s)
var_email_verification <- EmailVerification$new("oob_code_example", "newsletter_example") # EmailVerification | 

api_instance <- AuthApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VerifyEmail(var_email_verificationdata_file = "result.txt")
result <- api_instance$VerifyEmail(var_email_verification)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_verification** | [**EmailVerification**](EmailVerification.md)|  | 

### Return type

[**EmailVerified**](EmailVerified.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **Whoami**
> WhoAmI Whoami()

Who a token signs in as

The tier and account a session or named token reads data as.  Not metered, so checking a token costs no request, on any tier.

### Example
```R
library(chickenstats.api)

# Who a token signs in as
#

api_instance <- AuthApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Whoami(data_file = "result.txt")
result <- api_instance$Whoami()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhoAmI**](WhoAmI.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |

