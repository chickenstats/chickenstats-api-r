# InferenceApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadPredGoal**](InferenceApi.md#ReadPredGoal) | **GET** /api/v1/inference/pred_goal | Expected goals (pred_goal)


# **ReadPredGoal**
> PredGoalResponse ReadPredGoal(game_id = var.game_id, season = var.season, sessions = var.sessions, limit = var.limit, offset = 0, with_total = TRUE)

Expected goals (pred_goal)

Pre-computed xG for shot/miss/goal events in finished, scored games.  Live games are not scored right now, so nothing here is live.

### Example
```R
library(chickenstats.api)

# Expected goals (pred_goal)
#
# prepare function argument(s)
var_game_id <- c(123) # array[integer] |  (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("inner_example") # array[character] |  (Optional)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer | Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. (Optional)
var_with_total <- TRUE # character |  (Optional)

api_instance <- InferenceApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadPredGoal(game_id = var_game_id, season = var_season, sessions = var_sessions, limit = var_limit, offset = var_offset, with_total = var_with_totaldata_file = "result.txt")
result <- api_instance$ReadPredGoal(game_id = var_game_id, season = var_season, sessions = var_sessions, limit = var_limit, offset = var_offset, with_total = var_with_total)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game_id** | list( **integer** )|  | [optional] 
 **season** | list( **integer** )|  | [optional] 
 **sessions** | list( **character** )|  | [optional] 
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**| Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. | [optional] [default to 0]
 **with_total** | **character**|  | [optional] [default to TRUE]

### Return type

[**PredGoalResponse**](PredGoalResponse.md)

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

