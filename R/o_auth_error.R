#' Create a new OAuthError
#'
#' @description
#' OAuthError Class
#'
#' @docType class
#' @title OAuthError
#' @description OAuthError Class
#' @format An \code{R6Class} generator object
#' @field error  character [optional]
#' @field error_description  character [optional]
#' @field detail  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OAuthError <- R6::R6Class(
  "OAuthError",
  public = list(
    `error` = NULL,
    `error_description` = NULL,
    `detail` = NULL,

    #' @description
    #' Initialize a new OAuthError class.
    #'
    #' @param error error
    #' @param error_description error_description
    #' @param detail detail
    #' @param ... Other optional arguments.
    initialize = function(`error` = NULL, `error_description` = NULL, `detail` = NULL, ...) {
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`error_description`)) {
        if (!(is.character(`error_description`) && length(`error_description`) == 1)) {
          stop(paste("Error! Invalid data for `error_description`. Must be a string:", `error_description`))
        }
        self$`error_description` <- `error_description`
      }
      if (!is.null(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
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
    #' @return OAuthError as a base R list.
    #' @examples
    #' # convert array of OAuthError (x) to a data frame
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
    #' Convert OAuthError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OAuthErrorObject <- list()
      if (!is.null(self$`error`)) {
        OAuthErrorObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`error_description`)) {
        OAuthErrorObject[["error_description"]] <-
          self$`error_description`
      }
      if (!is.null(self$`detail`)) {
        OAuthErrorObject[["detail"]] <-
          self$`detail`
      }
      return(OAuthErrorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OAuthError
    #'
    #' @param input_json the JSON input
    #' @return the instance of OAuthError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`error_description`)) {
        self$`error_description` <- this_object$`error_description`
      }
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OAuthError in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OAuthError
    #'
    #' @param input_json the JSON input
    #' @return the instance of OAuthError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`error` <- this_object$`error`
      self$`error_description` <- this_object$`error_description`
      self$`detail` <- this_object$`detail`
      self
    },

    #' @description
    #' Validate JSON input with respect to OAuthError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OAuthError
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# OAuthError$unlock()
#
## Below is an example to define the print function
# OAuthError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OAuthError$lock()

