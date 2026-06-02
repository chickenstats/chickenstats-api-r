# RapmApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadRapm**](RapmApi.md#ReadRapm) | **GET** /api/v1/chicken_nhl/rapm | Read Rapm


# **ReadRapm**
> RapmResponse ReadRapm(season = var.season, sessions = var.sessions, api_id = var.api_id, name = var.name, team = var.team, situation = var.situation, limit = 10000, offset = 0)

Read Rapm

### Example
```R
library(chickenstats.api)

# Read Rapm
#
# prepare function argument(s)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_api_id <- c(123) # array[integer] |  (Optional)
var_name <- c("inner_example") # array[character] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_situation <- c("EV") # array[character] |  (Optional)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)

api_instance <- RapmApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadRapm(season = var_season, sessions = var_sessions, api_id = var_api_id, name = var_name, team = var_team, situation = var_situation, limit = var_limit, offset = var_offsetdata_file = "result.txt")
result <- api_instance$ReadRapm(season = var_season, sessions = var_sessions, api_id = var_api_id, name = var_name, team = var_team, situation = var_situation, limit = var_limit, offset = var_offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R, P] |  | [optional] 
 **api_id** | list( **integer** )|  | [optional] 
 **name** | list( **character** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **situation** | Enum [EV, PP, SH] |  | [optional] 
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]

### Return type

[**RapmResponse**](RapmResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

