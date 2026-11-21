#' Create a new Usage
#'
#' @description
#' Data requests this calendar month (UTC). No limit means uncounted.
#'
#' @docType class
#' @title Usage
#' @description Usage Class
#' @format An \code{R6Class} generator object
#' @field used  integer
#' @field limit  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Usage <- R6::R6Class(
  "Usage",
  public = list(
    `used` = NULL,
    `limit` = NULL,

    #' @description
    #' Initialize a new Usage class.
    #'
    #' @param used used
    #' @param limit limit
    #' @param ... Other optional arguments.
    initialize = function(`used`, `limit`, ...) {
      if (!missing(`used`)) {
        if (!(is.numeric(`used`) && length(`used`) == 1)) {
          stop(paste("Error! Invalid data for `used`. Must be an integer:", `used`))
        }
        self$`used` <- `used`
      }
      if (!missing(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
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
    #' @return Usage as a base R list.
    #' @examples
    #' # convert array of Usage (x) to a data frame
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
    #' Convert Usage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UsageObject <- list()
      if (!is.null(self$`used`)) {
        UsageObject[["used"]] <-
          self$`used`
      }
      if (!is.null(self$`limit`)) {
        UsageObject[["limit"]] <-
          self$`limit`
      }
      return(UsageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Usage
    #'
    #' @param input_json the JSON input
    #' @return the instance of Usage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`used`)) {
        self$`used` <- this_object$`used`
      }
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Usage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Usage
    #'
    #' @param input_json the JSON input
    #' @return the instance of Usage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`used` <- this_object$`used`
      self$`limit` <- this_object$`limit`
      self
    },

    #' @description
    #' Validate JSON input with respect to Usage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `used`
      if (!is.null(input_json$`used`)) {
        if (!(is.numeric(input_json$`used`) && length(input_json$`used`) == 1)) {
          stop(paste("Error! Invalid data for `used`. Must be an integer:", input_json$`used`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Usage: the required field `used` is missing."))
      }
      # check the required field `limit`
      if (!is.null(input_json$`limit`)) {
        if (!(is.numeric(input_json$`limit`) && length(input_json$`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", input_json$`limit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Usage: the required field `limit` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Usage
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `used` is null
      if (is.null(self$`used`)) {
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
      # check if the required `used` is null
      if (is.null(self$`used`)) {
        invalid_fields["used"] <- "Non-nullable required field `used` cannot be null."
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
# Usage$unlock()
#
## Below is an example to define the print function
# Usage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Usage$lock()

