#' Create a new LiveGamesPublic
#'
#' @description
#' LiveGamesPublic Class
#'
#' @docType class
#' @title LiveGamesPublic
#' @description LiveGamesPublic Class
#' @format An \code{R6Class} generator object
#' @field game_id  integer
#' @field game_date  character
#' @field home_team  character
#' @field away_team  character
#' @field game_state  character
#' @field period  integer
#' @field time_remaining  character
#' @field home_score  integer
#' @field away_score  integer
#' @field last_updated  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LiveGamesPublic <- R6::R6Class(
  "LiveGamesPublic",
  public = list(
    `game_id` = NULL,
    `game_date` = NULL,
    `home_team` = NULL,
    `away_team` = NULL,
    `game_state` = NULL,
    `period` = NULL,
    `time_remaining` = NULL,
    `home_score` = NULL,
    `away_score` = NULL,
    `last_updated` = NULL,

    #' @description
    #' Initialize a new LiveGamesPublic class.
    #'
    #' @param game_id game_id
    #' @param game_date game_date
    #' @param home_team home_team
    #' @param away_team away_team
    #' @param game_state game_state
    #' @param period period
    #' @param time_remaining time_remaining
    #' @param home_score home_score
    #' @param away_score away_score
    #' @param last_updated last_updated
    #' @param ... Other optional arguments.
    initialize = function(`game_id`, `game_date`, `home_team`, `away_team`, `game_state`, `period`, `time_remaining`, `home_score`, `away_score`, `last_updated`, ...) {
      if (!missing(`game_id`)) {
        if (!(is.numeric(`game_id`) && length(`game_id`) == 1)) {
          stop(paste("Error! Invalid data for `game_id`. Must be an integer:", `game_id`))
        }
        self$`game_id` <- `game_id`
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
      if (!missing(`game_state`)) {
        if (!(is.character(`game_state`) && length(`game_state`) == 1)) {
          stop(paste("Error! Invalid data for `game_state`. Must be a string:", `game_state`))
        }
        self$`game_state` <- `game_state`
      }
      if (!missing(`period`)) {
        if (!(is.numeric(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`time_remaining`)) {
        if (!(is.character(`time_remaining`) && length(`time_remaining`) == 1)) {
          stop(paste("Error! Invalid data for `time_remaining`. Must be a string:", `time_remaining`))
        }
        self$`time_remaining` <- `time_remaining`
      }
      if (!missing(`home_score`)) {
        if (!(is.numeric(`home_score`) && length(`home_score`) == 1)) {
          stop(paste("Error! Invalid data for `home_score`. Must be an integer:", `home_score`))
        }
        self$`home_score` <- `home_score`
      }
      if (!missing(`away_score`)) {
        if (!(is.numeric(`away_score`) && length(`away_score`) == 1)) {
          stop(paste("Error! Invalid data for `away_score`. Must be an integer:", `away_score`))
        }
        self$`away_score` <- `away_score`
      }
      if (!missing(`last_updated`)) {
        if (!(is.character(`last_updated`) && length(`last_updated`) == 1)) {
          stop(paste("Error! Invalid data for `last_updated`. Must be a string:", `last_updated`))
        }
        self$`last_updated` <- `last_updated`
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
    #' @return LiveGamesPublic as a base R list.
    #' @examples
    #' # convert array of LiveGamesPublic (x) to a data frame
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
    #' Convert LiveGamesPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LiveGamesPublicObject <- list()
      if (!is.null(self$`game_id`)) {
        LiveGamesPublicObject[["game_id"]] <-
          self$`game_id`
      }
      if (!is.null(self$`game_date`)) {
        LiveGamesPublicObject[["game_date"]] <-
          self$`game_date`
      }
      if (!is.null(self$`home_team`)) {
        LiveGamesPublicObject[["home_team"]] <-
          self$`home_team`
      }
      if (!is.null(self$`away_team`)) {
        LiveGamesPublicObject[["away_team"]] <-
          self$`away_team`
      }
      if (!is.null(self$`game_state`)) {
        LiveGamesPublicObject[["game_state"]] <-
          self$`game_state`
      }
      if (!is.null(self$`period`)) {
        LiveGamesPublicObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`time_remaining`)) {
        LiveGamesPublicObject[["time_remaining"]] <-
          self$`time_remaining`
      }
      if (!is.null(self$`home_score`)) {
        LiveGamesPublicObject[["home_score"]] <-
          self$`home_score`
      }
      if (!is.null(self$`away_score`)) {
        LiveGamesPublicObject[["away_score"]] <-
          self$`away_score`
      }
      if (!is.null(self$`last_updated`)) {
        LiveGamesPublicObject[["last_updated"]] <-
          self$`last_updated`
      }
      return(LiveGamesPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LiveGamesPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of LiveGamesPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`game_id`)) {
        self$`game_id` <- this_object$`game_id`
      }
      if (!is.null(this_object$`game_date`)) {
        self$`game_date` <- this_object$`game_date`
      }
      if (!is.null(this_object$`home_team`)) {
        self$`home_team` <- this_object$`home_team`
      }
      if (!is.null(this_object$`away_team`)) {
        self$`away_team` <- this_object$`away_team`
      }
      if (!is.null(this_object$`game_state`)) {
        self$`game_state` <- this_object$`game_state`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`time_remaining`)) {
        self$`time_remaining` <- this_object$`time_remaining`
      }
      if (!is.null(this_object$`home_score`)) {
        self$`home_score` <- this_object$`home_score`
      }
      if (!is.null(this_object$`away_score`)) {
        self$`away_score` <- this_object$`away_score`
      }
      if (!is.null(this_object$`last_updated`)) {
        self$`last_updated` <- this_object$`last_updated`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LiveGamesPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LiveGamesPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of LiveGamesPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`game_id` <- this_object$`game_id`
      self$`game_date` <- this_object$`game_date`
      self$`home_team` <- this_object$`home_team`
      self$`away_team` <- this_object$`away_team`
      self$`game_state` <- this_object$`game_state`
      self$`period` <- this_object$`period`
      self$`time_remaining` <- this_object$`time_remaining`
      self$`home_score` <- this_object$`home_score`
      self$`away_score` <- this_object$`away_score`
      self$`last_updated` <- this_object$`last_updated`
      self
    },

    #' @description
    #' Validate JSON input with respect to LiveGamesPublic and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `game_id` is missing."))
      }
      # check the required field `game_date`
      if (!is.null(input_json$`game_date`)) {
        if (!(is.character(input_json$`game_date`) && length(input_json$`game_date`) == 1)) {
          stop(paste("Error! Invalid data for `game_date`. Must be a string:", input_json$`game_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `game_date` is missing."))
      }
      # check the required field `home_team`
      if (!is.null(input_json$`home_team`)) {
        if (!(is.character(input_json$`home_team`) && length(input_json$`home_team`) == 1)) {
          stop(paste("Error! Invalid data for `home_team`. Must be a string:", input_json$`home_team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `home_team` is missing."))
      }
      # check the required field `away_team`
      if (!is.null(input_json$`away_team`)) {
        if (!(is.character(input_json$`away_team`) && length(input_json$`away_team`) == 1)) {
          stop(paste("Error! Invalid data for `away_team`. Must be a string:", input_json$`away_team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `away_team` is missing."))
      }
      # check the required field `game_state`
      if (!is.null(input_json$`game_state`)) {
        if (!(is.character(input_json$`game_state`) && length(input_json$`game_state`) == 1)) {
          stop(paste("Error! Invalid data for `game_state`. Must be a string:", input_json$`game_state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `game_state` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.numeric(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `period` is missing."))
      }
      # check the required field `time_remaining`
      if (!is.null(input_json$`time_remaining`)) {
        if (!(is.character(input_json$`time_remaining`) && length(input_json$`time_remaining`) == 1)) {
          stop(paste("Error! Invalid data for `time_remaining`. Must be a string:", input_json$`time_remaining`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `time_remaining` is missing."))
      }
      # check the required field `home_score`
      if (!is.null(input_json$`home_score`)) {
        if (!(is.numeric(input_json$`home_score`) && length(input_json$`home_score`) == 1)) {
          stop(paste("Error! Invalid data for `home_score`. Must be an integer:", input_json$`home_score`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `home_score` is missing."))
      }
      # check the required field `away_score`
      if (!is.null(input_json$`away_score`)) {
        if (!(is.numeric(input_json$`away_score`) && length(input_json$`away_score`) == 1)) {
          stop(paste("Error! Invalid data for `away_score`. Must be an integer:", input_json$`away_score`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `away_score` is missing."))
      }
      # check the required field `last_updated`
      if (!is.null(input_json$`last_updated`)) {
        if (!(is.character(input_json$`last_updated`) && length(input_json$`last_updated`) == 1)) {
          stop(paste("Error! Invalid data for `last_updated`. Must be a string:", input_json$`last_updated`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiveGamesPublic: the required field `last_updated` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LiveGamesPublic
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

      # check if the required `game_state` is null
      if (is.null(self$`game_state`)) {
        return(FALSE)
      }

      # check if the required `home_score` is null
      if (is.null(self$`home_score`)) {
        return(FALSE)
      }

      # check if the required `away_score` is null
      if (is.null(self$`away_score`)) {
        return(FALSE)
      }

      # check if the required `last_updated` is null
      if (is.null(self$`last_updated`)) {
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

      # check if the required `game_state` is null
      if (is.null(self$`game_state`)) {
        invalid_fields["game_state"] <- "Non-nullable required field `game_state` cannot be null."
      }

      # check if the required `home_score` is null
      if (is.null(self$`home_score`)) {
        invalid_fields["home_score"] <- "Non-nullable required field `home_score` cannot be null."
      }

      # check if the required `away_score` is null
      if (is.null(self$`away_score`)) {
        invalid_fields["away_score"] <- "Non-nullable required field `away_score` cannot be null."
      }

      # check if the required `last_updated` is null
      if (is.null(self$`last_updated`)) {
        invalid_fields["last_updated"] <- "Non-nullable required field `last_updated` cannot be null."
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
# LiveGamesPublic$unlock()
#
## Below is an example to define the print function
# LiveGamesPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LiveGamesPublic$lock()

