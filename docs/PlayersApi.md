# PlayersApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadPlayer**](PlayersApi.md#ReadPlayer) | **GET** /api/v1/chicken_nhl/players/{api_id} | One player
[**ReadPlayers**](PlayersApi.md#ReadPlayers) | **GET** /api/v1/chicken_nhl/players | Players


# **ReadPlayer**
> PlayerPublic ReadPlayer(api_id)

One player

### Example
```R
library(chickenstats.api)

# One player
#
# prepare function argument(s)
var_api_id <- 56 # integer | 

api_instance <- PlayersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadPlayer(var_api_iddata_file = "result.txt")
result <- api_instance$ReadPlayer(var_api_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_id** | **integer**|  | 

### Return type

[**PlayerPublic**](PlayerPublic.md)

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

# **ReadPlayers**
> PlayerResponse ReadPlayers(limit = var.limit, offset = 0, with_total = TRUE, name = var.name, eh_id = var.eh_id, api_id = var.api_id)

Players

### Example
```R
library(chickenstats.api)

# Players
#
# prepare function argument(s)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer | Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_name <- c("inner_example") # array[character] |  (Optional)
var_eh_id <- c("inner_example") # array[character] |  (Optional)
var_api_id <- c(123) # array[integer] |  (Optional)

api_instance <- PlayersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadPlayers(limit = var_limit, offset = var_offset, with_total = var_with_total, name = var_name, eh_id = var_eh_id, api_id = var_api_iddata_file = "result.txt")
result <- api_instance$ReadPlayers(limit = var_limit, offset = var_offset, with_total = var_with_total, name = var_name, eh_id = var_eh_id, api_id = var_api_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**| Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **name** | list( **character** )|  | [optional] 
 **eh_id** | list( **character** )|  | [optional] 
 **api_id** | list( **integer** )|  | [optional] 

### Return type

[**PlayerResponse**](PlayerResponse.md)

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

