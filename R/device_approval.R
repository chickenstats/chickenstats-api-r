#' Create a new DeviceApproval
#'
#' @description
#' DeviceApproval Class
#'
#' @docType class
#' @title DeviceApproval
#' @description DeviceApproval Class
#' @format An \code{R6Class} generator object
#' @field user_code  character
#' @field approve  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeviceApproval <- R6::R6Class(
  "DeviceApproval",
  public = list(
    `user_code` = NULL,
    `approve` = NULL,

    #' @description
    #' Initialize a new DeviceApproval class.
    #'
    #' @param user_code user_code
    #' @param approve approve
    #' @param ... Other optional arguments.
    initialize = function(`user_code`, `approve`, ...) {
      if (!missing(`user_code`)) {
        if (!(is.character(`user_code`) && length(`user_code`) == 1)) {
          stop(paste("Error! Invalid data for `user_code`. Must be a string:", `user_code`))
        }
        self$`user_code` <- `user_code`
      }
      if (!missing(`approve`)) {
        if (!(is.logical(`approve`) && length(`approve`) == 1)) {
          stop(paste("Error! Invalid data for `approve`. Must be a boolean:", `approve`))
        }
        self$`approve` <- `approve`
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
    #' @return DeviceApproval as a base R list.
    #' @examples
    #' # convert array of DeviceApproval (x) to a data frame
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
    #' Convert DeviceApproval to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeviceApprovalObject <- list()
      if (!is.null(self$`user_code`)) {
        DeviceApprovalObject[["user_code"]] <-
          self$`user_code`
      }
      if (!is.null(self$`approve`)) {
        DeviceApprovalObject[["approve"]] <-
          self$`approve`
      }
      return(DeviceApprovalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceApproval
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceApproval
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_code`)) {
        self$`user_code` <- this_object$`user_code`
      }
      if (!is.null(this_object$`approve`)) {
        self$`approve` <- this_object$`approve`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeviceApproval in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceApproval
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceApproval
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_code` <- this_object$`user_code`
      self$`approve` <- this_object$`approve`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeviceApproval and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_code`
      if (!is.null(input_json$`user_code`)) {
        if (!(is.character(input_json$`user_code`) && length(input_json$`user_code`) == 1)) {
          stop(paste("Error! Invalid data for `user_code`. Must be a string:", input_json$`user_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceApproval: the required field `user_code` is missing."))
      }
      # check the required field `approve`
      if (!is.null(input_json$`approve`)) {
        if (!(is.logical(input_json$`approve`) && length(input_json$`approve`) == 1)) {
          stop(paste("Error! Invalid data for `approve`. Must be a boolean:", input_json$`approve`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceApproval: the required field `approve` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeviceApproval
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `user_code` is null
      if (is.null(self$`user_code`)) {
        return(FALSE)
      }

      if (nchar(self$`user_code`) > 32) {
        return(FALSE)
      }

      # check if the required `approve` is null
      if (is.null(self$`approve`)) {
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
      # check if the required `user_code` is null
      if (is.null(self$`user_code`)) {
        invalid_fields["user_code"] <- "Non-nullable required field `user_code` cannot be null."
      }

      if (nchar(self$`user_code`) > 32) {
        invalid_fields["user_code"] <- "Invalid length for `user_code`, must be smaller than or equal to 32."
      }

      # check if the required `approve` is null
      if (is.null(self$`approve`)) {
        invalid_fields["approve"] <- "Non-nullable required field `approve` cannot be null."
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
# DeviceApproval$unlock()
#
## Below is an example to define the print function
# DeviceApproval$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeviceApproval$lock()

