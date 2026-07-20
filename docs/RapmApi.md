# RapmApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadRapm**](RapmApi.md#ReadRapm) | **GET** /api/v1/chicken_nhl/rapm | Read Rapm


# **ReadRapm**
> RapmResponse ReadRapm(season = var.season, sessions = var.sessions, situation = var.situation, player = var.player, api_id = var.api_id, eh_id = var.eh_id, team = var.team, pos = var.pos, limit = 10000, offset = 0)

Read Rapm

### Example
```R
library(chickenstats.api)

# Read Rapm
#
# prepare function argument(s)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_situation <- c("5v5") # array[character] |  (Optional)
var_player <- c("inner_example") # array[character] |  (Optional)
var_api_id <- c(123) # array[integer] |  (Optional)
var_eh_id <- c("inner_example") # array[character] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_pos <- c("F") # array[character] |  (Optional)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)

api_instance <- RapmApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadRapm(season = var_season, sessions = var_sessions, situation = var_situation, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, pos = var_pos, limit = var_limit, offset = var_offsetdata_file = "result.txt")
result <- api_instance$ReadRapm(season = var_season, sessions = var_sessions, situation = var_situation, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, pos = var_pos, limit = var_limit, offset = var_offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R] |  | [optional] 
 **situation** | Enum [5v5, PP, PK] |  | [optional] 
 **player** | list( **character** )|  | [optional] 
 **api_id** | list( **integer** )|  | [optional] 
 **eh_id** | list( **character** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **pos** | Enum [F, D] |  | [optional] 
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]

### Return type

[**RapmResponse**](RapmResponse.md)

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

