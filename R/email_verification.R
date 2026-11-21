#' Create a new EmailVerification
#'
#' @description
#' EmailVerification Class
#'
#' @docType class
#' @title EmailVerification
#' @description EmailVerification Class
#' @format An \code{R6Class} generator object
#' @field oob_code  character
#' @field newsletter  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmailVerification <- R6::R6Class(
  "EmailVerification",
  public = list(
    `oob_code` = NULL,
    `newsletter` = NULL,

    #' @description
    #' Initialize a new EmailVerification class.
    #'
    #' @param oob_code oob_code
    #' @param newsletter newsletter. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`oob_code`, `newsletter` = FALSE, ...) {
      if (!missing(`oob_code`)) {
        if (!(is.character(`oob_code`) && length(`oob_code`) == 1)) {
          stop(paste("Error! Invalid data for `oob_code`. Must be a string:", `oob_code`))
        }
        self$`oob_code` <- `oob_code`
      }
      if (!is.null(`newsletter`)) {
        if (!(is.logical(`newsletter`) && length(`newsletter`) == 1)) {
          stop(paste("Error! Invalid data for `newsletter`. Must be a boolean:", `newsletter`))
        }
        self$`newsletter` <- `newsletter`
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
    #' @return EmailVerification as a base R list.
    #' @examples
    #' # convert array of EmailVerification (x) to a data frame
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
    #' Convert EmailVerification to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmailVerificationObject <- list()
      if (!is.null(self$`oob_code`)) {
        EmailVerificationObject[["oob_code"]] <-
          self$`oob_code`
      }
      if (!is.null(self$`newsletter`)) {
        EmailVerificationObject[["newsletter"]] <-
          self$`newsletter`
      }
      return(EmailVerificationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EmailVerification
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailVerification
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`oob_code`)) {
        self$`oob_code` <- this_object$`oob_code`
      }
      if (!is.null(this_object$`newsletter`)) {
        self$`newsletter` <- this_object$`newsletter`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmailVerification in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmailVerification
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailVerification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`oob_code` <- this_object$`oob_code`
      self$`newsletter` <- this_object$`newsletter`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmailVerification and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `oob_code`
      if (!is.null(input_json$`oob_code`)) {
        if (!(is.character(input_json$`oob_code`) && length(input_json$`oob_code`) == 1)) {
          stop(paste("Error! Invalid data for `oob_code`. Must be a string:", input_json$`oob_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmailVerification: the required field `oob_code` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmailVerification
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `oob_code` is null
      if (is.null(self$`oob_code`)) {
        return(FALSE)
      }

      if (nchar(self$`oob_code`) > 512) {
        return(FALSE)
      }
      if (nchar(self$`oob_code`) < 1) {
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
      # check if the required `oob_code` is null
      if (is.null(self$`oob_code`)) {
        invalid_fields["oob_code"] <- "Non-nullable required field `oob_code` cannot be null."
      }

      if (nchar(self$`oob_code`) > 512) {
        invalid_fields["oob_code"] <- "Invalid length for `oob_code`, must be smaller than or equal to 512."
      }
      if (nchar(self$`oob_code`) < 1) {
        invalid_fields["oob_code"] <- "Invalid length for `oob_code`, must be bigger than or equal to 1."
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
# EmailVerification$unlock()
#
## Below is an example to define the print function
# EmailVerification$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmailVerification$lock()

