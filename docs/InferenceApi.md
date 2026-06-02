# InferenceApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadPredGoal**](InferenceApi.md#ReadPredGoal) | **GET** /api/v1/inference/pred_goal | Read Pred Goal


# **ReadPredGoal**
> PredGoalResponse ReadPredGoal(game_id = var.game_id, season = var.season, sessions = var.sessions, limit = 10000, offset = 0)

Read Pred Goal

Pre-computed pred_goal values from pbpcs for shot/miss/goal events.

### Example
```R
library(chickenstats.api)

# Read Pred Goal
#
# prepare function argument(s)
var_game_id <- c(123) # array[integer] |  (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("inner_example") # array[character] |  (Optional)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)

api_instance <- InferenceApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadPredGoal(game_id = var_game_id, season = var_season, sessions = var_sessions, limit = var_limit, offset = var_offsetdata_file = "result.txt")
result <- api_instance$ReadPredGoal(game_id = var_game_id, season = var_season, sessions = var_sessions, limit = var_limit, offset = var_offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game_id** | list( **integer** )|  | [optional] 
 **season** | list( **integer** )|  | [optional] 
 **sessions** | list( **character** )|  | [optional] 
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]

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
| **422** | Validation Error |  -  |

