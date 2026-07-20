#' Create a new RosterPublic
#'
#' @description
#' RosterPublic Class
#'
#' @docType class
#' @title RosterPublic
#' @description RosterPublic Class
#' @format An \code{R6Class} generator object
#' @field game_id  integer
#' @field api_id  integer [optional]
#' @field team  character
#' @field jersey  integer [optional]
#' @field position  character [optional]
#' @field starter  integer [optional]
#' @field rookie  integer [optional]
#' @field captain  integer [optional]
#' @field alternate_captain  integer [optional]
#' @field status  character [optional]
#' @field active  integer [optional]
#' @field player  \link{PlayerPublic} [optional]
#' @field game  \link{GamePublic} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RosterPublic <- R6::R6Class(
  "RosterPublic",
  public = list(
    `game_id` = NULL,
    `api_id` = NULL,
    `team` = NULL,
    `jersey` = NULL,
    `position` = NULL,
    `starter` = NULL,
    `rookie` = NULL,
    `captain` = NULL,
    `alternate_captain` = NULL,
    `status` = NULL,
    `active` = NULL,
    `player` = NULL,
    `game` = NULL,

    #' @description
    #' Initialize a new RosterPublic class.
    #'
    #' @param game_id game_id
    #' @param team team
    #' @param api_id api_id
    #' @param jersey jersey
    #' @param position position
    #' @param starter starter
    #' @param rookie rookie
    #' @param captain captain
    #' @param alternate_captain alternate_captain
    #' @param status status
    #' @param active active
    #' @param player player
    #' @param game game
    #' @param ... Other optional arguments.
    initialize = function(`game_id`, `team`, `api_id` = NULL, `jersey` = NULL, `position` = NULL, `starter` = NULL, `rookie` = NULL, `captain` = NULL, `alternate_captain` = NULL, `status` = NULL, `active` = NULL, `player` = NULL, `game` = NULL, ...) {
      if (!missing(`game_id`)) {
        if (!(is.numeric(`game_id`) && length(`game_id`) == 1)) {
          stop(paste("Error! Invalid data for `game_id`. Must be an integer:", `game_id`))
        }
        self$`game_id` <- `game_id`
      }
      if (!missing(`team`)) {
        if (!(is.character(`team`) && length(`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", `team`))
        }
        self$`team` <- `team`
      }
      if (!is.null(`api_id`)) {
        if (!(is.numeric(`api_id`) && length(`api_id`) == 1)) {
          stop(paste("Error! Invalid data for `api_id`. Must be an integer:", `api_id`))
        }
        self$`api_id` <- `api_id`
      }
      if (!is.null(`jersey`)) {
        if (!(is.numeric(`jersey`) && length(`jersey`) == 1)) {
          stop(paste("Error! Invalid data for `jersey`. Must be an integer:", `jersey`))
        }
        self$`jersey` <- `jersey`
      }
      if (!is.null(`position`)) {
        if (!(is.character(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be a string:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`starter`)) {
        if (!(is.numeric(`starter`) && length(`starter`) == 1)) {
          stop(paste("Error! Invalid data for `starter`. Must be an integer:", `starter`))
        }
        self$`starter` <- `starter`
      }
      if (!is.null(`rookie`)) {
        if (!(is.numeric(`rookie`) && length(`rookie`) == 1)) {
          stop(paste("Error! Invalid data for `rookie`. Must be an integer:", `rookie`))
        }
        self$`rookie` <- `rookie`
      }
      if (!is.null(`captain`)) {
        if (!(is.numeric(`captain`) && length(`captain`) == 1)) {
          stop(paste("Error! Invalid data for `captain`. Must be an integer:", `captain`))
        }
        self$`captain` <- `captain`
      }
      if (!is.null(`alternate_captain`)) {
        if (!(is.numeric(`alternate_captain`) && length(`alternate_captain`) == 1)) {
          stop(paste("Error! Invalid data for `alternate_captain`. Must be an integer:", `alternate_captain`))
        }
        self$`alternate_captain` <- `alternate_captain`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`active`)) {
        if (!(is.numeric(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be an integer:", `active`))
        }
        self$`active` <- `active`
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
    #' @return RosterPublic as a base R list.
    #' @examples
    #' # convert array of RosterPublic (x) to a data frame
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
    #' Convert RosterPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RosterPublicObject <- list()
      if (!is.null(self$`game_id`)) {
        RosterPublicObject[["game_id"]] <-
          self$`game_id`
      }
      if (!is.null(self$`api_id`)) {
        RosterPublicObject[["api_id"]] <-
          self$`api_id`
      }
      if (!is.null(self$`team`)) {
        RosterPublicObject[["team"]] <-
          self$`team`
      }
      if (!is.null(self$`jersey`)) {
        RosterPublicObject[["jersey"]] <-
          self$`jersey`
      }
      if (!is.null(self$`position`)) {
        RosterPublicObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`starter`)) {
        RosterPublicObject[["starter"]] <-
          self$`starter`
      }
      if (!is.null(self$`rookie`)) {
        RosterPublicObject[["rookie"]] <-
          self$`rookie`
      }
      if (!is.null(self$`captain`)) {
        RosterPublicObject[["captain"]] <-
          self$`captain`
      }
      if (!is.null(self$`alternate_captain`)) {
        RosterPublicObject[["alternate_captain"]] <-
          self$`alternate_captain`
      }
      if (!is.null(self$`status`)) {
        RosterPublicObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`active`)) {
        RosterPublicObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`player`)) {
        RosterPublicObject[["player"]] <-
          self$`player`$toSimpleType()
      }
      if (!is.null(self$`game`)) {
        RosterPublicObject[["game"]] <-
          self$`game`$toSimpleType()
      }
      return(RosterPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RosterPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of RosterPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`game_id`)) {
        self$`game_id` <- this_object$`game_id`
      }
      if (!is.null(this_object$`api_id`)) {
        self$`api_id` <- this_object$`api_id`
      }
      if (!is.null(this_object$`team`)) {
        self$`team` <- this_object$`team`
      }
      if (!is.null(this_object$`jersey`)) {
        self$`jersey` <- this_object$`jersey`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`starter`)) {
        self$`starter` <- this_object$`starter`
      }
      if (!is.null(this_object$`rookie`)) {
        self$`rookie` <- this_object$`rookie`
      }
      if (!is.null(this_object$`captain`)) {
        self$`captain` <- this_object$`captain`
      }
      if (!is.null(this_object$`alternate_captain`)) {
        self$`alternate_captain` <- this_object$`alternate_captain`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
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
    #' @return RosterPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RosterPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of RosterPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`game_id` <- this_object$`game_id`
      self$`api_id` <- this_object$`api_id`
      self$`team` <- this_object$`team`
      self$`jersey` <- this_object$`jersey`
      self$`position` <- this_object$`position`
      self$`starter` <- this_object$`starter`
      self$`rookie` <- this_object$`rookie`
      self$`captain` <- this_object$`captain`
      self$`alternate_captain` <- this_object$`alternate_captain`
      self$`status` <- this_object$`status`
      self$`active` <- this_object$`active`
      self$`player` <- PlayerPublic$new()$fromJSON(jsonlite::toJSON(this_object$`player`, auto_unbox = TRUE, digits = NA))
      self$`game` <- GamePublic$new()$fromJSON(jsonlite::toJSON(this_object$`game`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to RosterPublic and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RosterPublic: the required field `game_id` is missing."))
      }
      # check the required field `team`
      if (!is.null(input_json$`team`)) {
        if (!(is.character(input_json$`team`) && length(input_json$`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", input_json$`team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RosterPublic: the required field `team` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RosterPublic
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
      # check if the required `game_id` is null
      if (is.null(self$`game_id`)) {
        invalid_fields["game_id"] <- "Non-nullable required field `game_id` cannot be null."
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
# RosterPublic$unlock()
#
## Below is an example to define the print function
# RosterPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RosterPublic$lock()

