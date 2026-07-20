#' Create a new TeamPublic
#'
#' @description
#' TeamPublic Class
#'
#' @docType class
#' @title TeamPublic
#' @description TeamPublic Class
#' @format An \code{R6Class} generator object
#' @field code  character
#' @field team_name  character [optional]
#' @field team_id  integer [optional]
#' @field division  character [optional]
#' @field division_id  integer [optional]
#' @field conference  character [optional]
#' @field conference_id  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamPublic <- R6::R6Class(
  "TeamPublic",
  public = list(
    `code` = NULL,
    `team_name` = NULL,
    `team_id` = NULL,
    `division` = NULL,
    `division_id` = NULL,
    `conference` = NULL,
    `conference_id` = NULL,

    #' @description
    #' Initialize a new TeamPublic class.
    #'
    #' @param code code
    #' @param team_name team_name
    #' @param team_id team_id
    #' @param division division
    #' @param division_id division_id
    #' @param conference conference
    #' @param conference_id conference_id
    #' @param ... Other optional arguments.
    initialize = function(`code`, `team_name` = NULL, `team_id` = NULL, `division` = NULL, `division_id` = NULL, `conference` = NULL, `conference_id` = NULL, ...) {
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`team_name`)) {
        if (!(is.character(`team_name`) && length(`team_name`) == 1)) {
          stop(paste("Error! Invalid data for `team_name`. Must be a string:", `team_name`))
        }
        self$`team_name` <- `team_name`
      }
      if (!is.null(`team_id`)) {
        if (!(is.numeric(`team_id`) && length(`team_id`) == 1)) {
          stop(paste("Error! Invalid data for `team_id`. Must be an integer:", `team_id`))
        }
        self$`team_id` <- `team_id`
      }
      if (!is.null(`division`)) {
        if (!(is.character(`division`) && length(`division`) == 1)) {
          stop(paste("Error! Invalid data for `division`. Must be a string:", `division`))
        }
        self$`division` <- `division`
      }
      if (!is.null(`division_id`)) {
        if (!(is.numeric(`division_id`) && length(`division_id`) == 1)) {
          stop(paste("Error! Invalid data for `division_id`. Must be an integer:", `division_id`))
        }
        self$`division_id` <- `division_id`
      }
      if (!is.null(`conference`)) {
        if (!(is.character(`conference`) && length(`conference`) == 1)) {
          stop(paste("Error! Invalid data for `conference`. Must be a string:", `conference`))
        }
        self$`conference` <- `conference`
      }
      if (!is.null(`conference_id`)) {
        if (!(is.numeric(`conference_id`) && length(`conference_id`) == 1)) {
          stop(paste("Error! Invalid data for `conference_id`. Must be an integer:", `conference_id`))
        }
        self$`conference_id` <- `conference_id`
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
    #' @return TeamPublic as a base R list.
    #' @examples
    #' # convert array of TeamPublic (x) to a data frame
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
    #' Convert TeamPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TeamPublicObject <- list()
      if (!is.null(self$`code`)) {
        TeamPublicObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`team_name`)) {
        TeamPublicObject[["team_name"]] <-
          self$`team_name`
      }
      if (!is.null(self$`team_id`)) {
        TeamPublicObject[["team_id"]] <-
          self$`team_id`
      }
      if (!is.null(self$`division`)) {
        TeamPublicObject[["division"]] <-
          self$`division`
      }
      if (!is.null(self$`division_id`)) {
        TeamPublicObject[["division_id"]] <-
          self$`division_id`
      }
      if (!is.null(self$`conference`)) {
        TeamPublicObject[["conference"]] <-
          self$`conference`
      }
      if (!is.null(self$`conference_id`)) {
        TeamPublicObject[["conference_id"]] <-
          self$`conference_id`
      }
      return(TeamPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TeamPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of TeamPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`team_name`)) {
        self$`team_name` <- this_object$`team_name`
      }
      if (!is.null(this_object$`team_id`)) {
        self$`team_id` <- this_object$`team_id`
      }
      if (!is.null(this_object$`division`)) {
        self$`division` <- this_object$`division`
      }
      if (!is.null(this_object$`division_id`)) {
        self$`division_id` <- this_object$`division_id`
      }
      if (!is.null(this_object$`conference`)) {
        self$`conference` <- this_object$`conference`
      }
      if (!is.null(this_object$`conference_id`)) {
        self$`conference_id` <- this_object$`conference_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TeamPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TeamPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of TeamPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`team_name` <- this_object$`team_name`
      self$`team_id` <- this_object$`team_id`
      self$`division` <- this_object$`division`
      self$`division_id` <- this_object$`division_id`
      self$`conference` <- this_object$`conference`
      self$`conference_id` <- this_object$`conference_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to TeamPublic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamPublic: the required field `code` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TeamPublic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      if (nchar(self$`code`) > 3) {
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
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      if (nchar(self$`code`) > 3) {
        invalid_fields["code"] <- "Invalid length for `code`, must be smaller than or equal to 3."
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
# TeamPublic$unlock()
#
## Below is an example to define the print function
# TeamPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TeamPublic$lock()

