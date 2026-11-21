#' Create a new RecoveryCodes
#'
#' @description
#' RecoveryCodes Class
#'
#' @docType class
#' @title RecoveryCodes
#' @description RecoveryCodes Class
#' @format An \code{R6Class} generator object
#' @field codes  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecoveryCodes <- R6::R6Class(
  "RecoveryCodes",
  public = list(
    `codes` = NULL,

    #' @description
    #' Initialize a new RecoveryCodes class.
    #'
    #' @param codes codes
    #' @param ... Other optional arguments.
    initialize = function(`codes`, ...) {
      if (!missing(`codes`)) {
        stopifnot(is.vector(`codes`), length(`codes`) != 0)
        sapply(`codes`, function(x) stopifnot(is.character(x)))
        self$`codes` <- `codes`
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
    #' @return RecoveryCodes as a base R list.
    #' @examples
    #' # convert array of RecoveryCodes (x) to a data frame
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
    #' Convert RecoveryCodes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecoveryCodesObject <- list()
      if (!is.null(self$`codes`)) {
        RecoveryCodesObject[["codes"]] <-
          self$`codes`
      }
      return(RecoveryCodesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RecoveryCodes
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecoveryCodes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`codes`)) {
        self$`codes` <- ApiClient$new()$deserializeObj(this_object$`codes`, "array[character]", loadNamespace("chickenstats.api"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RecoveryCodes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecoveryCodes
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecoveryCodes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`codes` <- ApiClient$new()$deserializeObj(this_object$`codes`, "array[character]", loadNamespace("chickenstats.api"))
      self
    },

    #' @description
    #' Validate JSON input with respect to RecoveryCodes and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `codes`
      if (!is.null(input_json$`codes`)) {
        stopifnot(is.vector(input_json$`codes`), length(input_json$`codes`) != 0)
        tmp <- sapply(input_json$`codes`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecoveryCodes: the required field `codes` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecoveryCodes
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `codes` is null
      if (is.null(self$`codes`)) {
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
      # check if the required `codes` is null
      if (is.null(self$`codes`)) {
        invalid_fields["codes"] <- "Non-nullable required field `codes` cannot be null."
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
# RecoveryCodes$unlock()
#
## Below is an example to define the print function
# RecoveryCodes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecoveryCodes$lock()

