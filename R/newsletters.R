#' Create a new Newsletters
#'
#' @description
#' Newsletters Class
#'
#' @docType class
#' @title Newsletters
#' @description Newsletters Class
#' @format An \code{R6Class} generator object
#' @field announcements  character
#' @field paid  character
#' @field paid_access  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Newsletters <- R6::R6Class(
  "Newsletters",
  public = list(
    `announcements` = NULL,
    `paid` = NULL,
    `paid_access` = NULL,

    #' @description
    #' Initialize a new Newsletters class.
    #'
    #' @param announcements announcements
    #' @param paid paid
    #' @param paid_access paid_access
    #' @param ... Other optional arguments.
    initialize = function(`announcements`, `paid`, `paid_access`, ...) {
      if (!missing(`announcements`)) {
        if (!(is.logical(`announcements`) && length(`announcements`) == 1)) {
          stop(paste("Error! Invalid data for `announcements`. Must be a boolean:", `announcements`))
        }
        self$`announcements` <- `announcements`
      }
      if (!missing(`paid`)) {
        if (!(is.logical(`paid`) && length(`paid`) == 1)) {
          stop(paste("Error! Invalid data for `paid`. Must be a boolean:", `paid`))
        }
        self$`paid` <- `paid`
      }
      if (!missing(`paid_access`)) {
        if (!(is.logical(`paid_access`) && length(`paid_access`) == 1)) {
          stop(paste("Error! Invalid data for `paid_access`. Must be a boolean:", `paid_access`))
        }
        self$`paid_access` <- `paid_access`
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
    #' @return Newsletters as a base R list.
    #' @examples
    #' # convert array of Newsletters (x) to a data frame
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
    #' Convert Newsletters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NewslettersObject <- list()
      if (!is.null(self$`announcements`)) {
        NewslettersObject[["announcements"]] <-
          self$`announcements`
      }
      if (!is.null(self$`paid`)) {
        NewslettersObject[["paid"]] <-
          self$`paid`
      }
      if (!is.null(self$`paid_access`)) {
        NewslettersObject[["paid_access"]] <-
          self$`paid_access`
      }
      return(NewslettersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Newsletters
    #'
    #' @param input_json the JSON input
    #' @return the instance of Newsletters
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`announcements`)) {
        self$`announcements` <- this_object$`announcements`
      }
      if (!is.null(this_object$`paid`)) {
        self$`paid` <- this_object$`paid`
      }
      if (!is.null(this_object$`paid_access`)) {
        self$`paid_access` <- this_object$`paid_access`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Newsletters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Newsletters
    #'
    #' @param input_json the JSON input
    #' @return the instance of Newsletters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`announcements` <- this_object$`announcements`
      self$`paid` <- this_object$`paid`
      self$`paid_access` <- this_object$`paid_access`
      self
    },

    #' @description
    #' Validate JSON input with respect to Newsletters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `announcements`
      if (!is.null(input_json$`announcements`)) {
        if (!(is.logical(input_json$`announcements`) && length(input_json$`announcements`) == 1)) {
          stop(paste("Error! Invalid data for `announcements`. Must be a boolean:", input_json$`announcements`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Newsletters: the required field `announcements` is missing."))
      }
      # check the required field `paid`
      if (!is.null(input_json$`paid`)) {
        if (!(is.logical(input_json$`paid`) && length(input_json$`paid`) == 1)) {
          stop(paste("Error! Invalid data for `paid`. Must be a boolean:", input_json$`paid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Newsletters: the required field `paid` is missing."))
      }
      # check the required field `paid_access`
      if (!is.null(input_json$`paid_access`)) {
        if (!(is.logical(input_json$`paid_access`) && length(input_json$`paid_access`) == 1)) {
          stop(paste("Error! Invalid data for `paid_access`. Must be a boolean:", input_json$`paid_access`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Newsletters: the required field `paid_access` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Newsletters
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `announcements` is null
      if (is.null(self$`announcements`)) {
        return(FALSE)
      }

      # check if the required `paid` is null
      if (is.null(self$`paid`)) {
        return(FALSE)
      }

      # check if the required `paid_access` is null
      if (is.null(self$`paid_access`)) {
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
      # check if the required `announcements` is null
      if (is.null(self$`announcements`)) {
        invalid_fields["announcements"] <- "Non-nullable required field `announcements` cannot be null."
      }

      # check if the required `paid` is null
      if (is.null(self$`paid`)) {
        invalid_fields["paid"] <- "Non-nullable required field `paid` cannot be null."
      }

      # check if the required `paid_access` is null
      if (is.null(self$`paid_access`)) {
        invalid_fields["paid_access"] <- "Non-nullable required field `paid_access` cannot be null."
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
# Newsletters$unlock()
#
## Below is an example to define the print function
# Newsletters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Newsletters$lock()

