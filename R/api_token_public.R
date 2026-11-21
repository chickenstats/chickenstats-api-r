#' Create a new ApiTokenPublic
#'
#' @description
#' ApiTokenPublic Class
#'
#' @docType class
#' @title ApiTokenPublic
#' @description ApiTokenPublic Class
#' @format An \code{R6Class} generator object
#' @field id  character
#' @field name  character
#' @field prefix  character
#' @field created_at  character
#' @field last_used_at  character
#' @field expires_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiTokenPublic <- R6::R6Class(
  "ApiTokenPublic",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `prefix` = NULL,
    `created_at` = NULL,
    `last_used_at` = NULL,
    `expires_at` = NULL,

    #' @description
    #' Initialize a new ApiTokenPublic class.
    #'
    #' @param id id
    #' @param name name
    #' @param prefix prefix
    #' @param created_at created_at
    #' @param last_used_at last_used_at
    #' @param expires_at expires_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `prefix`, `created_at`, `last_used_at`, `expires_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`prefix`)) {
        if (!(is.character(`prefix`) && length(`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", `prefix`))
        }
        self$`prefix` <- `prefix`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`last_used_at`)) {
        if (!(is.character(`last_used_at`) && length(`last_used_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_used_at`. Must be a string:", `last_used_at`))
        }
        self$`last_used_at` <- `last_used_at`
      }
      if (!missing(`expires_at`)) {
        if (!(is.character(`expires_at`) && length(`expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `expires_at`. Must be a string:", `expires_at`))
        }
        self$`expires_at` <- `expires_at`
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
    #' @return ApiTokenPublic as a base R list.
    #' @examples
    #' # convert array of ApiTokenPublic (x) to a data frame
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
    #' Convert ApiTokenPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApiTokenPublicObject <- list()
      if (!is.null(self$`id`)) {
        ApiTokenPublicObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ApiTokenPublicObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`prefix`)) {
        ApiTokenPublicObject[["prefix"]] <-
          self$`prefix`
      }
      if (!is.null(self$`created_at`)) {
        ApiTokenPublicObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`last_used_at`)) {
        ApiTokenPublicObject[["last_used_at"]] <-
          self$`last_used_at`
      }
      if (!is.null(self$`expires_at`)) {
        ApiTokenPublicObject[["expires_at"]] <-
          self$`expires_at`
      }
      return(ApiTokenPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiTokenPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiTokenPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`prefix`)) {
        self$`prefix` <- this_object$`prefix`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`last_used_at`)) {
        self$`last_used_at` <- this_object$`last_used_at`
      }
      if (!is.null(this_object$`expires_at`)) {
        self$`expires_at` <- this_object$`expires_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApiTokenPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiTokenPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiTokenPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`prefix` <- this_object$`prefix`
      self$`created_at` <- this_object$`created_at`
      self$`last_used_at` <- this_object$`last_used_at`
      self$`expires_at` <- this_object$`expires_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApiTokenPublic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiTokenPublic: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiTokenPublic: the required field `name` is missing."))
      }
      # check the required field `prefix`
      if (!is.null(input_json$`prefix`)) {
        if (!(is.character(input_json$`prefix`) && length(input_json$`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", input_json$`prefix`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiTokenPublic: the required field `prefix` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiTokenPublic: the required field `created_at` is missing."))
      }
      # check the required field `last_used_at`
      if (!is.null(input_json$`last_used_at`)) {
        if (!(is.character(input_json$`last_used_at`) && length(input_json$`last_used_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_used_at`. Must be a string:", input_json$`last_used_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiTokenPublic: the required field `last_used_at` is missing."))
      }
      # check the required field `expires_at`
      if (!is.null(input_json$`expires_at`)) {
        if (!(is.character(input_json$`expires_at`) && length(input_json$`expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `expires_at`. Must be a string:", input_json$`expires_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiTokenPublic: the required field `expires_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiTokenPublic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `prefix` is null
      if (is.null(self$`prefix`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `prefix` is null
      if (is.null(self$`prefix`)) {
        invalid_fields["prefix"] <- "Non-nullable required field `prefix` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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
# ApiTokenPublic$unlock()
#
## Below is an example to define the print function
# ApiTokenPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiTokenPublic$lock()

