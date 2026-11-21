# RostersApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadRosterGameIds**](RostersApi.md#ReadRosterGameIds) | **GET** /api/v1/chicken_nhl/rosters/game_ids | Game IDs with rosters
[**ReadRosters**](RostersApi.md#ReadRosters) | **GET** /api/v1/chicken_nhl/rosters | Rosters


# **ReadRosterGameIds**
> array[integer] ReadRosterGameIds(api_id = var.api_id, team = var.team, limit = var.limit, offset = 0)

Game IDs with rosters

### Example
```R
library(chickenstats.api)

# Game IDs with rosters
#
# prepare function argument(s)
var_api_id <- c(123) # array[integer] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer | Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. (Optional)

api_instance <- RostersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadRosterGameIds(api_id = var_api_id, team = var_team, limit = var_limit, offset = var_offsetdata_file = "result.txt")
result <- api_instance$ReadRosterGameIds(api_id = var_api_id, team = var_team, limit = var_limit, offset = var_offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_id** | list( **integer** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**| Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. | [optional] [default to 0]

### Return type

**array[integer]**

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

# **ReadRosters**
> RosterResponse ReadRosters(limit = var.limit, offset = 0, with_total = TRUE, game_id = var.game_id, api_id = var.api_id, team = var.team, include = var.include)

Rosters

### Example
```R
library(chickenstats.api)

# Rosters
#
# prepare function argument(s)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer | Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_game_id <- c(123) # array[integer] |  (Optional)
var_api_id <- c(123) # array[integer] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_include <- c("player") # array[character] |  (Optional)

api_instance <- RostersApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadRosters(limit = var_limit, offset = var_offset, with_total = var_with_total, game_id = var_game_id, api_id = var_api_id, team = var_team, include = var_includedata_file = "result.txt")
result <- api_instance$ReadRosters(limit = var_limit, offset = var_offset, with_total = var_with_total, game_id = var_game_id, api_id = var_api_id, team = var_team, include = var_include)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**| Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **game_id** | list( **integer** )|  | [optional] 
 **api_id** | list( **integer** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **include** | Enum [player, game] |  | [optional] 

### Return type

[**RosterResponse**](RosterResponse.md)

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

