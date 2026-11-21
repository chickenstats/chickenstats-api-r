#' Create a new UserRegister
#'
#' @description
#' UserRegister Class
#'
#' @docType class
#' @title UserRegister
#' @description UserRegister Class
#' @format An \code{R6Class} generator object
#' @field email  character
#' @field full_name  character [optional]
#' @field newsletter  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserRegister <- R6::R6Class(
  "UserRegister",
  public = list(
    `email` = NULL,
    `full_name` = NULL,
    `newsletter` = NULL,

    #' @description
    #' Initialize a new UserRegister class.
    #'
    #' @param email email
    #' @param full_name full_name
    #' @param newsletter newsletter. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`email`, `full_name` = NULL, `newsletter` = FALSE, ...) {
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`full_name`)) {
        if (!(is.character(`full_name`) && length(`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", `full_name`))
        }
        self$`full_name` <- `full_name`
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
    #' @return UserRegister as a base R list.
    #' @examples
    #' # convert array of UserRegister (x) to a data frame
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
    #' Convert UserRegister to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserRegisterObject <- list()
      if (!is.null(self$`email`)) {
        UserRegisterObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`full_name`)) {
        UserRegisterObject[["full_name"]] <-
          self$`full_name`
      }
      if (!is.null(self$`newsletter`)) {
        UserRegisterObject[["newsletter"]] <-
          self$`newsletter`
      }
      return(UserRegisterObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UserRegister
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserRegister
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`full_name`)) {
        self$`full_name` <- this_object$`full_name`
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
    #' @return UserRegister in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserRegister
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserRegister
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`email` <- this_object$`email`
      self$`full_name` <- this_object$`full_name`
      self$`newsletter` <- this_object$`newsletter`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserRegister and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserRegister: the required field `email` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserRegister
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      if (nchar(self$`email`) > 255) {
        return(FALSE)
      }

      if (nchar(self$`full_name`) > 255) {
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
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      if (nchar(self$`email`) > 255) {
        invalid_fields["email"] <- "Invalid length for `email`, must be smaller than or equal to 255."
      }

      if (nchar(self$`full_name`) > 255) {
        invalid_fields["full_name"] <- "Invalid length for `full_name`, must be smaller than or equal to 255."
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
# UserRegister$unlock()
#
## Below is an example to define the print function
# UserRegister$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserRegister$lock()

