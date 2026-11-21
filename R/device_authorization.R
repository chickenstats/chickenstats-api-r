#' Create a new DeviceAuthorization
#'
#' @description
#' DeviceAuthorization Class
#'
#' @docType class
#' @title DeviceAuthorization
#' @description DeviceAuthorization Class
#' @format An \code{R6Class} generator object
#' @field device_code  character
#' @field user_code  character
#' @field verification_uri  character
#' @field verification_uri_complete  character
#' @field expires_in  integer
#' @field interval  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeviceAuthorization <- R6::R6Class(
  "DeviceAuthorization",
  public = list(
    `device_code` = NULL,
    `user_code` = NULL,
    `verification_uri` = NULL,
    `verification_uri_complete` = NULL,
    `expires_in` = NULL,
    `interval` = NULL,

    #' @description
    #' Initialize a new DeviceAuthorization class.
    #'
    #' @param device_code device_code
    #' @param user_code user_code
    #' @param verification_uri verification_uri
    #' @param verification_uri_complete verification_uri_complete
    #' @param expires_in expires_in
    #' @param interval interval
    #' @param ... Other optional arguments.
    initialize = function(`device_code`, `user_code`, `verification_uri`, `verification_uri_complete`, `expires_in`, `interval`, ...) {
      if (!missing(`device_code`)) {
        if (!(is.character(`device_code`) && length(`device_code`) == 1)) {
          stop(paste("Error! Invalid data for `device_code`. Must be a string:", `device_code`))
        }
        self$`device_code` <- `device_code`
      }
      if (!missing(`user_code`)) {
        if (!(is.character(`user_code`) && length(`user_code`) == 1)) {
          stop(paste("Error! Invalid data for `user_code`. Must be a string:", `user_code`))
        }
        self$`user_code` <- `user_code`
      }
      if (!missing(`verification_uri`)) {
        if (!(is.character(`verification_uri`) && length(`verification_uri`) == 1)) {
          stop(paste("Error! Invalid data for `verification_uri`. Must be a string:", `verification_uri`))
        }
        self$`verification_uri` <- `verification_uri`
      }
      if (!missing(`verification_uri_complete`)) {
        if (!(is.character(`verification_uri_complete`) && length(`verification_uri_complete`) == 1)) {
          stop(paste("Error! Invalid data for `verification_uri_complete`. Must be a string:", `verification_uri_complete`))
        }
        self$`verification_uri_complete` <- `verification_uri_complete`
      }
      if (!missing(`expires_in`)) {
        if (!(is.numeric(`expires_in`) && length(`expires_in`) == 1)) {
          stop(paste("Error! Invalid data for `expires_in`. Must be an integer:", `expires_in`))
        }
        self$`expires_in` <- `expires_in`
      }
      if (!missing(`interval`)) {
        if (!(is.numeric(`interval`) && length(`interval`) == 1)) {
          stop(paste("Error! Invalid data for `interval`. Must be an integer:", `interval`))
        }
        self$`interval` <- `interval`
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
    #' @return DeviceAuthorization as a base R list.
    #' @examples
    #' # convert array of DeviceAuthorization (x) to a data frame
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
    #' Convert DeviceAuthorization to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeviceAuthorizationObject <- list()
      if (!is.null(self$`device_code`)) {
        DeviceAuthorizationObject[["device_code"]] <-
          self$`device_code`
      }
      if (!is.null(self$`user_code`)) {
        DeviceAuthorizationObject[["user_code"]] <-
          self$`user_code`
      }
      if (!is.null(self$`verification_uri`)) {
        DeviceAuthorizationObject[["verification_uri"]] <-
          self$`verification_uri`
      }
      if (!is.null(self$`verification_uri_complete`)) {
        DeviceAuthorizationObject[["verification_uri_complete"]] <-
          self$`verification_uri_complete`
      }
      if (!is.null(self$`expires_in`)) {
        DeviceAuthorizationObject[["expires_in"]] <-
          self$`expires_in`
      }
      if (!is.null(self$`interval`)) {
        DeviceAuthorizationObject[["interval"]] <-
          self$`interval`
      }
      return(DeviceAuthorizationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceAuthorization
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceAuthorization
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`device_code`)) {
        self$`device_code` <- this_object$`device_code`
      }
      if (!is.null(this_object$`user_code`)) {
        self$`user_code` <- this_object$`user_code`
      }
      if (!is.null(this_object$`verification_uri`)) {
        self$`verification_uri` <- this_object$`verification_uri`
      }
      if (!is.null(this_object$`verification_uri_complete`)) {
        self$`verification_uri_complete` <- this_object$`verification_uri_complete`
      }
      if (!is.null(this_object$`expires_in`)) {
        self$`expires_in` <- this_object$`expires_in`
      }
      if (!is.null(this_object$`interval`)) {
        self$`interval` <- this_object$`interval`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeviceAuthorization in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceAuthorization
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceAuthorization
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`device_code` <- this_object$`device_code`
      self$`user_code` <- this_object$`user_code`
      self$`verification_uri` <- this_object$`verification_uri`
      self$`verification_uri_complete` <- this_object$`verification_uri_complete`
      self$`expires_in` <- this_object$`expires_in`
      self$`interval` <- this_object$`interval`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeviceAuthorization and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `device_code`
      if (!is.null(input_json$`device_code`)) {
        if (!(is.character(input_json$`device_code`) && length(input_json$`device_code`) == 1)) {
          stop(paste("Error! Invalid data for `device_code`. Must be a string:", input_json$`device_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceAuthorization: the required field `device_code` is missing."))
      }
      # check the required field `user_code`
      if (!is.null(input_json$`user_code`)) {
        if (!(is.character(input_json$`user_code`) && length(input_json$`user_code`) == 1)) {
          stop(paste("Error! Invalid data for `user_code`. Must be a string:", input_json$`user_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceAuthorization: the required field `user_code` is missing."))
      }
      # check the required field `verification_uri`
      if (!is.null(input_json$`verification_uri`)) {
        if (!(is.character(input_json$`verification_uri`) && length(input_json$`verification_uri`) == 1)) {
          stop(paste("Error! Invalid data for `verification_uri`. Must be a string:", input_json$`verification_uri`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceAuthorization: the required field `verification_uri` is missing."))
      }
      # check the required field `verification_uri_complete`
      if (!is.null(input_json$`verification_uri_complete`)) {
        if (!(is.character(input_json$`verification_uri_complete`) && length(input_json$`verification_uri_complete`) == 1)) {
          stop(paste("Error! Invalid data for `verification_uri_complete`. Must be a string:", input_json$`verification_uri_complete`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceAuthorization: the required field `verification_uri_complete` is missing."))
      }
      # check the required field `expires_in`
      if (!is.null(input_json$`expires_in`)) {
        if (!(is.numeric(input_json$`expires_in`) && length(input_json$`expires_in`) == 1)) {
          stop(paste("Error! Invalid data for `expires_in`. Must be an integer:", input_json$`expires_in`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceAuthorization: the required field `expires_in` is missing."))
      }
      # check the required field `interval`
      if (!is.null(input_json$`interval`)) {
        if (!(is.numeric(input_json$`interval`) && length(input_json$`interval`) == 1)) {
          stop(paste("Error! Invalid data for `interval`. Must be an integer:", input_json$`interval`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceAuthorization: the required field `interval` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeviceAuthorization
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `device_code` is null
      if (is.null(self$`device_code`)) {
        return(FALSE)
      }

      # check if the required `user_code` is null
      if (is.null(self$`user_code`)) {
        return(FALSE)
      }

      # check if the required `verification_uri` is null
      if (is.null(self$`verification_uri`)) {
        return(FALSE)
      }

      # check if the required `verification_uri_complete` is null
      if (is.null(self$`verification_uri_complete`)) {
        return(FALSE)
      }

      # check if the required `expires_in` is null
      if (is.null(self$`expires_in`)) {
        return(FALSE)
      }

      # check if the required `interval` is null
      if (is.null(self$`interval`)) {
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
      # check if the required `device_code` is null
      if (is.null(self$`device_code`)) {
        invalid_fields["device_code"] <- "Non-nullable required field `device_code` cannot be null."
      }

      # check if the required `user_code` is null
      if (is.null(self$`user_code`)) {
        invalid_fields["user_code"] <- "Non-nullable required field `user_code` cannot be null."
      }

      # check if the required `verification_uri` is null
      if (is.null(self$`verification_uri`)) {
        invalid_fields["verification_uri"] <- "Non-nullable required field `verification_uri` cannot be null."
      }

      # check if the required `verification_uri_complete` is null
      if (is.null(self$`verification_uri_complete`)) {
        invalid_fields["verification_uri_complete"] <- "Non-nullable required field `verification_uri_complete` cannot be null."
      }

      # check if the required `expires_in` is null
      if (is.null(self$`expires_in`)) {
        invalid_fields["expires_in"] <- "Non-nullable required field `expires_in` cannot be null."
      }

      # check if the required `interval` is null
      if (is.null(self$`interval`)) {
        invalid_fields["interval"] <- "Non-nullable required field `interval` cannot be null."
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
# DeviceAuthorization$unlock()
#
## Below is an example to define the print function
# DeviceAuthorization$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeviceAuthorization$lock()

