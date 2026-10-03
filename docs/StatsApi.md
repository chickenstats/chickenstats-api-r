# StatsApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadGameStats**](StatsApi.md#ReadGameStats) | **GET** /api/v1/chicken_nhl/stats/game | Read Game Stats
[**ReadSeasonStats**](StatsApi.md#ReadSeasonStats) | **GET** /api/v1/chicken_nhl/stats/season | Read Season Stats
[**ReadStatsGameIds**](StatsApi.md#ReadStatsGameIds) | **GET** /api/v1/chicken_nhl/stats/game_ids | Read Stats Game Ids


# **ReadGameStats**
> StatsGameResponse ReadGameStats(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, game_id = var.game_id, level = var.level, player = var.player, api_id = var.api_id, eh_id = var.eh_id, team = var.team, opp_team = var.opp_team, strength_state = var.strength_state, score_state = var.score_state, teammates = var.teammates, opposition = var.opposition, include = var.include)

Read Game Stats

### Example
```R
library(chickenstats.api)

# Read Game Stats
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_game_id <- c(123) # array[integer] |  (Optional)
var_level <- "level_example" # character |  (Optional)
var_player <- c("inner_example") # array[character] |  (Optional)
var_api_id <- c(123) # array[integer] |  (Optional)
var_eh_id <- c("inner_example") # array[character] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_opp_team <- c("inner_example") # array[character] |  (Optional)
var_strength_state <- c("5v5") # array[character] |  (Optional)
var_score_state <- "score_state_example" # character |  (Optional)
var_teammates <- "teammates_example" # character |  (Optional)
var_opposition <- "opposition_example" # character |  (Optional)
var_include <- c("player") # array[character] |  (Optional)

api_instance <- StatsApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadGameStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, level = var_level, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, teammates = var_teammates, opposition = var_opposition, include = var_includedata_file = "result.txt")
result <- api_instance$ReadGameStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, level = var_level, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, teammates = var_teammates, opposition = var_opposition, include = var_include)
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
 **level** | Enum [game, period] |  | [optional] 
 **player** | list( **character** )|  | [optional] 
 **api_id** | list( **integer** )|  | [optional] 
 **eh_id** | list( **character** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **opp_team** | list( **character** )|  | [optional] 
 **strength_state** | Enum [5v5, 4v4, 3v3, 5v4, 5v3, 4v3, 4v5, 3v4, 3v5] |  | [optional] 
 **score_state** | **character**|  | [optional] 
 **teammates** | **character**|  | [optional] 
 **opposition** | **character**|  | [optional] 
 **include** | Enum [player, game] |  | [optional] 

### Return type

[**StatsGameResponse**](StatsGameResponse.md)

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

# **ReadSeasonStats**
> StatsSeasonResponse ReadSeasonStats(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, player = var.player, api_id = var.api_id, eh_id = var.eh_id, team = var.team, opp_team = var.opp_team, strength_state = var.strength_state, score_state = var.score_state, teammates = var.teammates, opposition = var.opposition, include = var.include)

Read Season Stats

### Example
```R
library(chickenstats.api)

# Read Season Stats
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)
var_player <- c("inner_example") # array[character] |  (Optional)
var_api_id <- c(123) # array[integer] |  (Optional)
var_eh_id <- c("inner_example") # array[character] |  (Optional)
var_team <- c("inner_example") # array[character] |  (Optional)
var_opp_team <- c("inner_example") # array[character] |  (Optional)
var_strength_state <- c("5v5") # array[character] |  (Optional)
var_score_state <- "score_state_example" # character |  (Optional)
var_teammates <- "teammates_example" # character |  (Optional)
var_opposition <- "opposition_example" # character |  (Optional)
var_include <- c("player") # array[character] |  (Optional)

api_instance <- StatsApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadSeasonStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, teammates = var_teammates, opposition = var_opposition, include = var_includedata_file = "result.txt")
result <- api_instance$ReadSeasonStats(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, player = var_player, api_id = var_api_id, eh_id = var_eh_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, teammates = var_teammates, opposition = var_opposition, include = var_include)
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
 **player** | list( **character** )|  | [optional] 
 **api_id** | list( **integer** )|  | [optional] 
 **eh_id** | list( **character** )|  | [optional] 
 **team** | list( **character** )|  | [optional] 
 **opp_team** | list( **character** )|  | [optional] 
 **strength_state** | Enum [5v5, 4v4, 3v3, 5v4, 5v3, 4v3, 4v5, 3v4, 3v5] |  | [optional] 
 **score_state** | **character**|  | [optional] 
 **teammates** | **character**|  | [optional] 
 **opposition** | **character**|  | [optional] 
 **include** | Enum [player] |  | [optional] 

### Return type

[**StatsSeasonResponse**](StatsSeasonResponse.md)

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

# **ReadStatsGameIds**
> array[integer] ReadStatsGameIds(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions)

Read Stats Game Ids

### Example
```R
library(chickenstats.api)

# Read Stats Game Ids
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)

api_instance <- StatsApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadStatsGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessionsdata_file = "result.txt")
result <- api_instance$ReadStatsGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions)
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

