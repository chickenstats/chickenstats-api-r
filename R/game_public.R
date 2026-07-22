#' Create a new GamePublic
#'
#' @description
#' GamePublic Class
#'
#' @docType class
#' @title GamePublic
#' @description GamePublic Class
#' @format An \code{R6Class} generator object
#' @field game_id  integer
#' @field season  integer
#' @field session  character
#' @field game_date  character
#' @field start_time  character [optional]
#' @field start_time_utc  character [optional]
#' @field game_state  character [optional]
#' @field game_schedule_state  character [optional]
#' @field game_outcome  character [optional]
#' @field home_team  character
#' @field away_team  character
#' @field home_score  integer [optional]
#' @field away_score  integer [optional]
#' @field venue  character [optional]
#' @field venue_location  character [optional]
#' @field venue_timezone  character [optional]
#' @field neutral_site  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GamePublic <- R6::R6Class(
  "GamePublic",
  public = list(
    `game_id` = NULL,
    `season` = NULL,
    `session` = NULL,
    `game_date` = NULL,
    `start_time` = NULL,
    `start_time_utc` = NULL,
    `game_state` = NULL,
    `game_schedule_state` = NULL,
    `game_outcome` = NULL,
    `home_team` = NULL,
    `away_team` = NULL,
    `home_score` = NULL,
    `away_score` = NULL,
    `venue` = NULL,
    `venue_location` = NULL,
    `venue_timezone` = NULL,
    `neutral_site` = NULL,

    #' @description
    #' Initialize a new GamePublic class.
    #'
    #' @param game_id game_id
    #' @param season season
    #' @param session session
    #' @param game_date game_date
    #' @param home_team home_team
    #' @param away_team away_team
    #' @param start_time start_time
    #' @param start_time_utc start_time_utc
    #' @param game_state game_state
    #' @param game_schedule_state game_schedule_state
    #' @param game_outcome game_outcome
    #' @param home_score home_score
    #' @param away_score away_score
    #' @param venue venue
    #' @param venue_location venue_location
    #' @param venue_timezone venue_timezone
    #' @param neutral_site neutral_site
    #' @param ... Other optional arguments.
    initialize = function(`game_id`, `season`, `session`, `game_date`, `home_team`, `away_team`, `start_time` = NULL, `start_time_utc` = NULL, `game_state` = NULL, `game_schedule_state` = NULL, `game_outcome` = NULL, `home_score` = NULL, `away_score` = NULL, `venue` = NULL, `venue_location` = NULL, `venue_timezone` = NULL, `neutral_site` = NULL, ...) {
      if (!missing(`game_id`)) {
        if (!(is.numeric(`game_id`) && length(`game_id`) == 1)) {
          stop(paste("Error! Invalid data for `game_id`. Must be an integer:", `game_id`))
        }
        self$`game_id` <- `game_id`
      }
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
      if (!missing(`game_date`)) {
        if (!(is.character(`game_date`) && length(`game_date`) == 1)) {
          stop(paste("Error! Invalid data for `game_date`. Must be a string:", `game_date`))
        }
        self$`game_date` <- `game_date`
      }
      if (!missing(`home_team`)) {
        if (!(is.character(`home_team`) && length(`home_team`) == 1)) {
          stop(paste("Error! Invalid data for `home_team`. Must be a string:", `home_team`))
        }
        self$`home_team` <- `home_team`
      }
      if (!missing(`away_team`)) {
        if (!(is.character(`away_team`) && length(`away_team`) == 1)) {
          stop(paste("Error! Invalid data for `away_team`. Must be a string:", `away_team`))
        }
        self$`away_team` <- `away_team`
      }
      if (!is.null(`start_time`)) {
        if (!(is.character(`start_time`) && length(`start_time`) == 1)) {
          stop(paste("Error! Invalid data for `start_time`. Must be a string:", `start_time`))
        }
        self$`start_time` <- `start_time`
      }
      if (!is.null(`start_time_utc`)) {
        if (!is.character(`start_time_utc`)) {
          stop(paste("Error! Invalid data for `start_time_utc`. Must be a string:", `start_time_utc`))
        }
        self$`start_time_utc` <- `start_time_utc`
      }
      if (!is.null(`game_state`)) {
        if (!(is.character(`game_state`) && length(`game_state`) == 1)) {
          stop(paste("Error! Invalid data for `game_state`. Must be a string:", `game_state`))
        }
        self$`game_state` <- `game_state`
      }
      if (!is.null(`game_schedule_state`)) {
        if (!(is.character(`game_schedule_state`) && length(`game_schedule_state`) == 1)) {
          stop(paste("Error! Invalid data for `game_schedule_state`. Must be a string:", `game_schedule_state`))
        }
        self$`game_schedule_state` <- `game_schedule_state`
      }
      if (!is.null(`game_outcome`)) {
        if (!(is.character(`game_outcome`) && length(`game_outcome`) == 1)) {
          stop(paste("Error! Invalid data for `game_outcome`. Must be a string:", `game_outcome`))
        }
        self$`game_outcome` <- `game_outcome`
      }
      if (!is.null(`home_score`)) {
        if (!(is.numeric(`home_score`) && length(`home_score`) == 1)) {
          stop(paste("Error! Invalid data for `home_score`. Must be an integer:", `home_score`))
        }
        self$`home_score` <- `home_score`
      }
      if (!is.null(`away_score`)) {
        if (!(is.numeric(`away_score`) && length(`away_score`) == 1)) {
          stop(paste("Error! Invalid data for `away_score`. Must be an integer:", `away_score`))
        }
        self$`away_score` <- `away_score`
      }
      if (!is.null(`venue`)) {
        if (!(is.character(`venue`) && length(`venue`) == 1)) {
          stop(paste("Error! Invalid data for `venue`. Must be a string:", `venue`))
        }
        self$`venue` <- `venue`
      }
      if (!is.null(`venue_location`)) {
        if (!(is.character(`venue_location`) && length(`venue_location`) == 1)) {
          stop(paste("Error! Invalid data for `venue_location`. Must be a string:", `venue_location`))
        }
        self$`venue_location` <- `venue_location`
      }
      if (!is.null(`venue_timezone`)) {
        if (!(is.character(`venue_timezone`) && length(`venue_timezone`) == 1)) {
          stop(paste("Error! Invalid data for `venue_timezone`. Must be a string:", `venue_timezone`))
        }
        self$`venue_timezone` <- `venue_timezone`
      }
      if (!is.null(`neutral_site`)) {
        if (!(is.numeric(`neutral_site`) && length(`neutral_site`) == 1)) {
          stop(paste("Error! Invalid data for `neutral_site`. Must be an integer:", `neutral_site`))
        }
        self$`neutral_site` <- `neutral_site`
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
    #' @return GamePublic as a base R list.
    #' @examples
    #' # convert array of GamePublic (x) to a data frame
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
    #' Convert GamePublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GamePublicObject <- list()
      if (!is.null(self$`game_id`)) {
        GamePublicObject[["game_id"]] <-
          self$`game_id`
      }
      if (!is.null(self$`season`)) {
        GamePublicObject[["season"]] <-
          self$`season`
      }
      if (!is.null(self$`session`)) {
        GamePublicObject[["session"]] <-
          self$`session`
      }
      if (!is.null(self$`game_date`)) {
        GamePublicObject[["game_date"]] <-
          self$`game_date`
      }
      if (!is.null(self$`start_time`)) {
        GamePublicObject[["start_time"]] <-
          self$`start_time`
      }
      if (!is.null(self$`start_time_utc`)) {
        GamePublicObject[["start_time_utc"]] <-
          self$`start_time_utc`
      }
      if (!is.null(self$`game_state`)) {
        GamePublicObject[["game_state"]] <-
          self$`game_state`
      }
      if (!is.null(self$`game_schedule_state`)) {
        GamePublicObject[["game_schedule_state"]] <-
          self$`game_schedule_state`
      }
      if (!is.null(self$`game_outcome`)) {
        GamePublicObject[["game_outcome"]] <-
          self$`game_outcome`
      }
      if (!is.null(self$`home_team`)) {
        GamePublicObject[["home_team"]] <-
          self$`home_team`
      }
      if (!is.null(self$`away_team`)) {
        GamePublicObject[["away_team"]] <-
          self$`away_team`
      }
      if (!is.null(self$`home_score`)) {
        GamePublicObject[["home_score"]] <-
          self$`home_score`
      }
      if (!is.null(self$`away_score`)) {
        GamePublicObject[["away_score"]] <-
          self$`away_score`
      }
      if (!is.null(self$`venue`)) {
        GamePublicObject[["venue"]] <-
          self$`venue`
      }
      if (!is.null(self$`venue_location`)) {
        GamePublicObject[["venue_location"]] <-
          self$`venue_location`
      }
      if (!is.null(self$`venue_timezone`)) {
        GamePublicObject[["venue_timezone"]] <-
          self$`venue_timezone`
      }
      if (!is.null(self$`neutral_site`)) {
        GamePublicObject[["neutral_site"]] <-
          self$`neutral_site`
      }
      return(GamePublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GamePublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of GamePublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`game_id`)) {
        self$`game_id` <- this_object$`game_id`
      }
      if (!is.null(this_object$`season`)) {
        self$`season` <- this_object$`season`
      }
      if (!is.null(this_object$`session`)) {
        self$`session` <- this_object$`session`
      }
      if (!is.null(this_object$`game_date`)) {
        self$`game_date` <- this_object$`game_date`
      }
      if (!is.null(this_object$`start_time`)) {
        self$`start_time` <- this_object$`start_time`
      }
      if (!is.null(this_object$`start_time_utc`)) {
        self$`start_time_utc` <- this_object$`start_time_utc`
      }
      if (!is.null(this_object$`game_state`)) {
        self$`game_state` <- this_object$`game_state`
      }
      if (!is.null(this_object$`game_schedule_state`)) {
        self$`game_schedule_state` <- this_object$`game_schedule_state`
      }
      if (!is.null(this_object$`game_outcome`)) {
        self$`game_outcome` <- this_object$`game_outcome`
      }
      if (!is.null(this_object$`home_team`)) {
        self$`home_team` <- this_object$`home_team`
      }
      if (!is.null(this_object$`away_team`)) {
        self$`away_team` <- this_object$`away_team`
      }
      if (!is.null(this_object$`home_score`)) {
        self$`home_score` <- this_object$`home_score`
      }
      if (!is.null(this_object$`away_score`)) {
        self$`away_score` <- this_object$`away_score`
      }
      if (!is.null(this_object$`venue`)) {
        self$`venue` <- this_object$`venue`
      }
      if (!is.null(this_object$`venue_location`)) {
        self$`venue_location` <- this_object$`venue_location`
      }
      if (!is.null(this_object$`venue_timezone`)) {
        self$`venue_timezone` <- this_object$`venue_timezone`
      }
      if (!is.null(this_object$`neutral_site`)) {
        self$`neutral_site` <- this_object$`neutral_site`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GamePublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GamePublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of GamePublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`game_id` <- this_object$`game_id`
      self$`season` <- this_object$`season`
      self$`session` <- this_object$`session`
      self$`game_date` <- this_object$`game_date`
      self$`start_time` <- this_object$`start_time`
      self$`start_time_utc` <- this_object$`start_time_utc`
      self$`game_state` <- this_object$`game_state`
      self$`game_schedule_state` <- this_object$`game_schedule_state`
      self$`game_outcome` <- this_object$`game_outcome`
      self$`home_team` <- this_object$`home_team`
      self$`away_team` <- this_object$`away_team`
      self$`home_score` <- this_object$`home_score`
      self$`away_score` <- this_object$`away_score`
      self$`venue` <- this_object$`venue`
      self$`venue_location` <- this_object$`venue_location`
      self$`venue_timezone` <- this_object$`venue_timezone`
      self$`neutral_site` <- this_object$`neutral_site`
      self
    },

    #' @description
    #' Validate JSON input with respect to GamePublic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `game_id`
      if (!is.null(input_json$`game_id`)) {
        if (!(is.numeric(input_json$`game_id`) && length(input_json$`game_id`) == 1)) {
          stop(paste("Error! Invalid data for `game_id`. Must be an integer:", input_json$`game_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GamePublic: the required field `game_id` is missing."))
      }
      # check the required field `season`
      if (!is.null(input_json$`season`)) {
        if (!(is.numeric(input_json$`season`) && length(input_json$`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", input_json$`season`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GamePublic: the required field `season` is missing."))
      }
      # check the required field `session`
      if (!is.null(input_json$`session`)) {
        if (!(is.character(input_json$`session`) && length(input_json$`session`) == 1)) {
          stop(paste("Error! Invalid data for `session`. Must be a string:", input_json$`session`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GamePublic: the required field `session` is missing."))
      }
      # check the required field `game_date`
      if (!is.null(input_json$`game_date`)) {
        if (!(is.character(input_json$`game_date`) && length(input_json$`game_date`) == 1)) {
          stop(paste("Error! Invalid data for `game_date`. Must be a string:", input_json$`game_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GamePublic: the required field `game_date` is missing."))
      }
      # check the required field `home_team`
      if (!is.null(input_json$`home_team`)) {
        if (!(is.character(input_json$`home_team`) && length(input_json$`home_team`) == 1)) {
          stop(paste("Error! Invalid data for `home_team`. Must be a string:", input_json$`home_team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GamePublic: the required field `home_team` is missing."))
      }
      # check the required field `away_team`
      if (!is.null(input_json$`away_team`)) {
        if (!(is.character(input_json$`away_team`) && length(input_json$`away_team`) == 1)) {
          stop(paste("Error! Invalid data for `away_team`. Must be a string:", input_json$`away_team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GamePublic: the required field `away_team` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GamePublic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `game_id` is null
      if (is.null(self$`game_id`)) {
        return(FALSE)
      }

      # check if the required `season` is null
      if (is.null(self$`season`)) {
        return(FALSE)
      }

      # check if the required `session` is null
      if (is.null(self$`session`)) {
        return(FALSE)
      }

      # check if the required `game_date` is null
      if (is.null(self$`game_date`)) {
        return(FALSE)
      }

      # check if the required `home_team` is null
      if (is.null(self$`home_team`)) {
        return(FALSE)
      }

      # check if the required `away_team` is null
      if (is.null(self$`away_team`)) {
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
      # check if the required `game_id` is null
      if (is.null(self$`game_id`)) {
        invalid_fields["game_id"] <- "Non-nullable required field `game_id` cannot be null."
      }

      # check if the required `season` is null
      if (is.null(self$`season`)) {
        invalid_fields["season"] <- "Non-nullable required field `season` cannot be null."
      }

      # check if the required `session` is null
      if (is.null(self$`session`)) {
        invalid_fields["session"] <- "Non-nullable required field `session` cannot be null."
      }

      # check if the required `game_date` is null
      if (is.null(self$`game_date`)) {
        invalid_fields["game_date"] <- "Non-nullable required field `game_date` cannot be null."
      }

      # check if the required `home_team` is null
      if (is.null(self$`home_team`)) {
        invalid_fields["home_team"] <- "Non-nullable required field `home_team` cannot be null."
      }

      # check if the required `away_team` is null
      if (is.null(self$`away_team`)) {
        invalid_fields["away_team"] <- "Non-nullable required field `away_team` cannot be null."
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
# GamePublic$unlock()
#
## Below is an example to define the print function
# GamePublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GamePublic$lock()

