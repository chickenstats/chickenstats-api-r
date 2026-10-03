# RapmApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadRapm**](RapmApi.md#ReadRapm) | **GET** /api/v1/chicken_nhl/rapm | Read Rapm


# **ReadRapm**
> RapmResponse ReadRapm(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, situation = var.situation, player = var.player, api_id = var.api_id, eh_id = var.eh_id, team = var.team, pos = var.pos)

Read Rapm

### Example
```R
library(chickenstats.api)

# Read Rapm
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_situation <- c("5v5") # array[character] |  (Optional)
var_player <- c("inner_example") # array[character] |  (Optional)
var_api_id <- c(123) # array[integer] |  (Optional)
var_eh_id <- c("inner_example") # array[character] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_pos <- c("F") # array[character] |  (Optional)

api_instance <- RapmApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadRapm(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, situation = var_situation, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, pos = var_posdata_file = "result.txt")
result <- api_instance$ReadRapm(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, situation = var_situation, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, pos = var_pos)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R] |  | [optional] 
 **situation** | Enum [5v5, PP, PK] |  | [optional] 
 **player** | list( **character** )|  | [optional] 
 **api_id** | list( **integer** )|  | [optional] 
 **eh_id** | list( **character** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **pos** | Enum [F, D] |  | [optional] 

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

