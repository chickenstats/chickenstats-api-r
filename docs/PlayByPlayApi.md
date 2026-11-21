# PlayByPlayApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadPbp**](PlayByPlayApi.md#ReadPbp) | **GET** /api/v1/chicken_nhl/play_by_play | Play-by-play
[**ReadPbpGameIds**](PlayByPlayApi.md#ReadPbpGameIds) | **GET** /api/v1/chicken_nhl/play_by_play/game_ids | Game IDs with play-by-play
[**ReadPbpPlayIds**](PlayByPlayApi.md#ReadPbpPlayIds) | **GET** /api/v1/chicken_nhl/play_by_play/play_ids | Play IDs


# **ReadPbp**
> PbpResponse ReadPbp(limit = var.limit, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, game_id = var.game_id, play_id = var.play_id, event = var.event, player_1 = var.player_1, goalie = var.goalie, event_team = var.event_team, opp_team = var.opp_team, strength_state = var.strength_state, include = var.include, after = var.after)

Play-by-play

### Example
```R
library(chickenstats.api)

# Play-by-play
#
# prepare function argument(s)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer | Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_game_id <- c(123) # array[integer] |  (Optional)
var_play_id <- c(123) # array[integer] |  (Optional)
var_event <- c("inner_example") # array[character] |  (Optional)
var_player_1 <- c("inner_example") # array[character] |  (Optional)
var_goalie <- c("inner_example") # array[character] |  (Optional)
var_event_team <- c("inner_example") # array[character] |  (Optional)
var_opp_team <- c("inner_example") # array[character] |  (Optional)
var_strength_state <- c("5v5") # array[character] |  (Optional)
var_include <- c("player") # array[character] |  (Optional)
var_after <- "after_example" # character | Cursor from the previous page's `next_cursor`. Reads the rows after it, in the same order, at the cost of one page however deep it is: use it instead of a large `offset`. Not combined with `offset`; `total` is -1 on a cursor page. (Optional)

api_instance <- PlayByPlayApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadPbp(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, play_id = var_play_id, event = var_event, player_1 = var_player_1, goalie = var_goalie, event_team = var_event_team, opp_team = var_opp_team, strength_state = var_strength_state, include = var_include, after = var_afterdata_file = "result.txt")
result <- api_instance$ReadPbp(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, play_id = var_play_id, event = var_event, player_1 = var_player_1, goalie = var_goalie, event_team = var_event_team, opp_team = var_opp_team, strength_state = var_strength_state, include = var_include, after = var_after)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**| Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R, P] |  | [optional] 
 **game_id** | list( **integer** )|  | [optional] 
 **play_id** | list( **integer** )|  | [optional] 
 **event** | list( **character** )|  | [optional] 
 **player_1** | list( **character** )|  | [optional] 
 **goalie** | list( **character** )|  | [optional] 
 **event_team** | list( **character** )|  | [optional] 
 **opp_team** | list( **character** )|  | [optional] 
 **strength_state** | Enum [5v5, 4v4, 3v3, 5v4, 5v3, 4v3, 4v5, 3v4, 3v5] |  | [optional] 
 **include** | Enum [player, game] |  | [optional] 
 **after** | **character**| Cursor from the previous page&#39;s &#x60;next_cursor&#x60;. Reads the rows after it, in the same order, at the cost of one page however deep it is: use it instead of a large &#x60;offset&#x60;. Not combined with &#x60;offset&#x60;; &#x60;total&#x60; is -1 on a cursor page. | [optional] 

### Return type

[**PbpResponse**](PbpResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **ReadPbpGameIds**
> array[integer] ReadPbpGameIds(limit = var.limit, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions)

Game IDs with play-by-play

### Example
```R
library(chickenstats.api)

# Game IDs with play-by-play
#
# prepare function argument(s)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer | Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)

api_instance <- PlayByPlayApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadPbpGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessionsdata_file = "result.txt")
result <- api_instance$ReadPbpGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**| Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. | [optional] [default to 0]
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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

# **ReadPbpPlayIds**
> array[integer] ReadPbpPlayIds(limit = var.limit, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, game_id = var.game_id)

Play IDs

### Example
```R
library(chickenstats.api)

# Play IDs
#
# prepare function argument(s)
var_limit <- 56 # integer | Rows per page. When omitted, 10,000 or your tier's maximum, whichever is smaller; the response's `limit` says which. A value over your tier's maximum is refused with a 400. (Optional)
var_offset <- 0 # integer | Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_game_id <- c(123) # array[integer] |  (Optional)

api_instance <- PlayByPlayApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadPbpPlayIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_iddata_file = "result.txt")
result <- api_instance$ReadPbpPlayIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Rows per page. When omitted, 10,000 or your tier&#39;s maximum, whichever is smaller; the response&#39;s &#x60;limit&#x60; says which. A value over your tier&#39;s maximum is refused with a 400. | [optional] 
 **offset** | **integer**| Rows to skip. At most 10,000,000; past that, narrow the query with a filter such as season or game_id. | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R, P] |  | [optional] 
 **game_id** | list( **integer** )|  | [optional] 

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
| **401** | No token, or an expired or revoked one: error_description is token_expired (refresh), token_revoked (sign in again), recent_sign_in_required (sign in again for this change), or named_token_expired or named_token_revoked (make a new API token). |  -  |
| **422** | Validation Error |  -  |

