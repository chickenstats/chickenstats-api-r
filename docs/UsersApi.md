# UsersApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConfirmEmailChange**](UsersApi.md#ConfirmEmailChange) | **POST** /api/v1/users/email/confirm | Confirm Email Change
[**DeleteUserMe**](UsersApi.md#DeleteUserMe) | **DELETE** /api/v1/users/me | Delete User Me
[**GetProgrammaticCredentials**](UsersApi.md#GetProgrammaticCredentials) | **GET** /api/v1/users/me/programmatic-credentials | Get Programmatic Credentials
[**ReadUserMe**](UsersApi.md#ReadUserMe) | **GET** /api/v1/users/me | Read User Me
[**RequestEmailChange**](UsersApi.md#RequestEmailChange) | **POST** /api/v1/users/me/email | Request Email Change
[**ResendVerification**](UsersApi.md#ResendVerification) | **POST** /api/v1/users/me/resend-verification | Resend Verification
[**RotateProgrammaticCredentials**](UsersApi.md#RotateProgrammaticCredentials) | **POST** /api/v1/users/me/programmatic-credentials/rotate | Rotate Programmatic Credentials
[**Signup**](UsersApi.md#Signup) | **POST** /api/v1/users/signup | Signup
[**UpdatePasswordMe**](UsersApi.md#UpdatePasswordMe) | **PATCH** /api/v1/users/me/password | Update Password Me
[**UpdateUserMe**](UsersApi.md#UpdateUserMe) | **PATCH** /api/v1/users/me | Update User Me


# **ConfirmEmailChange**
> Message ConfirmEmailChange(email_change_confirm)

Confirm Email Change

Move the account to the address the link was sent to.  No session needed: the link is the proof, and it may be opened on another device. It names the address the account had, so it is spent once the change is made, and a later change makes an older link useless.  Stripe, then Firebase, then Postgres, and each step is undone if a later one fails: an account whose three addresses disagree cannot sign in, buy or open its portal. Firebase keeps its uid, so the stripeRole claim comes along; the user row keeps its id, so contributor flags, the service token and refresh-token ownership do too. Usage rows are re-keyed in the same commit as the address.

### Example
```R
library(chickenstats.api)

# Confirm Email Change
#
# prepare function argument(s)
var_email_change_confirm <- EmailChangeConfirm$new("token_example") # EmailChangeConfirm | 

api_instance <- UsersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ConfirmEmailChange(var_email_change_confirmdata_file = "result.txt")
result <- api_instance$ConfirmEmailChange(var_email_change_confirm)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_change_confirm** | [**EmailChangeConfirm**](EmailChangeConfirm.md)|  | 

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

# **DeleteUserMe**
> Message DeleteUserMe()

Delete User Me

Delete own user and disable Firebase account.  Refused while the account has a live Stripe subscription: deleting it left the subscription billing and took away the portal it is cancelled from.

### Example
```R
library(chickenstats.api)

# Delete User Me
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteUserMe(data_file = "result.txt")
result <- api_instance$DeleteUserMe()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Message**](Message.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

# **GetProgrammaticCredentials**
> ProgrammaticCredentials GetProgrammaticCredentials()

Get Programmatic Credentials

Return the CF client ID for programmatic access. The secret is never retrievable —.  rotate credentials if the secret was lost.

### Example
```R
library(chickenstats.api)

# Get Programmatic Credentials
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProgrammaticCredentials(data_file = "result.txt")
result <- api_instance$GetProgrammaticCredentials()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProgrammaticCredentials**](ProgrammaticCredentials.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

# **ReadUserMe**
> UserPublic ReadUserMe()

Read User Me

Get current user, with the tier they have now and whether they are verified.

### Example
```R
library(chickenstats.api)

# Read User Me
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadUserMe(data_file = "result.txt")
result <- api_instance$ReadUserMe()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

# **RequestEmailChange**
> Message RequestEmailChange(email_change_request)

Request Email Change

Email a link to a new address; the change happens when it is clicked.  Nothing moves here. The address is the account's identity in Firebase, Stripe and the quota, so it changes only once the new one has proved it receives mail (API-20, BR-03). A verified account only: an unproven address has no claim to hand on.

### Example
```R
library(chickenstats.api)

# Request Email Change
#
# prepare function argument(s)
var_email_change_request <- EmailChangeRequest$new("new_email_example") # EmailChangeRequest | 

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RequestEmailChange(var_email_change_requestdata_file = "result.txt")
result <- api_instance$RequestEmailChange(var_email_change_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_change_request** | [**EmailChangeRequest**](EmailChangeRequest.md)|  | 

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
| **422** | Validation Error |  -  |

# **ResendVerification**
> Message ResendVerification()

Resend Verification

Trigger Firebase to resend the verification email.

### Example
```R
library(chickenstats.api)

# Resend Verification
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ResendVerification(data_file = "result.txt")
result <- api_instance$ResendVerification()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Message**](Message.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

# **RotateProgrammaticCredentials**
> ProgrammaticCredentials RotateProgrammaticCredentials()

Rotate Programmatic Credentials

Delete the existing CF service token and issue a new one. The new secret is.  returned once in the response and optionally emailed. Store it immediately.

### Example
```R
library(chickenstats.api)

# Rotate Programmatic Credentials
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RotateProgrammaticCredentials(data_file = "result.txt")
result <- api_instance$RotateProgrammaticCredentials()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProgrammaticCredentials**](ProgrammaticCredentials.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

# **Signup**
> UserPublic Signup(user_register)

Signup

Public self-registration. Creates a local user, a Firebase user, and a Ghost member.  An address that already has a row is refused, active or not (changed 2026-10-17). Signing up over a deactivated account used to reset its password and re-enable it for whoever asked, keeping its flags, its service credentials and its Stripe portal. Reactivation is an admin action now (PATCH /users/{id} with is_active).  An address with a Firebase account but no row is a deleted account if that Firebase account is disabled, which is what deleting leaves behind: it is given the new password and enabled again, so the address can be used once more. An enabled one belongs to someone, so it is refused rather than having its password changed.

### Example
```R
library(chickenstats.api)

# Signup
#
# prepare function argument(s)
var_user_register <- UserRegister$new("email_example", "password_example", "full_name_example") # UserRegister | 

api_instance <- UsersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Signup(var_user_registerdata_file = "result.txt")
result <- api_instance$Signup(var_user_register)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_register** | [**UserRegister**](UserRegister.md)|  | 

### Return type

[**UserPublic**](UserPublic.md)

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

# **UpdatePasswordMe**
> Message UpdatePasswordMe(update_password)

Update Password Me

Update own password in Firebase. Verifies current password against Firebase before changing.

### Example
```R
library(chickenstats.api)

# Update Password Me
#
# prepare function argument(s)
var_update_password <- UpdatePassword$new("current_password_example", "new_password_example") # UpdatePassword | 

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdatePasswordMe(var_update_passworddata_file = "result.txt")
result <- api_instance$UpdatePasswordMe(var_update_password)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_password** | [**UpdatePassword**](UpdatePassword.md)|  | 

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
| **422** | Validation Error |  -  |

# **UpdateUserMe**
> UserPublic UpdateUserMe(user_update_me)

Update User Me

Update own user. The email address cannot be changed here.

### Example
```R
library(chickenstats.api)

# Update User Me
#
# prepare function argument(s)
var_user_update_me <- UserUpdateMe$new("full_name_example") # UserUpdateMe | 

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateUserMe(var_user_update_medata_file = "result.txt")
result <- api_instance$UpdateUserMe(var_user_update_me)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_update_me** | [**UserUpdateMe**](UserUpdateMe.md)|  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

