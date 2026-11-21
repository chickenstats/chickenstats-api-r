# UsersApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthenticatorChanged**](UsersApi.md#AuthenticatorChanged) | **POST** /api/v1/users/me/authenticator/changed | Record an authenticator change
[**ConfirmEmailChange**](UsersApi.md#ConfirmEmailChange) | **POST** /api/v1/users/email/confirm | Confirm an email change
[**CreateApiToken**](UsersApi.md#CreateApiToken) | **POST** /api/v1/users/me/tokens | Make an API token
[**DeleteSignInMethod**](UsersApi.md#DeleteSignInMethod) | **DELETE** /api/v1/users/me/sign-in-methods/{provider} | Remove a sign-in method
[**DeleteUserMe**](UsersApi.md#DeleteUserMe) | **DELETE** /api/v1/users/me | Delete your account
[**ListApiTokens**](UsersApi.md#ListApiTokens) | **GET** /api/v1/users/me/tokens | Your API tokens
[**ReadLinkToken**](UsersApi.md#ReadLinkToken) | **POST** /api/v1/users/me/sign-in-methods/link-token | Start linking a sign-in method
[**ReadNewsletter**](UsersApi.md#ReadNewsletter) | **GET** /api/v1/users/me/newsletter | Newsletter preference
[**ReadSignInMethods**](UsersApi.md#ReadSignInMethods) | **GET** /api/v1/users/me/sign-in-methods | Your sign-in methods
[**ReadUsage**](UsersApi.md#ReadUsage) | **GET** /api/v1/users/me/usage | Your usage this month
[**ReadUserMe**](UsersApi.md#ReadUserMe) | **GET** /api/v1/users/me | Your account
[**RequestEmailChange**](UsersApi.md#RequestEmailChange) | **POST** /api/v1/users/me/email | Change your email
[**ResendVerification**](UsersApi.md#ResendVerification) | **POST** /api/v1/users/me/resend-verification | Resend the verification email
[**RevokeAllApiTokens**](UsersApi.md#RevokeAllApiTokens) | **DELETE** /api/v1/users/me/tokens | Revoke every API token
[**RevokeApiToken**](UsersApi.md#RevokeApiToken) | **DELETE** /api/v1/users/me/tokens/{token_id} | Revoke an API token
[**Signup**](UsersApi.md#Signup) | **POST** /api/v1/users/signup | Sign up
[**UpdateNewsletter**](UsersApi.md#UpdateNewsletter) | **PATCH** /api/v1/users/me/newsletter | Change newsletter preference
[**UpdatePasswordMe**](UsersApi.md#UpdatePasswordMe) | **PATCH** /api/v1/users/me/password | Change your password
[**UpdateUserMe**](UsersApi.md#UpdateUserMe) | **PATCH** /api/v1/users/me | Update your account


# **AuthenticatorChanged**
> Token AuthenticatorChanged()

Record an authenticator change

End the other sessions after an authenticator app goes on or off.  The browser turns the app on or off with Firebase directly, then calls this. Every session ends, ours and Firebase's, so a device that signed in before the change has to sign in again under the new rule. The caller gets a new token with the same claims and expiry as the one it sent, in a session of its own so signing out still ends it, which is what keeps this browser signed in. It needs a sign-in in the last ten minutes, as the change itself does.

### Example
```R
library(chickenstats.api)

# Record an authenticator change
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AuthenticatorChanged(data_file = "result.txt")
result <- api_instance$AuthenticatorChanged()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Token**](Token.md)

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

# **ConfirmEmailChange**
> Message ConfirmEmailChange(email_change_confirm)

Confirm an email change

Move the account to the address the link was sent to.  No session needed: the link is the proof, and it may be opened on another device. It names the address the account had, so it is spent once the change is made, and a later change makes an older link useless.  Stripe, then Firebase, then Postgres, and each step is undone if a later one fails: an account whose three addresses disagree cannot sign in, buy or open its portal. Firebase keeps its uid, so the stripeRole claim comes along; the user row keeps its id, so contributor flags, the service token and refresh-token ownership do too. Usage rows are re-keyed in the same commit as the address.

### Example
```R
library(chickenstats.api)

# Confirm an email change
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **CreateApiToken**
> ApiTokenCreated CreateApiToken(api_token_create)

Make an API token

A named token for scripts, the SDKs and chickenstats, shown this once.  It reads data with your live tier and nothing else: it can't manage the account or make another token. It lasts until revoked, or expires_in_days. It needs a sign-in in the last ten minutes, so a stolen session can't leave a token behind that outlives it.

### Example
```R
library(chickenstats.api)

# Make an API token
#
# prepare function argument(s)
var_api_token_create <- ApiTokenCreate$new("name_example", 123) # ApiTokenCreate | 

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateApiToken(var_api_token_createdata_file = "result.txt")
result <- api_instance$CreateApiToken(var_api_token_create)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_token_create** | [**ApiTokenCreate**](ApiTokenCreate.md)|  | 

### Return type

[**ApiTokenCreated**](ApiTokenCreated.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful Response |  -  |
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **DeleteSignInMethod**
> Message DeleteSignInMethod(provider)

Remove a sign-in method

Remove a way in, unless it is the last one.

### Example
```R
library(chickenstats.api)

# Remove a sign-in method
#
# prepare function argument(s)
var_provider <- "provider_example" # character | 

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteSignInMethod(var_providerdata_file = "result.txt")
result <- api_instance$DeleteSignInMethod(var_provider)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **character**|  | 

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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **DeleteUserMe**
> Message DeleteUserMe()

Delete your account

Delete own account everywhere, ending any subscription now (see _purge).  Only just after a sign-in: a stolen session could otherwise end a subscription and an account that can't be brought back.

### Example
```R
library(chickenstats.api)

# Delete your account
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |

# **ListApiTokens**
> array[ApiTokenPublic] ListApiTokens()

Your API tokens

Your named tokens, newest first. The tokens themselves are never shown again.

### Example
```R
library(chickenstats.api)

# Your API tokens
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListApiTokens(data_file = "result.txt")
result <- api_instance$ListApiTokens()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ApiTokenPublic]**](ApiTokenPublic.md)

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

# **ReadLinkToken**
> LinkToken ReadLinkToken()

Start linking a sign-in method

A Firebase custom token, for the account page to add a method with.  Verified accounts only: otherwise someone holding an unproven address could attach their own Google or GitHub to it before its owner arrives. And only just after a sign-in, so a stolen session can't add a way in of its own.

### Example
```R
library(chickenstats.api)

# Start linking a sign-in method
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadLinkToken(data_file = "result.txt")
result <- api_instance$ReadLinkToken()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LinkToken**](LinkToken.md)

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

# **ReadNewsletter**
> Newsletters ReadNewsletter()

Newsletter preference

Which newsletters this account gets, as Ghost has it now.  The paid one needs Ghost's paid access: bought from Ghost itself, or given with Pro, Elite, a contributor or a superuser account.

### Example
```R
library(chickenstats.api)

# Newsletter preference
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadNewsletter(data_file = "result.txt")
result <- api_instance$ReadNewsletter()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Newsletters**](Newsletters.md)

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

# **ReadSignInMethods**
> SignInMethods ReadSignInMethods()

Your sign-in methods

The ways into this account (API-172).

### Example
```R
library(chickenstats.api)

# Your sign-in methods
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadSignInMethods(data_file = "result.txt")
result <- api_instance$ReadSignInMethods()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SignInMethods**](SignInMethods.md)

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

# **ReadUsage**
> Usage ReadUsage()

Your usage this month

Data requests counted so far this month, against the tier's allowance.  The same count the quota checks, so the account page and the X-Quota headers can't disagree.

### Example
```R
library(chickenstats.api)

# Your usage this month
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadUsage(data_file = "result.txt")
result <- api_instance$ReadUsage()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Usage**](Usage.md)

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

# **ReadUserMe**
> UserPublic ReadUserMe()

Your account

Get current user, with the tier they have now and whether they are verified.

### Example
```R
library(chickenstats.api)

# Your account
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |

# **RequestEmailChange**
> Message RequestEmailChange(email_change_request)

Change your email

Email a link to a new address; the change happens when it is clicked.  Nothing moves here. The address is the account's identity in Firebase, Stripe and the quota, so it changes only once the new one has proved it receives mail (API-20, BR-03). A verified account only: an unproven address has no claim to hand on. And a recent sign-in, since the link goes to an address whoever asks chooses.

### Example
```R
library(chickenstats.api)

# Change your email
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **ResendVerification**
> Message ResendVerification()

Resend the verification email

Trigger Firebase to resend the verification email.

### Example
```R
library(chickenstats.api)

# Resend the verification email
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |

# **RevokeAllApiTokens**
> RevokeAllApiTokens()

Revoke every API token

Stop every named token at once. Sessions are left signed in.

### Example
```R
library(chickenstats.api)

# Revoke every API token
#

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
api_instance$RevokeAllApiTokens()
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

# **RevokeApiToken**
> RevokeApiToken(token_id)

Revoke an API token

### Example
```R
library(chickenstats.api)

# Revoke an API token
#
# prepare function argument(s)
var_token_id <- "token_id_example" # character | 

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
api_instance$RevokeApiToken(var_token_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **character**|  | 

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
| **422** | Validation Error |  -  |

# **Signup**
> Message Signup(user_register)

Sign up

Public self-registration. Creates a local user, a Firebase user, and a Ghost member.  The reply is the same whether or not the address already has an account, so signup cannot be used to learn who has one (API-246). A taken address is left as it is; its owner can sign in or reset the password.  It takes no password (API-316). The Firebase account gets a random one nobody knows, and the person chooses theirs once the verification link has proven the address (POST /verify-email). Taken at signup, a squatter's password became a working way into the real owner's account the moment the owner clicked the link.  Every account is a newsletter member, which keeps access in step. It gets email only once the address is proven, and only if the person asked to there; the signup box, off by default, only ticks that one ahead.  An address that already has a row is refused, active or not (changed 2026-10-17). Signing up over a deactivated account used to reset its password and re-enable it for whoever asked, keeping its flags, its service credentials and its Stripe portal. Reactivation is an admin action now (PATCH /users/{id} with is_active).  The accounts are made after the reply (API-316). Made before it, only a new address waited on Firebase and the mail, so the time the reply took said what the words didn't.  An address with a Firebase account but no row is a deleted account if that Firebase account is disabled, which is what deleting left behind before it deleted the Firebase user too (API-233). That account is deleted and made again, so the new one starts unverified and with no claims; enabling it handed the newcomer the old owner's verified flag. An enabled one belongs to someone, so it is refused rather than having its password changed.

### Example
```R
library(chickenstats.api)

# Sign up
#
# prepare function argument(s)
var_user_register <- UserRegister$new("email_example", "full_name_example", "newsletter_example") # UserRegister | 

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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **UpdateNewsletter**
> Newsletters UpdateNewsletter(newsletter_preference)

Change newsletter preference

Turn each newsletter on or off. Membership itself stays either way.  Verified accounts only, so nobody can sign up someone else's address. The paid one is left off for an account without paid access.

### Example
```R
library(chickenstats.api)

# Change newsletter preference
#
# prepare function argument(s)
var_newsletter_preference <- NewsletterPreference$new("announcements_example", "paid_example") # NewsletterPreference | 

api_instance <- UsersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateNewsletter(var_newsletter_preferencedata_file = "result.txt")
result <- api_instance$UpdateNewsletter(var_newsletter_preference)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newsletter_preference** | [**NewsletterPreference**](NewsletterPreference.md)|  | 

### Return type

[**Newsletters**](Newsletters.md)

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

# **UpdatePasswordMe**
> Message UpdatePasswordMe(update_password)

Change your password

Update own password in Firebase. Verifies current password against Firebase before changing.

### Example
```R
library(chickenstats.api)

# Change your password
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **UpdateUserMe**
> UserPublic UpdateUserMe(user_update_me)

Update your account

Update own user. The email address cannot be changed here.

### Example
```R
library(chickenstats.api)

# Update your account
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

