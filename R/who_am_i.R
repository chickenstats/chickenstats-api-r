#' Create a new WhoAmI
#'
#' @description
#' WhoAmI Class
#'
#' @docType class
#' @title WhoAmI
#' @description WhoAmI Class
#' @format An \code{R6Class} generator object
#' @field tier  character
#' @field kind  character
#' @field prefix  character [optional]
#' @field email  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WhoAmI <- R6::R6Class(
  "WhoAmI",
  public = list(
    `tier` = NULL,
    `kind` = NULL,
    `prefix` = NULL,
    `email` = NULL,

    #' @description
    #' Initialize a new WhoAmI class.
    #'
    #' @param tier tier
    #' @param kind kind
    #' @param email email
    #' @param prefix prefix
    #' @param ... Other optional arguments.
    initialize = function(`tier`, `kind`, `email`, `prefix` = NULL, ...) {
      if (!missing(`tier`)) {
        if (!(is.character(`tier`) && length(`tier`) == 1)) {
          stop(paste("Error! Invalid data for `tier`. Must be a string:", `tier`))
        }
        self$`tier` <- `tier`
      }
      if (!missing(`kind`)) {
        if (!(`kind` %in% c("session", "named"))) {
          stop(paste("Error! \"", `kind`, "\" cannot be assigned to `kind`. Must be \"session\", \"named\".", sep = ""))
        }
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
      }
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`prefix`)) {
        if (!(is.character(`prefix`) && length(`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", `prefix`))
        }
        self$`prefix` <- `prefix`
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
    #' @return WhoAmI as a base R list.
    #' @examples
    #' # convert array of WhoAmI (x) to a data frame
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
    #' Convert WhoAmI to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WhoAmIObject <- list()
      if (!is.null(self$`tier`)) {
        WhoAmIObject[["tier"]] <-
          self$`tier`
      }
      if (!is.null(self$`kind`)) {
        WhoAmIObject[["kind"]] <-
          self$`kind`
      }
      if (!is.null(self$`prefix`)) {
        WhoAmIObject[["prefix"]] <-
          self$`prefix`
      }
      if (!is.null(self$`email`)) {
        WhoAmIObject[["email"]] <-
          self$`email`
      }
      return(WhoAmIObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WhoAmI
    #'
    #' @param input_json the JSON input
    #' @return the instance of WhoAmI
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tier`)) {
        self$`tier` <- this_object$`tier`
      }
      if (!is.null(this_object$`kind`)) {
        if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("session", "named"))) {
          stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"session\", \"named\".", sep = ""))
        }
        self$`kind` <- this_object$`kind`
      }
      if (!is.null(this_object$`prefix`)) {
        self$`prefix` <- this_object$`prefix`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WhoAmI in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WhoAmI
    #'
    #' @param input_json the JSON input
    #' @return the instance of WhoAmI
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tier` <- this_object$`tier`
      if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("session", "named"))) {
        stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"session\", \"named\".", sep = ""))
      }
      self$`kind` <- this_object$`kind`
      self$`prefix` <- this_object$`prefix`
      self$`email` <- this_object$`email`
      self
    },

    #' @description
    #' Validate JSON input with respect to WhoAmI and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tier`
      if (!is.null(input_json$`tier`)) {
        if (!(is.character(input_json$`tier`) && length(input_json$`tier`) == 1)) {
          stop(paste("Error! Invalid data for `tier`. Must be a string:", input_json$`tier`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WhoAmI: the required field `tier` is missing."))
      }
      # check the required field `kind`
      if (!is.null(input_json$`kind`)) {
        if (!(is.character(input_json$`kind`) && length(input_json$`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", input_json$`kind`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WhoAmI: the required field `kind` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WhoAmI: the required field `email` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WhoAmI
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `tier` is null
      if (is.null(self$`tier`)) {
        return(FALSE)
      }

      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
        return(FALSE)
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
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
      # check if the required `tier` is null
      if (is.null(self$`tier`)) {
        invalid_fields["tier"] <- "Non-nullable required field `tier` cannot be null."
      }

      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
        invalid_fields["kind"] <- "Non-nullable required field `kind` cannot be null."
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
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
# WhoAmI$unlock()
#
## Below is an example to define the print function
# WhoAmI$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WhoAmI$lock()

