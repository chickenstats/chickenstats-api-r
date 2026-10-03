# ChangesApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadChanges**](ChangesApi.md#ReadChanges) | **GET** /api/v1/chicken_nhl/changes | Read Changes
[**ReadChangesGameIds**](ChangesApi.md#ReadChangesGameIds) | **GET** /api/v1/chicken_nhl/changes/game_ids | Read Changes Game Ids


# **ReadChanges**
> ChangesResponse ReadChanges(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, game_id = var.game_id, event_team = var.event_team, period = var.period, include = var.include)

Read Changes

### Example
```R
library(chickenstats.api)

# Read Changes
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_game_id <- c(123) # array[integer] |  (Optional)
var_event_team <- c("inner_example") # array[character] |  (Optional)
var_period <- c(123) # array[integer] |  (Optional)
var_include <- c("game") # array[character] |  (Optional)

api_instance <- ChangesApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadChanges(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, event_team = var_event_team, period = var_period, include = var_includedata_file = "result.txt")
result <- api_instance$ReadChanges(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, event_team = var_event_team, period = var_period, include = var_include)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R, P] |  | [optional] 
 **game_id** | list( **integer** )|  | [optional] 
 **event_team** | list( **character** )|  | [optional] 
 **period** | list( **integer** )|  | [optional] 
 **include** | Enum [game] |  | [optional] 

### Return type

[**ChangesResponse**](ChangesResponse.md)

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

# **ReadChangesGameIds**
> array[integer] ReadChangesGameIds(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions)

Read Changes Game Ids

### Example
```R
library(chickenstats.api)

# Read Changes Game Ids
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)

api_instance <- ChangesApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadChangesGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessionsdata_file = "result.txt")
result <- api_instance$ReadChangesGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R, P] |  | [optional] 

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
| **422** | Validation Error |  -  |

