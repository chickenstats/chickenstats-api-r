# PlayersApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadPlayer**](PlayersApi.md#ReadPlayer) | **GET** /api/v1/chicken_nhl/players/{api_id} | Read Player
[**ReadPlayers**](PlayersApi.md#ReadPlayers) | **GET** /api/v1/chicken_nhl/players | Read Players


# **ReadPlayer**
> PlayerPublic ReadPlayer(api_id)

Read Player

### Example
```R
library(chickenstats.api)

# Read Player
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
| **422** | Validation Error |  -  |

# **ReadPlayers**
> PlayerResponse ReadPlayers(limit = 10000, offset = 0, with_total = TRUE, name = var.name, eh_id = var.eh_id, api_id = var.api_id)

Read Players

### Example
```R
library(chickenstats.api)

# Read Players
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
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
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]
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
| **422** | Validation Error |  -  |

