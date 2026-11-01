#' Create a new EmailChangeRequest
#'
#' @description
#' EmailChangeRequest Class
#'
#' @docType class
#' @title EmailChangeRequest
#' @description EmailChangeRequest Class
#' @format An \code{R6Class} generator object
#' @field new_email  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmailChangeRequest <- R6::R6Class(
  "EmailChangeRequest",
  public = list(
    `new_email` = NULL,

    #' @description
    #' Initialize a new EmailChangeRequest class.
    #'
    #' @param new_email new_email
    #' @param ... Other optional arguments.
    initialize = function(`new_email`, ...) {
      if (!missing(`new_email`)) {
        if (!(is.character(`new_email`) && length(`new_email`) == 1)) {
          stop(paste("Error! Invalid data for `new_email`. Must be a string:", `new_email`))
        }
        self$`new_email` <- `new_email`
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
    #' @return EmailChangeRequest as a base R list.
    #' @examples
    #' # convert array of EmailChangeRequest (x) to a data frame
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
    #' Convert EmailChangeRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmailChangeRequestObject <- list()
      if (!is.null(self$`new_email`)) {
        EmailChangeRequestObject[["new_email"]] <-
          self$`new_email`
      }
      return(EmailChangeRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EmailChangeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailChangeRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`new_email`)) {
        self$`new_email` <- this_object$`new_email`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmailChangeRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmailChangeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailChangeRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`new_email` <- this_object$`new_email`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmailChangeRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `new_email`
      if (!is.null(input_json$`new_email`)) {
        if (!(is.character(input_json$`new_email`) && length(input_json$`new_email`) == 1)) {
          stop(paste("Error! Invalid data for `new_email`. Must be a string:", input_json$`new_email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmailChangeRequest: the required field `new_email` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmailChangeRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `new_email` is null
      if (is.null(self$`new_email`)) {
        return(FALSE)
      }

      if (nchar(self$`new_email`) > 255) {
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
      # check if the required `new_email` is null
      if (is.null(self$`new_email`)) {
        invalid_fields["new_email"] <- "Non-nullable required field `new_email` cannot be null."
      }

      if (nchar(self$`new_email`) > 255) {
        invalid_fields["new_email"] <- "Invalid length for `new_email`, must be smaller than or equal to 255."
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
# EmailChangeRequest$unlock()
#
## Below is an example to define the print function
# EmailChangeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmailChangeRequest$lock()

