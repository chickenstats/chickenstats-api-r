#' Create a new EmailVerified
#'
#' @description
#' EmailVerified Class
#'
#' @docType class
#' @title EmailVerified
#' @description EmailVerified Class
#' @format An \code{R6Class} generator object
#' @field message  character
#' @field password_token  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmailVerified <- R6::R6Class(
  "EmailVerified",
  public = list(
    `message` = NULL,
    `password_token` = NULL,

    #' @description
    #' Initialize a new EmailVerified class.
    #'
    #' @param message message
    #' @param password_token password_token
    #' @param ... Other optional arguments.
    initialize = function(`message`, `password_token` = NULL, ...) {
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`password_token`)) {
        if (!(is.character(`password_token`) && length(`password_token`) == 1)) {
          stop(paste("Error! Invalid data for `password_token`. Must be a string:", `password_token`))
        }
        self$`password_token` <- `password_token`
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
    #' @return EmailVerified as a base R list.
    #' @examples
    #' # convert array of EmailVerified (x) to a data frame
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
    #' Convert EmailVerified to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmailVerifiedObject <- list()
      if (!is.null(self$`message`)) {
        EmailVerifiedObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`password_token`)) {
        EmailVerifiedObject[["password_token"]] <-
          self$`password_token`
      }
      return(EmailVerifiedObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EmailVerified
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailVerified
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`password_token`)) {
        self$`password_token` <- this_object$`password_token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmailVerified in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmailVerified
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailVerified
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`password_token` <- this_object$`password_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmailVerified and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        if (!(is.character(input_json$`message`) && length(input_json$`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", input_json$`message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmailVerified: the required field `message` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmailVerified
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `message` is null
      if (is.null(self$`message`)) {
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
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
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
# EmailVerified$unlock()
#
## Below is an example to define the print function
# EmailVerified$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmailVerified$lock()

