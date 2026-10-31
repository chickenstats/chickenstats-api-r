# LiveApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadLiveGames**](LiveApi.md#ReadLiveGames) | **GET** /api/v1/live/games | Read Live Games
[**ReadLivePbp**](LiveApi.md#ReadLivePbp) | **GET** /api/v1/live/play_by_play | Read Live Pbp


# **ReadLiveGames**
> array[LiveGamesPublic] ReadLiveGames(since = var.since)

Read Live Games

### Example
```R
library(chickenstats.api)

# Read Live Games
#
# prepare function argument(s)
var_since <- "since_example" # character |  (Optional)

api_instance <- LiveApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadLiveGames(since = var_sincedata_file = "result.txt")
result <- api_instance$ReadLiveGames(since = var_since)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **character**|  | [optional] 

### Return type

[**array[LiveGamesPublic]**](LiveGamesPublic.md)

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

# **ReadLivePbp**
> LivePbpResponse ReadLivePbp(game_id = var.game_id, limit = var.limit, offset = 0, with_total = FALSE, since = var.since)

Read Live Pbp

### Example
```R
library(chickenstats.api)

# Read Live Pbp
#
# prepare function argument(s)
var_game_id <- c(123) # array[integer] |  (Optional)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- FALSE # character |  (Optional)
var_since <- "since_example" # character |  (Optional)

api_instance <- LiveApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadLivePbp(game_id = var_game_id, limit = var_limit, offset = var_offset, with_total = var_with_total, since = var_sincedata_file = "result.txt")
result <- api_instance$ReadLivePbp(game_id = var_game_id, limit = var_limit, offset = var_offset, with_total = var_with_total, since = var_since)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **game_id** | list( **integer** )|  | [optional] 
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**|  | [optional] [default to 0]
 **with_total** | **character**|  | [optional] [default to FALSE]
 **since** | **character**|  | [optional] 

### Return type

[**LivePbpResponse**](LivePbpResponse.md)

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

