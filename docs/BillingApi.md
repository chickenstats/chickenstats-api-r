# BillingApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateCheckoutSession**](BillingApi.md#CreateCheckoutSession) | **POST** /api/v1/billing/checkout | Create Checkout Session
[**CreatePortalSession**](BillingApi.md#CreatePortalSession) | **POST** /api/v1/billing/portal | Create Portal Session


# **CreateCheckoutSession**
> map(character) CreateCheckoutSession(tier)

Create Checkout Session

Create a Stripe Checkout session for the given tier and return its URL.  Created via a direct server-side Stripe API call rather than the Firebase extension's client-SDK pattern (Firestore-triggered function, meant for a JS SPA) -- this project's frontend is server-rendered. The extension's handleWebhookEvents function still processes the resulting checkout.session.completed event and sets the stripeRole claim, since Stripe fires the same webhook regardless of how the session was created.

### Example
```R
library(chickenstats.api)

# Create Checkout Session
#
# prepare function argument(s)
var_tier <- "tier_example" # character | 

api_instance <- BillingApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateCheckoutSession(var_tierdata_file = "result.txt")
result <- api_instance$CreateCheckoutSession(var_tier)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tier** | **character**|  | 

### Return type

**map(character)**

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **CreatePortalSession**
> map(character) CreatePortalSession()

Create Portal Session

Create a Stripe customer billing-portal session and return its URL.  Finds the customer by email -- the Firebase extension already creates a Stripe customer per Firebase user (\"Sync new users to Stripe customers\"), so no separate customer-ID storage is needed here.

### Example
```R
library(chickenstats.api)

# Create Portal Session
#

api_instance <- BillingApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreatePortalSession(data_file = "result.txt")
result <- api_instance$CreatePortalSession()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**map(character)**

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

