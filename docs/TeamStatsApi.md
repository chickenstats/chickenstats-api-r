# TeamStatsApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadGameTeamStats**](TeamStatsApi.md#ReadGameTeamStats) | **GET** /api/v1/chicken_nhl/team_stats/game | Read Game Team Stats
[**ReadSeasonTeamStats**](TeamStatsApi.md#ReadSeasonTeamStats) | **GET** /api/v1/chicken_nhl/team_stats/season | Read Season Team Stats
[**ReadTeamStatsGameIds**](TeamStatsApi.md#ReadTeamStatsGameIds) | **GET** /api/v1/chicken_nhl/team_stats/game_ids | Read Team Stats Game Ids


# **ReadGameTeamStats**
> TeamStatsGameResponse ReadGameTeamStats(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, game_id = var.game_id, team = var.team, opp_team = var.opp_team, strength_state = var.strength_state, score_state = var.score_state, level = var.level, include = var.include)

Read Game Team Stats

### Example
```R
library(chickenstats.api)

# Read Game Team Stats
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_game_id <- c(123) # array[integer] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_opp_team <- c("inner_example") # array[character] |  (Optional)
var_strength_state <- c("5v5") # array[character] |  (Optional)
var_score_state <- "score_state_example" # character |  (Optional)
var_level <- "level_example" # character |  (Optional)
var_include <- c("game") # array[character] |  (Optional)

api_instance <- TeamStatsApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadGameTeamStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, level = var_level, include = var_includedata_file = "result.txt")
result <- api_instance$ReadGameTeamStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, level = var_level, include = var_include)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R, P] |  | [optional] 
 **game_id** | list( **integer** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **opp_team** | list( **character** )|  | [optional] 
 **strength_state** | Enum [5v5, 4v4, 3v3, 5v4, 5v3, 4v3, 4v5, 3v4, 3v5] |  | [optional] 
 **score_state** | **character**|  | [optional] 
 **level** | Enum [game, period] |  | [optional] 
 **include** | Enum [game] |  | [optional] 

### Return type

[**TeamStatsGameResponse**](TeamStatsGameResponse.md)

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

# **ReadSeasonTeamStats**
> TeamStatsSeasonResponse ReadSeasonTeamStats(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, team = var.team, opp_team = var.opp_team, strength_state = var.strength_state, score_state = var.score_state)

Read Season Team Stats

### Example
```R
library(chickenstats.api)

# Read Season Team Stats
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_opp_team <- c("inner_example") # array[character] |  (Optional)
var_strength_state <- c("5v5") # array[character] |  (Optional)
var_score_state <- "score_state_example" # character |  (Optional)

api_instance <- TeamStatsApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadSeasonTeamStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_statedata_file = "result.txt")
result <- api_instance$ReadSeasonTeamStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]
 **with_total** | **character**| Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. &#x60;total&#x60; is then -1 and &#x60;has_next&#x60; still works. | [optional] [default to TRUE]
 **season** | list( **integer** )|  | [optional] 
 **sessions** | Enum [R, P] |  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **opp_team** | list( **character** )|  | [optional] 
 **strength_state** | Enum [5v5, 4v4, 3v3, 5v4, 5v3, 4v3, 4v5, 3v4, 3v5] |  | [optional] 
 **score_state** | **character**|  | [optional] 

### Return type

[**TeamStatsSeasonResponse**](TeamStatsSeasonResponse.md)

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

# **ReadTeamStatsGameIds**
> array[integer] ReadTeamStatsGameIds(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions)

Read Team Stats Game Ids

### Example
```R
library(chickenstats.api)

# Read Team Stats Game Ids
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)

api_instance <- TeamStatsApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadTeamStatsGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessionsdata_file = "result.txt")
result <- api_instance$ReadTeamStatsGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**|  | [optional] [default to 10000]
 **offset** | **integer**|  | [optional] [default to 0]
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
| **422** | Validation Error |  -  |

