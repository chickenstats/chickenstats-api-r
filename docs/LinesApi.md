# LinesApi

All URIs are relative to *https://api.chickenstats.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReadGameLines**](LinesApi.md#ReadGameLines) | **GET** /api/v1/chicken_nhl/lines/game | Read Game Lines
[**ReadLinesGameIds**](LinesApi.md#ReadLinesGameIds) | **GET** /api/v1/chicken_nhl/lines/game_ids | Read Lines Game Ids
[**ReadSeasonLines**](LinesApi.md#ReadSeasonLines) | **GET** /api/v1/chicken_nhl/lines/season | Read Season Lines


# **ReadGameLines**
> LinesGameResponse ReadGameLines(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, game_id = var.game_id, team = var.team, opp_team = var.opp_team, strength_state = var.strength_state, score_state = var.score_state, level = var.level, linemates = var.linemates, opposition = var.opposition, include = var.include)

Read Game Lines

### Example
```R
library(chickenstats.api)

# Read Game Lines
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
var_linemates <- "linemates_example" # character |  (Optional)
var_opposition <- "opposition_example" # character |  (Optional)
var_include <- c("game") # array[character] |  (Optional)

api_instance <- LinesApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadGameLines(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, level = var_level, linemates = var_linemates, opposition = var_opposition, include = var_includedata_file = "result.txt")
result <- api_instance$ReadGameLines(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, game_id = var_game_id, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, level = var_level, linemates = var_linemates, opposition = var_opposition, include = var_include)
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
 **linemates** | **character**|  | [optional] 
 **opposition** | **character**|  | [optional] 
 **include** | Enum [game] |  | [optional] 

### Return type

[**LinesGameResponse**](LinesGameResponse.md)

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

# **ReadLinesGameIds**
> array[integer] ReadLinesGameIds(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions)

Read Lines Game Ids

### Example
```R
library(chickenstats.api)

# Read Lines Game Ids
#
# prepare function argument(s)
var_limit <- 10000 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_with_total <- TRUE # character | Include the exact total row count. Set false on broad queries: the count scans every matching row, which on a season-wide filter costs far more than the page itself. `total` is then -1 and `has_next` still works. (Optional)
var_season <- c(123) # array[integer] |  (Optional)
var_sessions <- c("R") # array[character] |  (Optional)

api_instance <- LinesApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadLinesGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessionsdata_file = "result.txt")
result <- api_instance$ReadLinesGameIds(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions)
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

# **ReadSeasonLines**
> LinesSeasonResponse ReadSeasonLines(limit = 10000, offset = 0, with_total = TRUE, season = var.season, sessions = var.sessions, team = var.team, opp_team = var.opp_team, strength_state = var.strength_state, score_state = var.score_state, linemates = var.linemates, opposition = var.opposition)

Read Season Lines

### Example
```R
library(chickenstats.api)

# Read Season Lines
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
var_linemates <- "linemates_example" # character |  (Optional)
var_opposition <- "opposition_example" # character |  (Optional)

api_instance <- LinesApi$new()
# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReadSeasonLines(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, linemates = var_linemates, opposition = var_oppositiondata_file = "result.txt")
result <- api_instance$ReadSeasonLines(limit = var_limit, offset = var_offset, with_total = var_with_total, season = var_season, sessions = var_sessions, team = var_team, opp_team = var_opp_team, strength_state = var_strength_state, score_state = var_score_state, linemates = var_linemates, opposition = var_opposition)
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
 **linemates** | **character**|  | [optional] 
 **opposition** | **character**|  | [optional] 

### Return type

[**LinesSeasonResponse**](LinesSeasonResponse.md)

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

