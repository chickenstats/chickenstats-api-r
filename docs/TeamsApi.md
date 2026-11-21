# TeamsApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadTeams**](TeamsApi.md#ReadTeams) | **GET** /api/v1/chicken_nhl/teams | Teams


# **ReadTeams**
> TeamResponse ReadTeams()

Teams

### Example
```R
library(chickenstats.api)

# Teams
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |

