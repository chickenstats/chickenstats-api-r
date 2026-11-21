# StandingsApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadStandings**](StandingsApi.md#ReadStandings) | **GET** /api/v1/chicken_nhl/standings | Standings


# **ReadStandings**
> StandingsResponse ReadStandings(season = var.season, team = var.team)

Standings

### Example
```R
library(chickenstats.api)

# Standings
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

