# StandingsApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadStandings**](StandingsApi.md#ReadStandings) | **GET** /api/v1/chicken_nhl/standings | Read Standings


# **ReadStandings**
> StandingsResponse ReadStandings(season = var.season, team = var.team)

Read Standings

### Example
```R
library(chickenstats.api)

# Read Standings
#
# prepare function argument(s)
var_season <- c(123) # array[integer] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)

api_instance <- StandingsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadStandings(season = var_season, team = var_teamdata_file = "result.txt")
result <- api_instance$ReadStandings(season = var_season, team = var_team)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **season** | list( **integer** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 

### Return type

[**StandingsResponse**](StandingsResponse.md)

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

