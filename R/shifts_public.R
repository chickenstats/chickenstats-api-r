#' Create a new ShiftsPublic
#'
#' @description
#' ShiftsPublic Class
#'
#' @docType class
#' @title ShiftsPublic
#' @description ShiftsPublic Class
#' @format An \code{R6Class} generator object
#' @field season  integer
#' @field session  character
#' @field game_id  integer
#' @field api_id  integer
#' @field team  character
#' @field shift_count  integer
#' @field period  integer
#' @field start_time_seconds  integer
#' @field end_time_seconds  integer
#' @field duration_seconds  integer
#' @field goalie  integer [optional]
#' @field is_home  integer
#' @field is_away  integer
#' @field player  \link{PlayerPublic} [optional]
#' @field game  \link{GamePublic} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShiftsPublic <- R6::R6Class(
  "ShiftsPublic",
  public = list(
    `season` = NULL,
    `session` = NULL,
    `game_id` = NULL,
    `api_id` = NULL,
    `team` = NULL,
    `shift_count` = NULL,
    `period` = NULL,
    `start_time_seconds` = NULL,
    `end_time_seconds` = NULL,
    `duration_seconds` = NULL,
    `goalie` = NULL,
    `is_home` = NULL,
    `is_away` = NULL,
    `player` = NULL,
    `game` = NULL,

    #' @description
    #' Initialize a new ShiftsPublic class.
    #'
    #' @param season season
    #' @param session session
    #' @param game_id game_id
    #' @param api_id api_id
    #' @param team team
    #' @param shift_count shift_count
    #' @param period period
    #' @param start_time_seconds start_time_seconds
    #' @param end_time_seconds end_time_seconds
    #' @param duration_seconds duration_seconds
    #' @param is_home is_home
    #' @param is_away is_away
    #' @param goalie goalie. Default to 0.
    #' @param player player
    #' @param game game
    #' @param ... Other optional arguments.
    initialize = function(`season`, `session`, `game_id`, `api_id`, `team`, `shift_count`, `period`, `start_time_seconds`, `end_time_seconds`, `duration_seconds`, `is_home`, `is_away`, `goalie` = 0, `player` = NULL, `game` = NULL, ...) {
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
      if (!missing(`api_id`)) {
        if (!(is.numeric(`api_id`) && length(`api_id`) == 1)) {
          stop(paste("Error! Invalid data for `api_id`. Must be an integer:", `api_id`))
        }
        self$`api_id` <- `api_id`
      }
      if (!missing(`team`)) {
        if (!(is.character(`team`) && length(`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", `team`))
        }
        self$`team` <- `team`
      }
      if (!missing(`shift_count`)) {
        if (!(is.numeric(`shift_count`) && length(`shift_count`) == 1)) {
          stop(paste("Error! Invalid data for `shift_count`. Must be an integer:", `shift_count`))
        }
        self$`shift_count` <- `shift_count`
      }
      if (!missing(`period`)) {
        if (!(is.numeric(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`start_time_seconds`)) {
        if (!(is.numeric(`start_time_seconds`) && length(`start_time_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `start_time_seconds`. Must be an integer:", `start_time_seconds`))
        }
        self$`start_time_seconds` <- `start_time_seconds`
      }
      if (!missing(`end_time_seconds`)) {
        if (!(is.numeric(`end_time_seconds`) && length(`end_time_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `end_time_seconds`. Must be an integer:", `end_time_seconds`))
        }
        self$`end_time_seconds` <- `end_time_seconds`
      }
      if (!missing(`duration_seconds`)) {
        if (!(is.numeric(`duration_seconds`) && length(`duration_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `duration_seconds`. Must be an integer:", `duration_seconds`))
        }
        self$`duration_seconds` <- `duration_seconds`
      }
      if (!missing(`is_home`)) {
        if (!(is.numeric(`is_home`) && length(`is_home`) == 1)) {
          stop(paste("Error! Invalid data for `is_home`. Must be an integer:", `is_home`))
        }
        self$`is_home` <- `is_home`
      }
      if (!missing(`is_away`)) {
        if (!(is.numeric(`is_away`) && length(`is_away`) == 1)) {
          stop(paste("Error! Invalid data for `is_away`. Must be an integer:", `is_away`))
        }
        self$`is_away` <- `is_away`
      }
      if (!is.null(`goalie`)) {
        if (!(is.numeric(`goalie`) && length(`goalie`) == 1)) {
          stop(paste("Error! Invalid data for `goalie`. Must be an integer:", `goalie`))
        }
        self$`goalie` <- `goalie`
      }
      if (!is.null(`player`)) {
        stopifnot(R6::is.R6(`player`))
        self$`player` <- `player`
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
    #' @return ShiftsPublic as a base R list.
    #' @examples
    #' # convert array of ShiftsPublic (x) to a data frame
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
    #' Convert ShiftsPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShiftsPublicObject <- list()
      if (!is.null(self$`season`)) {
        ShiftsPublicObject[["season"]] <-
          self$`season`
      }
      if (!is.null(self$`session`)) {
        ShiftsPublicObject[["session"]] <-
          self$`session`
      }
      if (!is.null(self$`game_id`)) {
        ShiftsPublicObject[["game_id"]] <-
          self$`game_id`
      }
      if (!is.null(self$`api_id`)) {
        ShiftsPublicObject[["api_id"]] <-
          self$`api_id`
      }
      if (!is.null(self$`team`)) {
        ShiftsPublicObject[["team"]] <-
          self$`team`
      }
      if (!is.null(self$`shift_count`)) {
        ShiftsPublicObject[["shift_count"]] <-
          self$`shift_count`
      }
      if (!is.null(self$`period`)) {
        ShiftsPublicObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`start_time_seconds`)) {
        ShiftsPublicObject[["start_time_seconds"]] <-
          self$`start_time_seconds`
      }
      if (!is.null(self$`end_time_seconds`)) {
        ShiftsPublicObject[["end_time_seconds"]] <-
          self$`end_time_seconds`
      }
      if (!is.null(self$`duration_seconds`)) {
        ShiftsPublicObject[["duration_seconds"]] <-
          self$`duration_seconds`
      }
      if (!is.null(self$`goalie`)) {
        ShiftsPublicObject[["goalie"]] <-
          self$`goalie`
      }
      if (!is.null(self$`is_home`)) {
        ShiftsPublicObject[["is_home"]] <-
          self$`is_home`
      }
      if (!is.null(self$`is_away`)) {
        ShiftsPublicObject[["is_away"]] <-
          self$`is_away`
      }
      if (!is.null(self$`player`)) {
        ShiftsPublicObject[["player"]] <-
          self$`player`$toSimpleType()
      }
      if (!is.null(self$`game`)) {
        ShiftsPublicObject[["game"]] <-
          self$`game`$toSimpleType()
      }
      return(ShiftsPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ShiftsPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShiftsPublic
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
      if (!is.null(this_object$`api_id`)) {
        self$`api_id` <- this_object$`api_id`
      }
      if (!is.null(this_object$`team`)) {
        self$`team` <- this_object$`team`
      }
      if (!is.null(this_object$`shift_count`)) {
        self$`shift_count` <- this_object$`shift_count`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`start_time_seconds`)) {
        self$`start_time_seconds` <- this_object$`start_time_seconds`
      }
      if (!is.null(this_object$`end_time_seconds`)) {
        self$`end_time_seconds` <- this_object$`end_time_seconds`
      }
      if (!is.null(this_object$`duration_seconds`)) {
        self$`duration_seconds` <- this_object$`duration_seconds`
      }
      if (!is.null(this_object$`goalie`)) {
        self$`goalie` <- this_object$`goalie`
      }
      if (!is.null(this_object$`is_home`)) {
        self$`is_home` <- this_object$`is_home`
      }
      if (!is.null(this_object$`is_away`)) {
        self$`is_away` <- this_object$`is_away`
      }
      if (!is.null(this_object$`player`)) {
        `player_object` <- PlayerPublic$new()
        `player_object`$fromJSON(jsonlite::toJSON(this_object$`player`, auto_unbox = TRUE, digits = NA))
        self$`player` <- `player_object`
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
    #' @return ShiftsPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShiftsPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShiftsPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`season` <- this_object$`season`
      self$`session` <- this_object$`session`
      self$`game_id` <- this_object$`game_id`
      self$`api_id` <- this_object$`api_id`
      self$`team` <- this_object$`team`
      self$`shift_count` <- this_object$`shift_count`
      self$`period` <- this_object$`period`
      self$`start_time_seconds` <- this_object$`start_time_seconds`
      self$`end_time_seconds` <- this_object$`end_time_seconds`
      self$`duration_seconds` <- this_object$`duration_seconds`
      self$`goalie` <- this_object$`goalie`
      self$`is_home` <- this_object$`is_home`
      self$`is_away` <- this_object$`is_away`
      self$`player` <- PlayerPublic$new()$fromJSON(jsonlite::toJSON(this_object$`player`, auto_unbox = TRUE, digits = NA))
      self$`game` <- GamePublic$new()$fromJSON(jsonlite::toJSON(this_object$`game`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ShiftsPublic and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `season` is missing."))
      }
      # check the required field `session`
      if (!is.null(input_json$`session`)) {
        if (!(is.character(input_json$`session`) && length(input_json$`session`) == 1)) {
          stop(paste("Error! Invalid data for `session`. Must be a string:", input_json$`session`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `session` is missing."))
      }
      # check the required field `game_id`
      if (!is.null(input_json$`game_id`)) {
        if (!(is.numeric(input_json$`game_id`) && length(input_json$`game_id`) == 1)) {
          stop(paste("Error! Invalid data for `game_id`. Must be an integer:", input_json$`game_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `game_id` is missing."))
      }
      # check the required field `api_id`
      if (!is.null(input_json$`api_id`)) {
        if (!(is.numeric(input_json$`api_id`) && length(input_json$`api_id`) == 1)) {
          stop(paste("Error! Invalid data for `api_id`. Must be an integer:", input_json$`api_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `api_id` is missing."))
      }
      # check the required field `team`
      if (!is.null(input_json$`team`)) {
        if (!(is.character(input_json$`team`) && length(input_json$`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", input_json$`team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `team` is missing."))
      }
      # check the required field `shift_count`
      if (!is.null(input_json$`shift_count`)) {
        if (!(is.numeric(input_json$`shift_count`) && length(input_json$`shift_count`) == 1)) {
          stop(paste("Error! Invalid data for `shift_count`. Must be an integer:", input_json$`shift_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `shift_count` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.numeric(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `period` is missing."))
      }
      # check the required field `start_time_seconds`
      if (!is.null(input_json$`start_time_seconds`)) {
        if (!(is.numeric(input_json$`start_time_seconds`) && length(input_json$`start_time_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `start_time_seconds`. Must be an integer:", input_json$`start_time_seconds`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `start_time_seconds` is missing."))
      }
      # check the required field `end_time_seconds`
      if (!is.null(input_json$`end_time_seconds`)) {
        if (!(is.numeric(input_json$`end_time_seconds`) && length(input_json$`end_time_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `end_time_seconds`. Must be an integer:", input_json$`end_time_seconds`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `end_time_seconds` is missing."))
      }
      # check the required field `duration_seconds`
      if (!is.null(input_json$`duration_seconds`)) {
        if (!(is.numeric(input_json$`duration_seconds`) && length(input_json$`duration_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `duration_seconds`. Must be an integer:", input_json$`duration_seconds`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `duration_seconds` is missing."))
      }
      # check the required field `is_home`
      if (!is.null(input_json$`is_home`)) {
        if (!(is.numeric(input_json$`is_home`) && length(input_json$`is_home`) == 1)) {
          stop(paste("Error! Invalid data for `is_home`. Must be an integer:", input_json$`is_home`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `is_home` is missing."))
      }
      # check the required field `is_away`
      if (!is.null(input_json$`is_away`)) {
        if (!(is.numeric(input_json$`is_away`) && length(input_json$`is_away`) == 1)) {
          stop(paste("Error! Invalid data for `is_away`. Must be an integer:", input_json$`is_away`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShiftsPublic: the required field `is_away` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShiftsPublic
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

      # check if the required `api_id` is null
      if (is.null(self$`api_id`)) {
        return(FALSE)
      }

      # check if the required `team` is null
      if (is.null(self$`team`)) {
        return(FALSE)
      }

      # check if the required `shift_count` is null
      if (is.null(self$`shift_count`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        return(FALSE)
      }

      # check if the required `start_time_seconds` is null
      if (is.null(self$`start_time_seconds`)) {
        return(FALSE)
      }

      # check if the required `end_time_seconds` is null
      if (is.null(self$`end_time_seconds`)) {
        return(FALSE)
      }

      # check if the required `duration_seconds` is null
      if (is.null(self$`duration_seconds`)) {
        return(FALSE)
      }

      # check if the required `is_home` is null
      if (is.null(self$`is_home`)) {
        return(FALSE)
      }

      # check if the required `is_away` is null
      if (is.null(self$`is_away`)) {
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

      # check if the required `api_id` is null
      if (is.null(self$`api_id`)) {
        invalid_fields["api_id"] <- "Non-nullable required field `api_id` cannot be null."
      }

      # check if the required `team` is null
      if (is.null(self$`team`)) {
        invalid_fields["team"] <- "Non-nullable required field `team` cannot be null."
      }

      # check if the required `shift_count` is null
      if (is.null(self$`shift_count`)) {
        invalid_fields["shift_count"] <- "Non-nullable required field `shift_count` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      # check if the required `start_time_seconds` is null
      if (is.null(self$`start_time_seconds`)) {
        invalid_fields["start_time_seconds"] <- "Non-nullable required field `start_time_seconds` cannot be null."
      }

      # check if the required `end_time_seconds` is null
      if (is.null(self$`end_time_seconds`)) {
        invalid_fields["end_time_seconds"] <- "Non-nullable required field `end_time_seconds` cannot be null."
      }

      # check if the required `duration_seconds` is null
      if (is.null(self$`duration_seconds`)) {
        invalid_fields["duration_seconds"] <- "Non-nullable required field `duration_seconds` cannot be null."
      }

      # check if the required `is_home` is null
      if (is.null(self$`is_home`)) {
        invalid_fields["is_home"] <- "Non-nullable required field `is_home` cannot be null."
      }

      # check if the required `is_away` is null
      if (is.null(self$`is_away`)) {
        invalid_fields["is_away"] <- "Non-nullable required field `is_away` cannot be null."
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
# ShiftsPublic$unlock()
#
## Below is an example to define the print function
# ShiftsPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShiftsPublic$lock()

