#' Create a new StandingsPublic
#'
#' @description
#' StandingsPublic Class
#'
#' @docType class
#' @title StandingsPublic
#' @description StandingsPublic Class
#' @format An \code{R6Class} generator object
#' @field season  integer
#' @field team  character
#' @field points  integer [optional]
#' @field points_percentage  numeric [optional]
#' @field wins  integer [optional]
#' @field losses  integer [optional]
#' @field otl  integer [optional]
#' @field games_played  integer [optional]
#' @field goals_scored  integer [optional]
#' @field goals_against  integer [optional]
#' @field streak  character [optional]
#' @field last_updated  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StandingsPublic <- R6::R6Class(
  "StandingsPublic",
  public = list(
    `season` = NULL,
    `team` = NULL,
    `points` = NULL,
    `points_percentage` = NULL,
    `wins` = NULL,
    `losses` = NULL,
    `otl` = NULL,
    `games_played` = NULL,
    `goals_scored` = NULL,
    `goals_against` = NULL,
    `streak` = NULL,
    `last_updated` = NULL,

    #' @description
    #' Initialize a new StandingsPublic class.
    #'
    #' @param season season
    #' @param team team
    #' @param points points
    #' @param points_percentage points_percentage
    #' @param wins wins
    #' @param losses losses
    #' @param otl otl
    #' @param games_played games_played
    #' @param goals_scored goals_scored
    #' @param goals_against goals_against
    #' @param streak streak
    #' @param last_updated last_updated
    #' @param ... Other optional arguments.
    initialize = function(`season`, `team`, `points` = NULL, `points_percentage` = NULL, `wins` = NULL, `losses` = NULL, `otl` = NULL, `games_played` = NULL, `goals_scored` = NULL, `goals_against` = NULL, `streak` = NULL, `last_updated` = NULL, ...) {
      if (!missing(`season`)) {
        if (!(is.numeric(`season`) && length(`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", `season`))
        }
        self$`season` <- `season`
      }
      if (!missing(`team`)) {
        if (!(is.character(`team`) && length(`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", `team`))
        }
        self$`team` <- `team`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
      }
      if (!is.null(`points_percentage`)) {
        self$`points_percentage` <- `points_percentage`
      }
      if (!is.null(`wins`)) {
        if (!(is.numeric(`wins`) && length(`wins`) == 1)) {
          stop(paste("Error! Invalid data for `wins`. Must be an integer:", `wins`))
        }
        self$`wins` <- `wins`
      }
      if (!is.null(`losses`)) {
        if (!(is.numeric(`losses`) && length(`losses`) == 1)) {
          stop(paste("Error! Invalid data for `losses`. Must be an integer:", `losses`))
        }
        self$`losses` <- `losses`
      }
      if (!is.null(`otl`)) {
        if (!(is.numeric(`otl`) && length(`otl`) == 1)) {
          stop(paste("Error! Invalid data for `otl`. Must be an integer:", `otl`))
        }
        self$`otl` <- `otl`
      }
      if (!is.null(`games_played`)) {
        if (!(is.numeric(`games_played`) && length(`games_played`) == 1)) {
          stop(paste("Error! Invalid data for `games_played`. Must be an integer:", `games_played`))
        }
        self$`games_played` <- `games_played`
      }
      if (!is.null(`goals_scored`)) {
        if (!(is.numeric(`goals_scored`) && length(`goals_scored`) == 1)) {
          stop(paste("Error! Invalid data for `goals_scored`. Must be an integer:", `goals_scored`))
        }
        self$`goals_scored` <- `goals_scored`
      }
      if (!is.null(`goals_against`)) {
        if (!(is.numeric(`goals_against`) && length(`goals_against`) == 1)) {
          stop(paste("Error! Invalid data for `goals_against`. Must be an integer:", `goals_against`))
        }
        self$`goals_against` <- `goals_against`
      }
      if (!is.null(`streak`)) {
        if (!(is.character(`streak`) && length(`streak`) == 1)) {
          stop(paste("Error! Invalid data for `streak`. Must be a string:", `streak`))
        }
        self$`streak` <- `streak`
      }
      if (!is.null(`last_updated`)) {
        if (!is.character(`last_updated`)) {
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
    #' @return StandingsPublic as a base R list.
    #' @examples
    #' # convert array of StandingsPublic (x) to a data frame
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
    #' Convert StandingsPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StandingsPublicObject <- list()
      if (!is.null(self$`season`)) {
        StandingsPublicObject[["season"]] <-
          self$`season`
      }
      if (!is.null(self$`team`)) {
        StandingsPublicObject[["team"]] <-
          self$`team`
      }
      if (!is.null(self$`points`)) {
        StandingsPublicObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`points_percentage`)) {
        StandingsPublicObject[["points_percentage"]] <-
          self$`points_percentage`
      }
      if (!is.null(self$`wins`)) {
        StandingsPublicObject[["wins"]] <-
          self$`wins`
      }
      if (!is.null(self$`losses`)) {
        StandingsPublicObject[["losses"]] <-
          self$`losses`
      }
      if (!is.null(self$`otl`)) {
        StandingsPublicObject[["otl"]] <-
          self$`otl`
      }
      if (!is.null(self$`games_played`)) {
        StandingsPublicObject[["games_played"]] <-
          self$`games_played`
      }
      if (!is.null(self$`goals_scored`)) {
        StandingsPublicObject[["goals_scored"]] <-
          self$`goals_scored`
      }
      if (!is.null(self$`goals_against`)) {
        StandingsPublicObject[["goals_against"]] <-
          self$`goals_against`
      }
      if (!is.null(self$`streak`)) {
        StandingsPublicObject[["streak"]] <-
          self$`streak`
      }
      if (!is.null(self$`last_updated`)) {
        StandingsPublicObject[["last_updated"]] <-
          self$`last_updated`
      }
      return(StandingsPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StandingsPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandingsPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`season`)) {
        self$`season` <- this_object$`season`
      }
      if (!is.null(this_object$`team`)) {
        self$`team` <- this_object$`team`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      if (!is.null(this_object$`points_percentage`)) {
        self$`points_percentage` <- this_object$`points_percentage`
      }
      if (!is.null(this_object$`wins`)) {
        self$`wins` <- this_object$`wins`
      }
      if (!is.null(this_object$`losses`)) {
        self$`losses` <- this_object$`losses`
      }
      if (!is.null(this_object$`otl`)) {
        self$`otl` <- this_object$`otl`
      }
      if (!is.null(this_object$`games_played`)) {
        self$`games_played` <- this_object$`games_played`
      }
      if (!is.null(this_object$`goals_scored`)) {
        self$`goals_scored` <- this_object$`goals_scored`
      }
      if (!is.null(this_object$`goals_against`)) {
        self$`goals_against` <- this_object$`goals_against`
      }
      if (!is.null(this_object$`streak`)) {
        self$`streak` <- this_object$`streak`
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
    #' @return StandingsPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StandingsPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandingsPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`season` <- this_object$`season`
      self$`team` <- this_object$`team`
      self$`points` <- this_object$`points`
      self$`points_percentage` <- this_object$`points_percentage`
      self$`wins` <- this_object$`wins`
      self$`losses` <- this_object$`losses`
      self$`otl` <- this_object$`otl`
      self$`games_played` <- this_object$`games_played`
      self$`goals_scored` <- this_object$`goals_scored`
      self$`goals_against` <- this_object$`goals_against`
      self$`streak` <- this_object$`streak`
      self$`last_updated` <- this_object$`last_updated`
      self
    },

    #' @description
    #' Validate JSON input with respect to StandingsPublic and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for StandingsPublic: the required field `season` is missing."))
      }
      # check the required field `team`
      if (!is.null(input_json$`team`)) {
        if (!(is.character(input_json$`team`) && length(input_json$`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", input_json$`team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StandingsPublic: the required field `team` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StandingsPublic
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

      # check if the required `team` is null
      if (is.null(self$`team`)) {
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

      # check if the required `team` is null
      if (is.null(self$`team`)) {
        invalid_fields["team"] <- "Non-nullable required field `team` cannot be null."
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
# StandingsPublic$unlock()
#
## Below is an example to define the print function
# StandingsPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StandingsPublic$lock()

