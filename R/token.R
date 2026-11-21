#' Create a new Token
#'
#' @description
#' Token Class
#'
#' @docType class
#' @title Token
#' @description Token Class
#' @format An \code{R6Class} generator object
#' @field access_token  character
#' @field token_type  character [optional]
#' @field expires_in  integer
#' @field refresh_token  character [optional]
#' @field first_sign_in  character [optional]
#' @field issued_token_type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Token <- R6::R6Class(
  "Token",
  public = list(
    `access_token` = NULL,
    `token_type` = NULL,
    `expires_in` = NULL,
    `refresh_token` = NULL,
    `first_sign_in` = NULL,
    `issued_token_type` = NULL,

    #' @description
    #' Initialize a new Token class.
    #'
    #' @param access_token access_token
    #' @param expires_in expires_in
    #' @param token_type token_type. Default to "Bearer".
    #' @param refresh_token refresh_token
    #' @param first_sign_in first_sign_in. Default to FALSE.
    #' @param issued_token_type issued_token_type
    #' @param ... Other optional arguments.
    initialize = function(`access_token`, `expires_in`, `token_type` = "Bearer", `refresh_token` = NULL, `first_sign_in` = FALSE, `issued_token_type` = NULL, ...) {
      if (!missing(`access_token`)) {
        if (!(is.character(`access_token`) && length(`access_token`) == 1)) {
          stop(paste("Error! Invalid data for `access_token`. Must be a string:", `access_token`))
        }
        self$`access_token` <- `access_token`
      }
      if (!missing(`expires_in`)) {
        if (!(is.numeric(`expires_in`) && length(`expires_in`) == 1)) {
          stop(paste("Error! Invalid data for `expires_in`. Must be an integer:", `expires_in`))
        }
        self$`expires_in` <- `expires_in`
      }
      if (!is.null(`token_type`)) {
        if (!(is.character(`token_type`) && length(`token_type`) == 1)) {
          stop(paste("Error! Invalid data for `token_type`. Must be a string:", `token_type`))
        }
        self$`token_type` <- `token_type`
      }
      if (!is.null(`refresh_token`)) {
        if (!(is.character(`refresh_token`) && length(`refresh_token`) == 1)) {
          stop(paste("Error! Invalid data for `refresh_token`. Must be a string:", `refresh_token`))
        }
        self$`refresh_token` <- `refresh_token`
      }
      if (!is.null(`first_sign_in`)) {
        if (!(is.logical(`first_sign_in`) && length(`first_sign_in`) == 1)) {
          stop(paste("Error! Invalid data for `first_sign_in`. Must be a boolean:", `first_sign_in`))
        }
        self$`first_sign_in` <- `first_sign_in`
      }
      if (!is.null(`issued_token_type`)) {
        if (!(is.character(`issued_token_type`) && length(`issued_token_type`) == 1)) {
          stop(paste("Error! Invalid data for `issued_token_type`. Must be a string:", `issued_token_type`))
        }
        self$`issued_token_type` <- `issued_token_type`
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
    #' @return Token as a base R list.
    #' @examples
    #' # convert array of Token (x) to a data frame
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
    #' Convert Token to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TokenObject <- list()
      if (!is.null(self$`access_token`)) {
        TokenObject[["access_token"]] <-
          self$`access_token`
      }
      if (!is.null(self$`token_type`)) {
        TokenObject[["token_type"]] <-
          self$`token_type`
      }
      if (!is.null(self$`expires_in`)) {
        TokenObject[["expires_in"]] <-
          self$`expires_in`
      }
      if (!is.null(self$`refresh_token`)) {
        TokenObject[["refresh_token"]] <-
          self$`refresh_token`
      }
      if (!is.null(self$`first_sign_in`)) {
        TokenObject[["first_sign_in"]] <-
          self$`first_sign_in`
      }
      if (!is.null(self$`issued_token_type`)) {
        TokenObject[["issued_token_type"]] <-
          self$`issued_token_type`
      }
      return(TokenObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Token
    #'
    #' @param input_json the JSON input
    #' @return the instance of Token
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`access_token`)) {
        self$`access_token` <- this_object$`access_token`
      }
      if (!is.null(this_object$`token_type`)) {
        self$`token_type` <- this_object$`token_type`
      }
      if (!is.null(this_object$`expires_in`)) {
        self$`expires_in` <- this_object$`expires_in`
      }
      if (!is.null(this_object$`refresh_token`)) {
        self$`refresh_token` <- this_object$`refresh_token`
      }
      if (!is.null(this_object$`first_sign_in`)) {
        self$`first_sign_in` <- this_object$`first_sign_in`
      }
      if (!is.null(this_object$`issued_token_type`)) {
        self$`issued_token_type` <- this_object$`issued_token_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Token in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Token
    #'
    #' @param input_json the JSON input
    #' @return the instance of Token
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`access_token` <- this_object$`access_token`
      self$`token_type` <- this_object$`token_type`
      self$`expires_in` <- this_object$`expires_in`
      self$`refresh_token` <- this_object$`refresh_token`
      self$`first_sign_in` <- this_object$`first_sign_in`
      self$`issued_token_type` <- this_object$`issued_token_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to Token and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `access_token`
      if (!is.null(input_json$`access_token`)) {
        if (!(is.character(input_json$`access_token`) && length(input_json$`access_token`) == 1)) {
          stop(paste("Error! Invalid data for `access_token`. Must be a string:", input_json$`access_token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Token: the required field `access_token` is missing."))
      }
      # check the required field `expires_in`
      if (!is.null(input_json$`expires_in`)) {
        if (!(is.numeric(input_json$`expires_in`) && length(input_json$`expires_in`) == 1)) {
          stop(paste("Error! Invalid data for `expires_in`. Must be an integer:", input_json$`expires_in`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Token: the required field `expires_in` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Token
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `access_token` is null
      if (is.null(self$`access_token`)) {
        return(FALSE)
      }

      # check if the required `expires_in` is null
      if (is.null(self$`expires_in`)) {
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
      # check if the required `access_token` is null
      if (is.null(self$`access_token`)) {
        invalid_fields["access_token"] <- "Non-nullable required field `access_token` cannot be null."
      }

      # check if the required `expires_in` is null
      if (is.null(self$`expires_in`)) {
        invalid_fields["expires_in"] <- "Non-nullable required field `expires_in` cannot be null."
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
# Token$unlock()
#
## Below is an example to define the print function
# Token$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Token$lock()

