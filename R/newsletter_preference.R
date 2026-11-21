#' Create a new NewsletterPreference
#'
#' @description
#' The two newsletters, each on or off on its own; None leaves one as it is.
#'
#' @docType class
#' @title NewsletterPreference
#' @description NewsletterPreference Class
#' @format An \code{R6Class} generator object
#' @field announcements  character [optional]
#' @field paid  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NewsletterPreference <- R6::R6Class(
  "NewsletterPreference",
  public = list(
    `announcements` = NULL,
    `paid` = NULL,

    #' @description
    #' Initialize a new NewsletterPreference class.
    #'
    #' @param announcements announcements
    #' @param paid paid
    #' @param ... Other optional arguments.
    initialize = function(`announcements` = NULL, `paid` = NULL, ...) {
      if (!is.null(`announcements`)) {
        if (!(is.logical(`announcements`) && length(`announcements`) == 1)) {
          stop(paste("Error! Invalid data for `announcements`. Must be a boolean:", `announcements`))
        }
        self$`announcements` <- `announcements`
      }
      if (!is.null(`paid`)) {
        if (!(is.logical(`paid`) && length(`paid`) == 1)) {
          stop(paste("Error! Invalid data for `paid`. Must be a boolean:", `paid`))
        }
        self$`paid` <- `paid`
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
    #' @return NewsletterPreference as a base R list.
    #' @examples
    #' # convert array of NewsletterPreference (x) to a data frame
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
    #' Convert NewsletterPreference to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NewsletterPreferenceObject <- list()
      if (!is.null(self$`announcements`)) {
        NewsletterPreferenceObject[["announcements"]] <-
          self$`announcements`
      }
      if (!is.null(self$`paid`)) {
        NewsletterPreferenceObject[["paid"]] <-
          self$`paid`
      }
      return(NewsletterPreferenceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NewsletterPreference
    #'
    #' @param input_json the JSON input
    #' @return the instance of NewsletterPreference
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`announcements`)) {
        self$`announcements` <- this_object$`announcements`
      }
      if (!is.null(this_object$`paid`)) {
        self$`paid` <- this_object$`paid`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NewsletterPreference in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NewsletterPreference
    #'
    #' @param input_json the JSON input
    #' @return the instance of NewsletterPreference
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`announcements` <- this_object$`announcements`
      self$`paid` <- this_object$`paid`
      self
    },

    #' @description
    #' Validate JSON input with respect to NewsletterPreference and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NewsletterPreference
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# NewsletterPreference$unlock()
#
## Below is an example to define the print function
# NewsletterPreference$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NewsletterPreference$lock()

