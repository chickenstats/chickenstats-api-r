#' Create a new ChangesPublic
#'
#' @description
#' ChangesPublic Class
#'
#' @docType class
#' @title ChangesPublic
#' @description ChangesPublic Class
#' @format An \code{R6Class} generator object
#' @field season  integer
#' @field session  character
#' @field game_id  integer
#' @field event_team  character
#' @field event  character [optional]
#' @field event_type  character [optional]
#' @field description  character [optional]
#' @field period  integer
#' @field period_seconds  integer
#' @field game_seconds  integer
#' @field change_on_count  integer [optional]
#' @field change_off_count  integer [optional]
#' @field change_on_api_id  character [optional]
#' @field change_off_api_id  character [optional]
#' @field change_on_forwards_count  integer [optional]
#' @field change_off_forwards_count  integer [optional]
#' @field change_on_forwards_api_id  character [optional]
#' @field change_off_forwards_api_id  character [optional]
#' @field change_on_defense_count  integer [optional]
#' @field change_off_defense_count  integer [optional]
#' @field change_on_defense_api_id  character [optional]
#' @field change_off_defense_api_id  character [optional]
#' @field change_on_goalie_count  integer [optional]
#' @field change_off_goalie_count  integer [optional]
#' @field change_on_goalie_api_id  character [optional]
#' @field change_off_goalie_api_id  character [optional]
#' @field is_home  integer
#' @field game  \link{GamePublic} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChangesPublic <- R6::R6Class(
  "ChangesPublic",
  public = list(
    `season` = NULL,
    `session` = NULL,
    `game_id` = NULL,
    `event_team` = NULL,
    `event` = NULL,
    `event_type` = NULL,
    `description` = NULL,
    `period` = NULL,
    `period_seconds` = NULL,
    `game_seconds` = NULL,
    `change_on_count` = NULL,
    `change_off_count` = NULL,
    `change_on_api_id` = NULL,
    `change_off_api_id` = NULL,
    `change_on_forwards_count` = NULL,
    `change_off_forwards_count` = NULL,
    `change_on_forwards_api_id` = NULL,
    `change_off_forwards_api_id` = NULL,
    `change_on_defense_count` = NULL,
    `change_off_defense_count` = NULL,
    `change_on_defense_api_id` = NULL,
    `change_off_defense_api_id` = NULL,
    `change_on_goalie_count` = NULL,
    `change_off_goalie_count` = NULL,
    `change_on_goalie_api_id` = NULL,
    `change_off_goalie_api_id` = NULL,
    `is_home` = NULL,
    `game` = NULL,

    #' @description
    #' Initialize a new ChangesPublic class.
    #'
    #' @param season season
    #' @param session session
    #' @param game_id game_id
    #' @param event_team event_team
    #' @param period period
    #' @param period_seconds period_seconds
    #' @param game_seconds game_seconds
    #' @param is_home is_home
    #' @param event event
    #' @param event_type event_type
    #' @param description description
    #' @param change_on_count change_on_count
    #' @param change_off_count change_off_count
    #' @param change_on_api_id change_on_api_id
    #' @param change_off_api_id change_off_api_id
    #' @param change_on_forwards_count change_on_forwards_count
    #' @param change_off_forwards_count change_off_forwards_count
    #' @param change_on_forwards_api_id change_on_forwards_api_id
    #' @param change_off_forwards_api_id change_off_forwards_api_id
    #' @param change_on_defense_count change_on_defense_count
    #' @param change_off_defense_count change_off_defense_count
    #' @param change_on_defense_api_id change_on_defense_api_id
    #' @param change_off_defense_api_id change_off_defense_api_id
    #' @param change_on_goalie_count change_on_goalie_count
    #' @param change_off_goalie_count change_off_goalie_count
    #' @param change_on_goalie_api_id change_on_goalie_api_id
    #' @param change_off_goalie_api_id change_off_goalie_api_id
    #' @param game game
    #' @param ... Other optional arguments.
    initialize = function(`season`, `session`, `game_id`, `event_team`, `period`, `period_seconds`, `game_seconds`, `is_home`, `event` = NULL, `event_type` = NULL, `description` = NULL, `change_on_count` = NULL, `change_off_count` = NULL, `change_on_api_id` = NULL, `change_off_api_id` = NULL, `change_on_forwards_count` = NULL, `change_off_forwards_count` = NULL, `change_on_forwards_api_id` = NULL, `change_off_forwards_api_id` = NULL, `change_on_defense_count` = NULL, `change_off_defense_count` = NULL, `change_on_defense_api_id` = NULL, `change_off_defense_api_id` = NULL, `change_on_goalie_count` = NULL, `change_off_goalie_count` = NULL, `change_on_goalie_api_id` = NULL, `change_off_goalie_api_id` = NULL, `game` = NULL, ...) {
      if (!missing(`season`)) {
        if (!(is.numeric(`season`) && length(`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", `season`))
        }
        self$`season` <- `season`
      }
      if (!missing(`session`)) {
        if (!(is.character(`session`) && length(`session`) == 1)) {
          stop(paste("Error! Invalid data for `session`. Must be a string:", `session`))
        }
        self$`session` <- `session`
      }
      if (!missing(`game_id`)) {
        if (!(is.numeric(`game_id`) && length(`game_id`) == 1)) {
          stop(paste("Error! Invalid data for `game_id`. Must be an integer:", `game_id`))
        }
        self$`game_id` <- `game_id`
      }
      if (!missing(`event_team`)) {
        if (!(is.character(`event_team`) && length(`event_team`) == 1)) {
          stop(paste("Error! Invalid data for `event_team`. Must be a string:", `event_team`))
        }
        self$`event_team` <- `event_team`
      }
      if (!missing(`period`)) {
        if (!(is.numeric(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`period_seconds`)) {
        if (!(is.numeric(`period_seconds`) && length(`period_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `period_seconds`. Must be an integer:", `period_seconds`))
        }
        self$`period_seconds` <- `period_seconds`
      }
      if (!missing(`game_seconds`)) {
        if (!(is.numeric(`game_seconds`) && length(`game_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `game_seconds`. Must be an integer:", `game_seconds`))
        }
        self$`game_seconds` <- `game_seconds`
      }
      if (!missing(`is_home`)) {
        if (!(is.numeric(`is_home`) && length(`is_home`) == 1)) {
          stop(paste("Error! Invalid data for `is_home`. Must be an integer:", `is_home`))
        }
        self$`is_home` <- `is_home`
      }
      if (!is.null(`event`)) {
        if (!(is.character(`event`) && length(`event`) == 1)) {
          stop(paste("Error! Invalid data for `event`. Must be a string:", `event`))
        }
        self$`event` <- `event`
      }
      if (!is.null(`event_type`)) {
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`change_on_count`)) {
        if (!(is.numeric(`change_on_count`) && length(`change_on_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_count`. Must be an integer:", `change_on_count`))
        }
        self$`change_on_count` <- `change_on_count`
      }
      if (!is.null(`change_off_count`)) {
        if (!(is.numeric(`change_off_count`) && length(`change_off_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_count`. Must be an integer:", `change_off_count`))
        }
        self$`change_off_count` <- `change_off_count`
      }
      if (!is.null(`change_on_api_id`)) {
        if (!(is.character(`change_on_api_id`) && length(`change_on_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_api_id`. Must be a string:", `change_on_api_id`))
        }
        self$`change_on_api_id` <- `change_on_api_id`
      }
      if (!is.null(`change_off_api_id`)) {
        if (!(is.character(`change_off_api_id`) && length(`change_off_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_api_id`. Must be a string:", `change_off_api_id`))
        }
        self$`change_off_api_id` <- `change_off_api_id`
      }
      if (!is.null(`change_on_forwards_count`)) {
        if (!(is.numeric(`change_on_forwards_count`) && length(`change_on_forwards_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_forwards_count`. Must be an integer:", `change_on_forwards_count`))
        }
        self$`change_on_forwards_count` <- `change_on_forwards_count`
      }
      if (!is.null(`change_off_forwards_count`)) {
        if (!(is.numeric(`change_off_forwards_count`) && length(`change_off_forwards_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_forwards_count`. Must be an integer:", `change_off_forwards_count`))
        }
        self$`change_off_forwards_count` <- `change_off_forwards_count`
      }
      if (!is.null(`change_on_forwards_api_id`)) {
        if (!(is.character(`change_on_forwards_api_id`) && length(`change_on_forwards_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_forwards_api_id`. Must be a string:", `change_on_forwards_api_id`))
        }
        self$`change_on_forwards_api_id` <- `change_on_forwards_api_id`
      }
      if (!is.null(`change_off_forwards_api_id`)) {
        if (!(is.character(`change_off_forwards_api_id`) && length(`change_off_forwards_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_forwards_api_id`. Must be a string:", `change_off_forwards_api_id`))
        }
        self$`change_off_forwards_api_id` <- `change_off_forwards_api_id`
      }
      if (!is.null(`change_on_defense_count`)) {
        if (!(is.numeric(`change_on_defense_count`) && length(`change_on_defense_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_defense_count`. Must be an integer:", `change_on_defense_count`))
        }
        self$`change_on_defense_count` <- `change_on_defense_count`
      }
      if (!is.null(`change_off_defense_count`)) {
        if (!(is.numeric(`change_off_defense_count`) && length(`change_off_defense_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_defense_count`. Must be an integer:", `change_off_defense_count`))
        }
        self$`change_off_defense_count` <- `change_off_defense_count`
      }
      if (!is.null(`change_on_defense_api_id`)) {
        if (!(is.character(`change_on_defense_api_id`) && length(`change_on_defense_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_defense_api_id`. Must be a string:", `change_on_defense_api_id`))
        }
        self$`change_on_defense_api_id` <- `change_on_defense_api_id`
      }
      if (!is.null(`change_off_defense_api_id`)) {
        if (!(is.character(`change_off_defense_api_id`) && length(`change_off_defense_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_defense_api_id`. Must be a string:", `change_off_defense_api_id`))
        }
        self$`change_off_defense_api_id` <- `change_off_defense_api_id`
      }
      if (!is.null(`change_on_goalie_count`)) {
        if (!(is.numeric(`change_on_goalie_count`) && length(`change_on_goalie_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_goalie_count`. Must be an integer:", `change_on_goalie_count`))
        }
        self$`change_on_goalie_count` <- `change_on_goalie_count`
      }
      if (!is.null(`change_off_goalie_count`)) {
        if (!(is.numeric(`change_off_goalie_count`) && length(`change_off_goalie_count`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_goalie_count`. Must be an integer:", `change_off_goalie_count`))
        }
        self$`change_off_goalie_count` <- `change_off_goalie_count`
      }
      if (!is.null(`change_on_goalie_api_id`)) {
        if (!(is.character(`change_on_goalie_api_id`) && length(`change_on_goalie_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_on_goalie_api_id`. Must be a string:", `change_on_goalie_api_id`))
        }
        self$`change_on_goalie_api_id` <- `change_on_goalie_api_id`
      }
      if (!is.null(`change_off_goalie_api_id`)) {
        if (!(is.character(`change_off_goalie_api_id`) && length(`change_off_goalie_api_id`) == 1)) {
          stop(paste("Error! Invalid data for `change_off_goalie_api_id`. Must be a string:", `change_off_goalie_api_id`))
        }
        self$`change_off_goalie_api_id` <- `change_off_goalie_api_id`
      }
      if (!is.null(`game`)) {
        stopifnot(R6::is.R6(`game`))
        self$`game` <- `game`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return ChangesPublic as a base R list.
    #' @examples
    #' # convert array of ChangesPublic (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert ChangesPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ChangesPublicObject <- list()
      if (!is.null(self$`season`)) {
        ChangesPublicObject[["season"]] <-
          self$`season`
      }
      if (!is.null(self$`session`)) {
        ChangesPublicObject[["session"]] <-
          self$`session`
      }
      if (!is.null(self$`game_id`)) {
        ChangesPublicObject[["game_id"]] <-
          self$`game_id`
      }
      if (!is.null(self$`event_team`)) {
        ChangesPublicObject[["event_team"]] <-
          self$`event_team`
      }
      if (!is.null(self$`event`)) {
        ChangesPublicObject[["event"]] <-
          self$`event`
      }
      if (!is.null(self$`event_type`)) {
        ChangesPublicObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`description`)) {
        ChangesPublicObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`period`)) {
        ChangesPublicObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`period_seconds`)) {
        ChangesPublicObject[["period_seconds"]] <-
          self$`period_seconds`
      }
      if (!is.null(self$`game_seconds`)) {
        ChangesPublicObject[["game_seconds"]] <-
          self$`game_seconds`
      }
      if (!is.null(self$`change_on_count`)) {
        ChangesPublicObject[["change_on_count"]] <-
          self$`change_on_count`
      }
      if (!is.null(self$`change_off_count`)) {
        ChangesPublicObject[["change_off_count"]] <-
          self$`change_off_count`
      }
      if (!is.null(self$`change_on_api_id`)) {
        ChangesPublicObject[["change_on_api_id"]] <-
          self$`change_on_api_id`
      }
      if (!is.null(self$`change_off_api_id`)) {
        ChangesPublicObject[["change_off_api_id"]] <-
          self$`change_off_api_id`
      }
      if (!is.null(self$`change_on_forwards_count`)) {
        ChangesPublicObject[["change_on_forwards_count"]] <-
          self$`change_on_forwards_count`
      }
      if (!is.null(self$`change_off_forwards_count`)) {
        ChangesPublicObject[["change_off_forwards_count"]] <-
          self$`change_off_forwards_count`
      }
      if (!is.null(self$`change_on_forwards_api_id`)) {
        ChangesPublicObject[["change_on_forwards_api_id"]] <-
          self$`change_on_forwards_api_id`
      }
      if (!is.null(self$`change_off_forwards_api_id`)) {
        ChangesPublicObject[["change_off_forwards_api_id"]] <-
          self$`change_off_forwards_api_id`
      }
      if (!is.null(self$`change_on_defense_count`)) {
        ChangesPublicObject[["change_on_defense_count"]] <-
          self$`change_on_defense_count`
      }
      if (!is.null(self$`change_off_defense_count`)) {
        ChangesPublicObject[["change_off_defense_count"]] <-
          self$`change_off_defense_count`
      }
      if (!is.null(self$`change_on_defense_api_id`)) {
        ChangesPublicObject[["change_on_defense_api_id"]] <-
          self$`change_on_defense_api_id`
      }
      if (!is.null(self$`change_off_defense_api_id`)) {
        ChangesPublicObject[["change_off_defense_api_id"]] <-
          self$`change_off_defense_api_id`
      }
      if (!is.null(self$`change_on_goalie_count`)) {
        ChangesPublicObject[["change_on_goalie_count"]] <-
          self$`change_on_goalie_count`
      }
      if (!is.null(self$`change_off_goalie_count`)) {
        ChangesPublicObject[["change_off_goalie_count"]] <-
          self$`change_off_goalie_count`
      }
      if (!is.null(self$`change_on_goalie_api_id`)) {
        ChangesPublicObject[["change_on_goalie_api_id"]] <-
          self$`change_on_goalie_api_id`
      }
      if (!is.null(self$`change_off_goalie_api_id`)) {
        ChangesPublicObject[["change_off_goalie_api_id"]] <-
          self$`change_off_goalie_api_id`
      }
      if (!is.null(self$`is_home`)) {
        ChangesPublicObject[["is_home"]] <-
          self$`is_home`
      }
      if (!is.null(self$`game`)) {
        ChangesPublicObject[["game"]] <-
          self$`game`$toSimpleType()
      }
      return(ChangesPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ChangesPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChangesPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`season`)) {
        self$`season` <- this_object$`season`
      }
      if (!is.null(this_object$`session`)) {
        self$`session` <- this_object$`session`
      }
      if (!is.null(this_object$`game_id`)) {
        self$`game_id` <- this_object$`game_id`
      }
      if (!is.null(this_object$`event_team`)) {
        self$`event_team` <- this_object$`event_team`
      }
      if (!is.null(this_object$`event`)) {
        self$`event` <- this_object$`event`
      }
      if (!is.null(this_object$`event_type`)) {
        self$`event_type` <- this_object$`event_type`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`period_seconds`)) {
        self$`period_seconds` <- this_object$`period_seconds`
      }
      if (!is.null(this_object$`game_seconds`)) {
        self$`game_seconds` <- this_object$`game_seconds`
      }
      if (!is.null(this_object$`change_on_count`)) {
        self$`change_on_count` <- this_object$`change_on_count`
      }
      if (!is.null(this_object$`change_off_count`)) {
        self$`change_off_count` <- this_object$`change_off_count`
      }
      if (!is.null(this_object$`change_on_api_id`)) {
        self$`change_on_api_id` <- this_object$`change_on_api_id`
      }
      if (!is.null(this_object$`change_off_api_id`)) {
        self$`change_off_api_id` <- this_object$`change_off_api_id`
      }
      if (!is.null(this_object$`change_on_forwards_count`)) {
        self$`change_on_forwards_count` <- this_object$`change_on_forwards_count`
      }
      if (!is.null(this_object$`change_off_forwards_count`)) {
        self$`change_off_forwards_count` <- this_object$`change_off_forwards_count`
      }
      if (!is.null(this_object$`change_on_forwards_api_id`)) {
        self$`change_on_forwards_api_id` <- this_object$`change_on_forwards_api_id`
      }
      if (!is.null(this_object$`change_off_forwards_api_id`)) {
        self$`change_off_forwards_api_id` <- this_object$`change_off_forwards_api_id`
      }
      if (!is.null(this_object$`change_on_defense_count`)) {
        self$`change_on_defense_count` <- this_object$`change_on_defense_count`
      }
      if (!is.null(this_object$`change_off_defense_count`)) {
        self$`change_off_defense_count` <- this_object$`change_off_defense_count`
      }
      if (!is.null(this_object$`change_on_defense_api_id`)) {
        self$`change_on_defense_api_id` <- this_object$`change_on_defense_api_id`
      }
      if (!is.null(this_object$`change_off_defense_api_id`)) {
        self$`change_off_defense_api_id` <- this_object$`change_off_defense_api_id`
      }
      if (!is.null(this_object$`change_on_goalie_count`)) {
        self$`change_on_goalie_count` <- this_object$`change_on_goalie_count`
      }
      if (!is.null(this_object$`change_off_goalie_count`)) {
        self$`change_off_goalie_count` <- this_object$`change_off_goalie_count`
      }
      if (!is.null(this_object$`change_on_goalie_api_id`)) {
        self$`change_on_goalie_api_id` <- this_object$`change_on_goalie_api_id`
      }
      if (!is.null(this_object$`change_off_goalie_api_id`)) {
        self$`change_off_goalie_api_id` <- this_object$`change_off_goalie_api_id`
      }
      if (!is.null(this_object$`is_home`)) {
        self$`is_home` <- this_object$`is_home`
      }
      if (!is.null(this_object$`game`)) {
        `game_object` <- GamePublic$new()
        `game_object`$fromJSON(jsonlite::toJSON(this_object$`game`, auto_unbox = TRUE, digits = NA))
        self$`game` <- `game_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ChangesPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ChangesPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChangesPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`season` <- this_object$`season`
      self$`session` <- this_object$`session`
      self$`game_id` <- this_object$`game_id`
      self$`event_team` <- this_object$`event_team`
      self$`event` <- this_object$`event`
      self$`event_type` <- this_object$`event_type`
      self$`description` <- this_object$`description`
      self$`period` <- this_object$`period`
      self$`period_seconds` <- this_object$`period_seconds`
      self$`game_seconds` <- this_object$`game_seconds`
      self$`change_on_count` <- this_object$`change_on_count`
      self$`change_off_count` <- this_object$`change_off_count`
      self$`change_on_api_id` <- this_object$`change_on_api_id`
      self$`change_off_api_id` <- this_object$`change_off_api_id`
      self$`change_on_forwards_count` <- this_object$`change_on_forwards_count`
      self$`change_off_forwards_count` <- this_object$`change_off_forwards_count`
      self$`change_on_forwards_api_id` <- this_object$`change_on_forwards_api_id`
      self$`change_off_forwards_api_id` <- this_object$`change_off_forwards_api_id`
      self$`change_on_defense_count` <- this_object$`change_on_defense_count`
      self$`change_off_defense_count` <- this_object$`change_off_defense_count`
      self$`change_on_defense_api_id` <- this_object$`change_on_defense_api_id`
      self$`change_off_defense_api_id` <- this_object$`change_off_defense_api_id`
      self$`change_on_goalie_count` <- this_object$`change_on_goalie_count`
      self$`change_off_goalie_count` <- this_object$`change_off_goalie_count`
      self$`change_on_goalie_api_id` <- this_object$`change_on_goalie_api_id`
      self$`change_off_goalie_api_id` <- this_object$`change_off_goalie_api_id`
      self$`is_home` <- this_object$`is_home`
      self$`game` <- GamePublic$new()$fromJSON(jsonlite::toJSON(this_object$`game`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ChangesPublic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `season`
      if (!is.null(input_json$`season`)) {
        if (!(is.numeric(input_json$`season`) && length(input_json$`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", input_json$`season`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `season` is missing."))
      }
      # check the required field `session`
      if (!is.null(input_json$`session`)) {
        if (!(is.character(input_json$`session`) && length(input_json$`session`) == 1)) {
          stop(paste("Error! Invalid data for `session`. Must be a string:", input_json$`session`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `session` is missing."))
      }
      # check the required field `game_id`
      if (!is.null(input_json$`game_id`)) {
        if (!(is.numeric(input_json$`game_id`) && length(input_json$`game_id`) == 1)) {
          stop(paste("Error! Invalid data for `game_id`. Must be an integer:", input_json$`game_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `game_id` is missing."))
      }
      # check the required field `event_team`
      if (!is.null(input_json$`event_team`)) {
        if (!(is.character(input_json$`event_team`) && length(input_json$`event_team`) == 1)) {
          stop(paste("Error! Invalid data for `event_team`. Must be a string:", input_json$`event_team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `event_team` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.numeric(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `period` is missing."))
      }
      # check the required field `period_seconds`
      if (!is.null(input_json$`period_seconds`)) {
        if (!(is.numeric(input_json$`period_seconds`) && length(input_json$`period_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `period_seconds`. Must be an integer:", input_json$`period_seconds`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `period_seconds` is missing."))
      }
      # check the required field `game_seconds`
      if (!is.null(input_json$`game_seconds`)) {
        if (!(is.numeric(input_json$`game_seconds`) && length(input_json$`game_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `game_seconds`. Must be an integer:", input_json$`game_seconds`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `game_seconds` is missing."))
      }
      # check the required field `is_home`
      if (!is.null(input_json$`is_home`)) {
        if (!(is.numeric(input_json$`is_home`) && length(input_json$`is_home`) == 1)) {
          stop(paste("Error! Invalid data for `is_home`. Must be an integer:", input_json$`is_home`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangesPublic: the required field `is_home` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ChangesPublic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `season` is null
      if (is.null(self$`season`)) {
        return(FALSE)
      }

      # check if the required `session` is null
      if (is.null(self$`session`)) {
        return(FALSE)
      }

      # check if the required `game_id` is null
      if (is.null(self$`game_id`)) {
        return(FALSE)
      }

      # check if the required `event_team` is null
      if (is.null(self$`event_team`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        return(FALSE)
      }

      # check if the required `period_seconds` is null
      if (is.null(self$`period_seconds`)) {
        return(FALSE)
      }

      # check if the required `game_seconds` is null
      if (is.null(self$`game_seconds`)) {
        return(FALSE)
      }

      # check if the required `is_home` is null
      if (is.null(self$`is_home`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `season` is null
      if (is.null(self$`season`)) {
        invalid_fields["season"] <- "Non-nullable required field `season` cannot be null."
      }

      # check if the required `session` is null
      if (is.null(self$`session`)) {
        invalid_fields["session"] <- "Non-nullable required field `session` cannot be null."
      }

      # check if the required `game_id` is null
      if (is.null(self$`game_id`)) {
        invalid_fields["game_id"] <- "Non-nullable required field `game_id` cannot be null."
      }

      # check if the required `event_team` is null
      if (is.null(self$`event_team`)) {
        invalid_fields["event_team"] <- "Non-nullable required field `event_team` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      # check if the required `period_seconds` is null
      if (is.null(self$`period_seconds`)) {
        invalid_fields["period_seconds"] <- "Non-nullable required field `period_seconds` cannot be null."
      }

      # check if the required `game_seconds` is null
      if (is.null(self$`game_seconds`)) {
        invalid_fields["game_seconds"] <- "Non-nullable required field `game_seconds` cannot be null."
      }

      # check if the required `is_home` is null
      if (is.null(self$`is_home`)) {
        invalid_fields["is_home"] <- "Non-nullable required field `is_home` cannot be null."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# ChangesPublic$unlock()
#
## Below is an example to define the print function
# ChangesPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ChangesPublic$lock()

