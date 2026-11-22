#' Create a new MfaChallenge
#'
#' @description
#' MfaChallenge Class
#'
#' @docType class
#' @title MfaChallenge
#' @description MfaChallenge Class
#' @format An \code{R6Class} generator object
#' @field error  character
#' @field error_description  character
#' @field mfa_token  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MfaChallenge <- R6::R6Class(
  "MfaChallenge",
  public = list(
    `error` = NULL,
    `error_description` = NULL,
    `mfa_token` = NULL,

    #' @description
    #' Initialize a new MfaChallenge class.
    #'
    #' @param error error
    #' @param error_description error_description
    #' @param mfa_token mfa_token
    #' @param ... Other optional arguments.
    initialize = function(`error`, `error_description`, `mfa_token`, ...) {
      if (!missing(`error`)) {
        if (!(`error` %in% c("mfa_required"))) {
          stop(paste("Error! \"", `error`, "\" cannot be assigned to `error`. Must be \"mfa_required\".", sep = ""))
        }
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!missing(`error_description`)) {
        if (!(is.character(`error_description`) && length(`error_description`) == 1)) {
          stop(paste("Error! Invalid data for `error_description`. Must be a string:", `error_description`))
        }
        self$`error_description` <- `error_description`
      }
      if (!missing(`mfa_token`)) {
        if (!(is.character(`mfa_token`) && length(`mfa_token`) == 1)) {
          stop(paste("Error! Invalid data for `mfa_token`. Must be a string:", `mfa_token`))
        }
        self$`mfa_token` <- `mfa_token`
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
    #' @return MfaChallenge as a base R list.
    #' @examples
    #' # convert array of MfaChallenge (x) to a data frame
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
    #' Convert MfaChallenge to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MfaChallengeObject <- list()
      if (!is.null(self$`error`)) {
        MfaChallengeObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`error_description`)) {
        MfaChallengeObject[["error_description"]] <-
          self$`error_description`
      }
      if (!is.null(self$`mfa_token`)) {
        MfaChallengeObject[["mfa_token"]] <-
          self$`mfa_token`
      }
      return(MfaChallengeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MfaChallenge
    #'
    #' @param input_json the JSON input
    #' @return the instance of MfaChallenge
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`error`)) {
        if (!is.null(this_object$`error`) && !(this_object$`error` %in% c("mfa_required"))) {
          stop(paste("Error! \"", this_object$`error`, "\" cannot be assigned to `error`. Must be \"mfa_required\".", sep = ""))
        }
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`error_description`)) {
        self$`error_description` <- this_object$`error_description`
      }
      if (!is.null(this_object$`mfa_token`)) {
        self$`mfa_token` <- this_object$`mfa_token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MfaChallenge in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MfaChallenge
    #'
    #' @param input_json the JSON input
    #' @return the instance of MfaChallenge
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`error`) && !(this_object$`error` %in% c("mfa_required"))) {
        stop(paste("Error! \"", this_object$`error`, "\" cannot be assigned to `error`. Must be \"mfa_required\".", sep = ""))
      }
      self$`error` <- this_object$`error`
      self$`error_description` <- this_object$`error_description`
      self$`mfa_token` <- this_object$`mfa_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to MfaChallenge and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `error`
      if (!is.null(input_json$`error`)) {
        if (!(is.character(input_json$`error`) && length(input_json$`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", input_json$`error`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MfaChallenge: the required field `error` is missing."))
      }
      # check the required field `error_description`
      if (!is.null(input_json$`error_description`)) {
        if (!(is.character(input_json$`error_description`) && length(input_json$`error_description`) == 1)) {
          stop(paste("Error! Invalid data for `error_description`. Must be a string:", input_json$`error_description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MfaChallenge: the required field `error_description` is missing."))
      }
      # check the required field `mfa_token`
      if (!is.null(input_json$`mfa_token`)) {
        if (!(is.character(input_json$`mfa_token`) && length(input_json$`mfa_token`) == 1)) {
          stop(paste("Error! Invalid data for `mfa_token`. Must be a string:", input_json$`mfa_token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MfaChallenge: the required field `mfa_token` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MfaChallenge
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `error` is null
      if (is.null(self$`error`)) {
        return(FALSE)
      }

      # check if the required `error_description` is null
      if (is.null(self$`error_description`)) {
        return(FALSE)
      }

      # check if the required `mfa_token` is null
      if (is.null(self$`mfa_token`)) {
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
      # check if the required `error` is null
      if (is.null(self$`error`)) {
        invalid_fields["error"] <- "Non-nullable required field `error` cannot be null."
      }

      # check if the required `error_description` is null
      if (is.null(self$`error_description`)) {
        invalid_fields["error_description"] <- "Non-nullable required field `error_description` cannot be null."
      }

      # check if the required `mfa_token` is null
      if (is.null(self$`mfa_token`)) {
        invalid_fields["mfa_token"] <- "Non-nullable required field `mfa_token` cannot be null."
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
# MfaChallenge$unlock()
#
## Below is an example to define the print function
# MfaChallenge$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MfaChallenge$lock()

