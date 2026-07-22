# TeamsApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadTeams**](TeamsApi.md#ReadTeams) | **GET** /api/v1/chicken_nhl/teams | Read Teams


# **ReadTeams**
> TeamResponse ReadTeams()

Read Teams

### Example
```R
library(chickenstats.api)

# Read Teams
#

api_instance <- TeamsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadTeams(data_file = "result.txt")
result <- api_instance$ReadTeams()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

