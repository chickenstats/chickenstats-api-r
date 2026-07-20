#' Create a new PlayerPublic
#'
#' @description
#' PlayerPublic Class
#'
#' @docType class
#' @title PlayerPublic
#' @description PlayerPublic Class
#' @format An \code{R6Class} generator object
#' @field api_id  integer
#' @field eh_id  character [optional]
#' @field name  character
#' @field position  character [optional]
#' @field shoots  character [optional]
#' @field catches  character [optional]
#' @field birth_date  character [optional]
#' @field birth_city  character [optional]
#' @field birth_state_province  character [optional]
#' @field birth_country  character [optional]
#' @field nationality  character [optional]
#' @field height  numeric [optional]
#' @field weight  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlayerPublic <- R6::R6Class(
  "PlayerPublic",
  public = list(
    `api_id` = NULL,
    `eh_id` = NULL,
    `name` = NULL,
    `position` = NULL,
    `shoots` = NULL,
    `catches` = NULL,
    `birth_date` = NULL,
    `birth_city` = NULL,
    `birth_state_province` = NULL,
    `birth_country` = NULL,
    `nationality` = NULL,
    `height` = NULL,
    `weight` = NULL,

    #' @description
    #' Initialize a new PlayerPublic class.
    #'
    #' @param api_id api_id
    #' @param name name
    #' @param eh_id eh_id
    #' @param position position
    #' @param shoots shoots
    #' @param catches catches
    #' @param birth_date birth_date
    #' @param birth_city birth_city
    #' @param birth_state_province birth_state_province
    #' @param birth_country birth_country
    #' @param nationality nationality
    #' @param height height
    #' @param weight weight
    #' @param ... Other optional arguments.
    initialize = function(`api_id`, `name`, `eh_id` = NULL, `position` = NULL, `shoots` = NULL, `catches` = NULL, `birth_date` = NULL, `birth_city` = NULL, `birth_state_province` = NULL, `birth_country` = NULL, `nationality` = NULL, `height` = NULL, `weight` = NULL, ...) {
      if (!missing(`api_id`)) {
        if (!(is.numeric(`api_id`) && length(`api_id`) == 1)) {
          stop(paste("Error! Invalid data for `api_id`. Must be an integer:", `api_id`))
        }
        self$`api_id` <- `api_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`eh_id`)) {
        if (!(is.character(`eh_id`) && length(`eh_id`) == 1)) {
          stop(paste("Error! Invalid data for `eh_id`. Must be a string:", `eh_id`))
        }
        self$`eh_id` <- `eh_id`
      }
      if (!is.null(`position`)) {
        if (!(is.character(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be a string:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`shoots`)) {
        if (!(is.character(`shoots`) && length(`shoots`) == 1)) {
          stop(paste("Error! Invalid data for `shoots`. Must be a string:", `shoots`))
        }
        self$`shoots` <- `shoots`
      }
      if (!is.null(`catches`)) {
        if (!(is.character(`catches`) && length(`catches`) == 1)) {
          stop(paste("Error! Invalid data for `catches`. Must be a string:", `catches`))
        }
        self$`catches` <- `catches`
      }
      if (!is.null(`birth_date`)) {
        if (!is.character(`birth_date`)) {
          stop(paste("Error! Invalid data for `birth_date`. Must be a string:", `birth_date`))
        }
        self$`birth_date` <- `birth_date`
      }
      if (!is.null(`birth_city`)) {
        if (!(is.character(`birth_city`) && length(`birth_city`) == 1)) {
          stop(paste("Error! Invalid data for `birth_city`. Must be a string:", `birth_city`))
        }
        self$`birth_city` <- `birth_city`
      }
      if (!is.null(`birth_state_province`)) {
        if (!(is.character(`birth_state_province`) && length(`birth_state_province`) == 1)) {
          stop(paste("Error! Invalid data for `birth_state_province`. Must be a string:", `birth_state_province`))
        }
        self$`birth_state_province` <- `birth_state_province`
      }
      if (!is.null(`birth_country`)) {
        if (!(is.character(`birth_country`) && length(`birth_country`) == 1)) {
          stop(paste("Error! Invalid data for `birth_country`. Must be a string:", `birth_country`))
        }
        self$`birth_country` <- `birth_country`
      }
      if (!is.null(`nationality`)) {
        if (!(is.character(`nationality`) && length(`nationality`) == 1)) {
          stop(paste("Error! Invalid data for `nationality`. Must be a string:", `nationality`))
        }
        self$`nationality` <- `nationality`
      }
      if (!is.null(`height`)) {
        self$`height` <- `height`
      }
      if (!is.null(`weight`)) {
        if (!(is.numeric(`weight`) && length(`weight`) == 1)) {
          stop(paste("Error! Invalid data for `weight`. Must be an integer:", `weight`))
        }
        self$`weight` <- `weight`
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
    #' @return PlayerPublic as a base R list.
    #' @examples
    #' # convert array of PlayerPublic (x) to a data frame
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
    #' Convert PlayerPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlayerPublicObject <- list()
      if (!is.null(self$`api_id`)) {
        PlayerPublicObject[["api_id"]] <-
          self$`api_id`
      }
      if (!is.null(self$`eh_id`)) {
        PlayerPublicObject[["eh_id"]] <-
          self$`eh_id`
      }
      if (!is.null(self$`name`)) {
        PlayerPublicObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`position`)) {
        PlayerPublicObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`shoots`)) {
        PlayerPublicObject[["shoots"]] <-
          self$`shoots`
      }
      if (!is.null(self$`catches`)) {
        PlayerPublicObject[["catches"]] <-
          self$`catches`
      }
      if (!is.null(self$`birth_date`)) {
        PlayerPublicObject[["birth_date"]] <-
          self$`birth_date`
      }
      if (!is.null(self$`birth_city`)) {
        PlayerPublicObject[["birth_city"]] <-
          self$`birth_city`
      }
      if (!is.null(self$`birth_state_province`)) {
        PlayerPublicObject[["birth_state_province"]] <-
          self$`birth_state_province`
      }
      if (!is.null(self$`birth_country`)) {
        PlayerPublicObject[["birth_country"]] <-
          self$`birth_country`
      }
      if (!is.null(self$`nationality`)) {
        PlayerPublicObject[["nationality"]] <-
          self$`nationality`
      }
      if (!is.null(self$`height`)) {
        PlayerPublicObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`weight`)) {
        PlayerPublicObject[["weight"]] <-
          self$`weight`
      }
      return(PlayerPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PlayerPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlayerPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`api_id`)) {
        self$`api_id` <- this_object$`api_id`
      }
      if (!is.null(this_object$`eh_id`)) {
        self$`eh_id` <- this_object$`eh_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`shoots`)) {
        self$`shoots` <- this_object$`shoots`
      }
      if (!is.null(this_object$`catches`)) {
        self$`catches` <- this_object$`catches`
      }
      if (!is.null(this_object$`birth_date`)) {
        self$`birth_date` <- this_object$`birth_date`
      }
      if (!is.null(this_object$`birth_city`)) {
        self$`birth_city` <- this_object$`birth_city`
      }
      if (!is.null(this_object$`birth_state_province`)) {
        self$`birth_state_province` <- this_object$`birth_state_province`
      }
      if (!is.null(this_object$`birth_country`)) {
        self$`birth_country` <- this_object$`birth_country`
      }
      if (!is.null(this_object$`nationality`)) {
        self$`nationality` <- this_object$`nationality`
      }
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`weight`)) {
        self$`weight` <- this_object$`weight`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlayerPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlayerPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlayerPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`api_id` <- this_object$`api_id`
      self$`eh_id` <- this_object$`eh_id`
      self$`name` <- this_object$`name`
      self$`position` <- this_object$`position`
      self$`shoots` <- this_object$`shoots`
      self$`catches` <- this_object$`catches`
      self$`birth_date` <- this_object$`birth_date`
      self$`birth_city` <- this_object$`birth_city`
      self$`birth_state_province` <- this_object$`birth_state_province`
      self$`birth_country` <- this_object$`birth_country`
      self$`nationality` <- this_object$`nationality`
      self$`height` <- this_object$`height`
      self$`weight` <- this_object$`weight`
      self
    },

    #' @description
    #' Validate JSON input with respect to PlayerPublic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `api_id`
      if (!is.null(input_json$`api_id`)) {
        if (!(is.numeric(input_json$`api_id`) && length(input_json$`api_id`) == 1)) {
          stop(paste("Error! Invalid data for `api_id`. Must be an integer:", input_json$`api_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlayerPublic: the required field `api_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlayerPublic: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlayerPublic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `api_id` is null
      if (is.null(self$`api_id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `api_id` is null
      if (is.null(self$`api_id`)) {
        invalid_fields["api_id"] <- "Non-nullable required field `api_id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# PlayerPublic$unlock()
#
## Below is an example to define the print function
# PlayerPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlayerPublic$lock()

