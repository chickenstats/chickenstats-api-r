#' Create a new SignInMethods
#'
#' @description
#' SignInMethods Class
#'
#' @docType class
#' @title SignInMethods
#' @description SignInMethods Class
#' @format An \code{R6Class} generator object
#' @field methods  list(character)
#' @field authenticator  character [optional]
#' @field recovery_codes  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SignInMethods <- R6::R6Class(
  "SignInMethods",
  public = list(
    `methods` = NULL,
    `authenticator` = NULL,
    `recovery_codes` = NULL,

    #' @description
    #' Initialize a new SignInMethods class.
    #'
    #' @param methods methods
    #' @param authenticator authenticator. Default to FALSE.
    #' @param recovery_codes recovery_codes. Default to 0.
    #' @param ... Other optional arguments.
    initialize = function(`methods`, `authenticator` = FALSE, `recovery_codes` = 0, ...) {
      if (!missing(`methods`)) {
        stopifnot(is.vector(`methods`), length(`methods`) != 0)
        sapply(`methods`, function(x) stopifnot(is.character(x)))
        self$`methods` <- `methods`
      }
      if (!is.null(`authenticator`)) {
        if (!(is.logical(`authenticator`) && length(`authenticator`) == 1)) {
          stop(paste("Error! Invalid data for `authenticator`. Must be a boolean:", `authenticator`))
        }
        self$`authenticator` <- `authenticator`
      }
      if (!is.null(`recovery_codes`)) {
        if (!(is.numeric(`recovery_codes`) && length(`recovery_codes`) == 1)) {
          stop(paste("Error! Invalid data for `recovery_codes`. Must be an integer:", `recovery_codes`))
        }
        self$`recovery_codes` <- `recovery_codes`
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
    #' @return SignInMethods as a base R list.
    #' @examples
    #' # convert array of SignInMethods (x) to a data frame
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
    #' Convert SignInMethods to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SignInMethodsObject <- list()
      if (!is.null(self$`methods`)) {
        SignInMethodsObject[["methods"]] <-
          self$`methods`
      }
      if (!is.null(self$`authenticator`)) {
        SignInMethodsObject[["authenticator"]] <-
          self$`authenticator`
      }
      if (!is.null(self$`recovery_codes`)) {
        SignInMethodsObject[["recovery_codes"]] <-
          self$`recovery_codes`
      }
      return(SignInMethodsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SignInMethods
    #'
    #' @param input_json the JSON input
    #' @return the instance of SignInMethods
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`methods`)) {
        self$`methods` <- ApiClient$new()$deserializeObj(this_object$`methods`, "array[character]", loadNamespace("chickenstats.api"))
      }
      if (!is.null(this_object$`authenticator`)) {
        self$`authenticator` <- this_object$`authenticator`
      }
      if (!is.null(this_object$`recovery_codes`)) {
        self$`recovery_codes` <- this_object$`recovery_codes`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SignInMethods in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SignInMethods
    #'
    #' @param input_json the JSON input
    #' @return the instance of SignInMethods
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`methods` <- ApiClient$new()$deserializeObj(this_object$`methods`, "array[character]", loadNamespace("chickenstats.api"))
      self$`authenticator` <- this_object$`authenticator`
      self$`recovery_codes` <- this_object$`recovery_codes`
      self
    },

    #' @description
    #' Validate JSON input with respect to SignInMethods and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `methods`
      if (!is.null(input_json$`methods`)) {
        stopifnot(is.vector(input_json$`methods`), length(input_json$`methods`) != 0)
        tmp <- sapply(input_json$`methods`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SignInMethods: the required field `methods` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SignInMethods
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `methods` is null
      if (is.null(self$`methods`)) {
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
      # check if the required `methods` is null
      if (is.null(self$`methods`)) {
        invalid_fields["methods"] <- "Non-nullable required field `methods` cannot be null."
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
# SignInMethods$unlock()
#
## Below is an example to define the print function
# SignInMethods$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SignInMethods$lock()

