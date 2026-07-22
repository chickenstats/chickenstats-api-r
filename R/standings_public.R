#' Create a new StandingsPublic
#'
#' @description
#' StandingsPublic Class
#'
#' @docType class
#' @title StandingsPublic
#' @description StandingsPublic Class
#' @format An \code{R6Class} generator object
#' @field season  integer
#' @field team  character
#' @field division_rank  integer [optional]
#' @field conference_rank  integer [optional]
#' @field league_rank  integer [optional]
#' @field division_rank_home  integer [optional]
#' @field division_rank_road  integer [optional]
#' @field division_rank_last10  integer [optional]
#' @field conference_rank_home  integer [optional]
#' @field conference_rank_road  integer [optional]
#' @field conference_rank_last10  integer [optional]
#' @field league_rank_home  integer [optional]
#' @field league_rank_road  integer [optional]
#' @field league_rank_last10  integer [optional]
#' @field wildcard_rank  integer [optional]
#' @field points  integer [optional]
#' @field points_percentage  numeric [optional]
#' @field wins  integer [optional]
#' @field losses  integer [optional]
#' @field otl  integer [optional]
#' @field games_played  integer [optional]
#' @field goals_scored  integer [optional]
#' @field goals_against  integer [optional]
#' @field streak  character [optional]
#' @field pp_rank_division  integer [optional]
#' @field pp_rank_conference  integer [optional]
#' @field pp_rank_league  integer [optional]
#' @field last_updated  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StandingsPublic <- R6::R6Class(
  "StandingsPublic",
  public = list(
    `season` = NULL,
    `team` = NULL,
    `division_rank` = NULL,
    `conference_rank` = NULL,
    `league_rank` = NULL,
    `division_rank_home` = NULL,
    `division_rank_road` = NULL,
    `division_rank_last10` = NULL,
    `conference_rank_home` = NULL,
    `conference_rank_road` = NULL,
    `conference_rank_last10` = NULL,
    `league_rank_home` = NULL,
    `league_rank_road` = NULL,
    `league_rank_last10` = NULL,
    `wildcard_rank` = NULL,
    `points` = NULL,
    `points_percentage` = NULL,
    `wins` = NULL,
    `losses` = NULL,
    `otl` = NULL,
    `games_played` = NULL,
    `goals_scored` = NULL,
    `goals_against` = NULL,
    `streak` = NULL,
    `pp_rank_division` = NULL,
    `pp_rank_conference` = NULL,
    `pp_rank_league` = NULL,
    `last_updated` = NULL,

    #' @description
    #' Initialize a new StandingsPublic class.
    #'
    #' @param season season
    #' @param team team
    #' @param division_rank division_rank
    #' @param conference_rank conference_rank
    #' @param league_rank league_rank
    #' @param division_rank_home division_rank_home
    #' @param division_rank_road division_rank_road
    #' @param division_rank_last10 division_rank_last10
    #' @param conference_rank_home conference_rank_home
    #' @param conference_rank_road conference_rank_road
    #' @param conference_rank_last10 conference_rank_last10
    #' @param league_rank_home league_rank_home
    #' @param league_rank_road league_rank_road
    #' @param league_rank_last10 league_rank_last10
    #' @param wildcard_rank wildcard_rank
    #' @param points points
    #' @param points_percentage points_percentage
    #' @param wins wins
    #' @param losses losses
    #' @param otl otl
    #' @param games_played games_played
    #' @param goals_scored goals_scored
    #' @param goals_against goals_against
    #' @param streak streak
    #' @param pp_rank_division pp_rank_division
    #' @param pp_rank_conference pp_rank_conference
    #' @param pp_rank_league pp_rank_league
    #' @param last_updated last_updated
    #' @param ... Other optional arguments.
    initialize = function(`season`, `team`, `division_rank` = NULL, `conference_rank` = NULL, `league_rank` = NULL, `division_rank_home` = NULL, `division_rank_road` = NULL, `division_rank_last10` = NULL, `conference_rank_home` = NULL, `conference_rank_road` = NULL, `conference_rank_last10` = NULL, `league_rank_home` = NULL, `league_rank_road` = NULL, `league_rank_last10` = NULL, `wildcard_rank` = NULL, `points` = NULL, `points_percentage` = NULL, `wins` = NULL, `losses` = NULL, `otl` = NULL, `games_played` = NULL, `goals_scored` = NULL, `goals_against` = NULL, `streak` = NULL, `pp_rank_division` = NULL, `pp_rank_conference` = NULL, `pp_rank_league` = NULL, `last_updated` = NULL, ...) {
      if (!missing(`season`)) {
        if (!(is.numeric(`season`) && length(`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", `season`))
        }
        self$`season` <- `season`
      }
      if (!missing(`team`)) {
        if (!(is.character(`team`) && length(`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", `team`))
        }
        self$`team` <- `team`
      }
      if (!is.null(`division_rank`)) {
        if (!(is.numeric(`division_rank`) && length(`division_rank`) == 1)) {
          stop(paste("Error! Invalid data for `division_rank`. Must be an integer:", `division_rank`))
        }
        self$`division_rank` <- `division_rank`
      }
      if (!is.null(`conference_rank`)) {
        if (!(is.numeric(`conference_rank`) && length(`conference_rank`) == 1)) {
          stop(paste("Error! Invalid data for `conference_rank`. Must be an integer:", `conference_rank`))
        }
        self$`conference_rank` <- `conference_rank`
      }
      if (!is.null(`league_rank`)) {
        if (!(is.numeric(`league_rank`) && length(`league_rank`) == 1)) {
          stop(paste("Error! Invalid data for `league_rank`. Must be an integer:", `league_rank`))
        }
        self$`league_rank` <- `league_rank`
      }
      if (!is.null(`division_rank_home`)) {
        if (!(is.numeric(`division_rank_home`) && length(`division_rank_home`) == 1)) {
          stop(paste("Error! Invalid data for `division_rank_home`. Must be an integer:", `division_rank_home`))
        }
        self$`division_rank_home` <- `division_rank_home`
      }
      if (!is.null(`division_rank_road`)) {
        if (!(is.numeric(`division_rank_road`) && length(`division_rank_road`) == 1)) {
          stop(paste("Error! Invalid data for `division_rank_road`. Must be an integer:", `division_rank_road`))
        }
        self$`division_rank_road` <- `division_rank_road`
      }
      if (!is.null(`division_rank_last10`)) {
        if (!(is.numeric(`division_rank_last10`) && length(`division_rank_last10`) == 1)) {
          stop(paste("Error! Invalid data for `division_rank_last10`. Must be an integer:", `division_rank_last10`))
        }
        self$`division_rank_last10` <- `division_rank_last10`
      }
      if (!is.null(`conference_rank_home`)) {
        if (!(is.numeric(`conference_rank_home`) && length(`conference_rank_home`) == 1)) {
          stop(paste("Error! Invalid data for `conference_rank_home`. Must be an integer:", `conference_rank_home`))
        }
        self$`conference_rank_home` <- `conference_rank_home`
      }
      if (!is.null(`conference_rank_road`)) {
        if (!(is.numeric(`conference_rank_road`) && length(`conference_rank_road`) == 1)) {
          stop(paste("Error! Invalid data for `conference_rank_road`. Must be an integer:", `conference_rank_road`))
        }
        self$`conference_rank_road` <- `conference_rank_road`
      }
      if (!is.null(`conference_rank_last10`)) {
        if (!(is.numeric(`conference_rank_last10`) && length(`conference_rank_last10`) == 1)) {
          stop(paste("Error! Invalid data for `conference_rank_last10`. Must be an integer:", `conference_rank_last10`))
        }
        self$`conference_rank_last10` <- `conference_rank_last10`
      }
      if (!is.null(`league_rank_home`)) {
        if (!(is.numeric(`league_rank_home`) && length(`league_rank_home`) == 1)) {
          stop(paste("Error! Invalid data for `league_rank_home`. Must be an integer:", `league_rank_home`))
        }
        self$`league_rank_home` <- `league_rank_home`
      }
      if (!is.null(`league_rank_road`)) {
        if (!(is.numeric(`league_rank_road`) && length(`league_rank_road`) == 1)) {
          stop(paste("Error! Invalid data for `league_rank_road`. Must be an integer:", `league_rank_road`))
        }
        self$`league_rank_road` <- `league_rank_road`
      }
      if (!is.null(`league_rank_last10`)) {
        if (!(is.numeric(`league_rank_last10`) && length(`league_rank_last10`) == 1)) {
          stop(paste("Error! Invalid data for `league_rank_last10`. Must be an integer:", `league_rank_last10`))
        }
        self$`league_rank_last10` <- `league_rank_last10`
      }
      if (!is.null(`wildcard_rank`)) {
        if (!(is.numeric(`wildcard_rank`) && length(`wildcard_rank`) == 1)) {
          stop(paste("Error! Invalid data for `wildcard_rank`. Must be an integer:", `wildcard_rank`))
        }
        self$`wildcard_rank` <- `wildcard_rank`
      }
      if (!is.null(`points`)) {
        if (!(is.numeric(`points`) && length(`points`) == 1)) {
          stop(paste("Error! Invalid data for `points`. Must be an integer:", `points`))
        }
        self$`points` <- `points`
      }
      if (!is.null(`points_percentage`)) {
        self$`points_percentage` <- `points_percentage`
      }
      if (!is.null(`wins`)) {
        if (!(is.numeric(`wins`) && length(`wins`) == 1)) {
          stop(paste("Error! Invalid data for `wins`. Must be an integer:", `wins`))
        }
        self$`wins` <- `wins`
      }
      if (!is.null(`losses`)) {
        if (!(is.numeric(`losses`) && length(`losses`) == 1)) {
          stop(paste("Error! Invalid data for `losses`. Must be an integer:", `losses`))
        }
        self$`losses` <- `losses`
      }
      if (!is.null(`otl`)) {
        if (!(is.numeric(`otl`) && length(`otl`) == 1)) {
          stop(paste("Error! Invalid data for `otl`. Must be an integer:", `otl`))
        }
        self$`otl` <- `otl`
      }
      if (!is.null(`games_played`)) {
        if (!(is.numeric(`games_played`) && length(`games_played`) == 1)) {
          stop(paste("Error! Invalid data for `games_played`. Must be an integer:", `games_played`))
        }
        self$`games_played` <- `games_played`
      }
      if (!is.null(`goals_scored`)) {
        if (!(is.numeric(`goals_scored`) && length(`goals_scored`) == 1)) {
          stop(paste("Error! Invalid data for `goals_scored`. Must be an integer:", `goals_scored`))
        }
        self$`goals_scored` <- `goals_scored`
      }
      if (!is.null(`goals_against`)) {
        if (!(is.numeric(`goals_against`) && length(`goals_against`) == 1)) {
          stop(paste("Error! Invalid data for `goals_against`. Must be an integer:", `goals_against`))
        }
        self$`goals_against` <- `goals_against`
      }
      if (!is.null(`streak`)) {
        if (!(is.character(`streak`) && length(`streak`) == 1)) {
          stop(paste("Error! Invalid data for `streak`. Must be a string:", `streak`))
        }
        self$`streak` <- `streak`
      }
      if (!is.null(`pp_rank_division`)) {
        if (!(is.numeric(`pp_rank_division`) && length(`pp_rank_division`) == 1)) {
          stop(paste("Error! Invalid data for `pp_rank_division`. Must be an integer:", `pp_rank_division`))
        }
        self$`pp_rank_division` <- `pp_rank_division`
      }
      if (!is.null(`pp_rank_conference`)) {
        if (!(is.numeric(`pp_rank_conference`) && length(`pp_rank_conference`) == 1)) {
          stop(paste("Error! Invalid data for `pp_rank_conference`. Must be an integer:", `pp_rank_conference`))
        }
        self$`pp_rank_conference` <- `pp_rank_conference`
      }
      if (!is.null(`pp_rank_league`)) {
        if (!(is.numeric(`pp_rank_league`) && length(`pp_rank_league`) == 1)) {
          stop(paste("Error! Invalid data for `pp_rank_league`. Must be an integer:", `pp_rank_league`))
        }
        self$`pp_rank_league` <- `pp_rank_league`
      }
      if (!is.null(`last_updated`)) {
        if (!is.character(`last_updated`)) {
          stop(paste("Error! Invalid data for `last_updated`. Must be a string:", `last_updated`))
        }
        self$`last_updated` <- `last_updated`
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
    #' @return StandingsPublic as a base R list.
    #' @examples
    #' # convert array of StandingsPublic (x) to a data frame
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
    #' Convert StandingsPublic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StandingsPublicObject <- list()
      if (!is.null(self$`season`)) {
        StandingsPublicObject[["season"]] <-
          self$`season`
      }
      if (!is.null(self$`team`)) {
        StandingsPublicObject[["team"]] <-
          self$`team`
      }
      if (!is.null(self$`division_rank`)) {
        StandingsPublicObject[["division_rank"]] <-
          self$`division_rank`
      }
      if (!is.null(self$`conference_rank`)) {
        StandingsPublicObject[["conference_rank"]] <-
          self$`conference_rank`
      }
      if (!is.null(self$`league_rank`)) {
        StandingsPublicObject[["league_rank"]] <-
          self$`league_rank`
      }
      if (!is.null(self$`division_rank_home`)) {
        StandingsPublicObject[["division_rank_home"]] <-
          self$`division_rank_home`
      }
      if (!is.null(self$`division_rank_road`)) {
        StandingsPublicObject[["division_rank_road"]] <-
          self$`division_rank_road`
      }
      if (!is.null(self$`division_rank_last10`)) {
        StandingsPublicObject[["division_rank_last10"]] <-
          self$`division_rank_last10`
      }
      if (!is.null(self$`conference_rank_home`)) {
        StandingsPublicObject[["conference_rank_home"]] <-
          self$`conference_rank_home`
      }
      if (!is.null(self$`conference_rank_road`)) {
        StandingsPublicObject[["conference_rank_road"]] <-
          self$`conference_rank_road`
      }
      if (!is.null(self$`conference_rank_last10`)) {
        StandingsPublicObject[["conference_rank_last10"]] <-
          self$`conference_rank_last10`
      }
      if (!is.null(self$`league_rank_home`)) {
        StandingsPublicObject[["league_rank_home"]] <-
          self$`league_rank_home`
      }
      if (!is.null(self$`league_rank_road`)) {
        StandingsPublicObject[["league_rank_road"]] <-
          self$`league_rank_road`
      }
      if (!is.null(self$`league_rank_last10`)) {
        StandingsPublicObject[["league_rank_last10"]] <-
          self$`league_rank_last10`
      }
      if (!is.null(self$`wildcard_rank`)) {
        StandingsPublicObject[["wildcard_rank"]] <-
          self$`wildcard_rank`
      }
      if (!is.null(self$`points`)) {
        StandingsPublicObject[["points"]] <-
          self$`points`
      }
      if (!is.null(self$`points_percentage`)) {
        StandingsPublicObject[["points_percentage"]] <-
          self$`points_percentage`
      }
      if (!is.null(self$`wins`)) {
        StandingsPublicObject[["wins"]] <-
          self$`wins`
      }
      if (!is.null(self$`losses`)) {
        StandingsPublicObject[["losses"]] <-
          self$`losses`
      }
      if (!is.null(self$`otl`)) {
        StandingsPublicObject[["otl"]] <-
          self$`otl`
      }
      if (!is.null(self$`games_played`)) {
        StandingsPublicObject[["games_played"]] <-
          self$`games_played`
      }
      if (!is.null(self$`goals_scored`)) {
        StandingsPublicObject[["goals_scored"]] <-
          self$`goals_scored`
      }
      if (!is.null(self$`goals_against`)) {
        StandingsPublicObject[["goals_against"]] <-
          self$`goals_against`
      }
      if (!is.null(self$`streak`)) {
        StandingsPublicObject[["streak"]] <-
          self$`streak`
      }
      if (!is.null(self$`pp_rank_division`)) {
        StandingsPublicObject[["pp_rank_division"]] <-
          self$`pp_rank_division`
      }
      if (!is.null(self$`pp_rank_conference`)) {
        StandingsPublicObject[["pp_rank_conference"]] <-
          self$`pp_rank_conference`
      }
      if (!is.null(self$`pp_rank_league`)) {
        StandingsPublicObject[["pp_rank_league"]] <-
          self$`pp_rank_league`
      }
      if (!is.null(self$`last_updated`)) {
        StandingsPublicObject[["last_updated"]] <-
          self$`last_updated`
      }
      return(StandingsPublicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StandingsPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandingsPublic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`season`)) {
        self$`season` <- this_object$`season`
      }
      if (!is.null(this_object$`team`)) {
        self$`team` <- this_object$`team`
      }
      if (!is.null(this_object$`division_rank`)) {
        self$`division_rank` <- this_object$`division_rank`
      }
      if (!is.null(this_object$`conference_rank`)) {
        self$`conference_rank` <- this_object$`conference_rank`
      }
      if (!is.null(this_object$`league_rank`)) {
        self$`league_rank` <- this_object$`league_rank`
      }
      if (!is.null(this_object$`division_rank_home`)) {
        self$`division_rank_home` <- this_object$`division_rank_home`
      }
      if (!is.null(this_object$`division_rank_road`)) {
        self$`division_rank_road` <- this_object$`division_rank_road`
      }
      if (!is.null(this_object$`division_rank_last10`)) {
        self$`division_rank_last10` <- this_object$`division_rank_last10`
      }
      if (!is.null(this_object$`conference_rank_home`)) {
        self$`conference_rank_home` <- this_object$`conference_rank_home`
      }
      if (!is.null(this_object$`conference_rank_road`)) {
        self$`conference_rank_road` <- this_object$`conference_rank_road`
      }
      if (!is.null(this_object$`conference_rank_last10`)) {
        self$`conference_rank_last10` <- this_object$`conference_rank_last10`
      }
      if (!is.null(this_object$`league_rank_home`)) {
        self$`league_rank_home` <- this_object$`league_rank_home`
      }
      if (!is.null(this_object$`league_rank_road`)) {
        self$`league_rank_road` <- this_object$`league_rank_road`
      }
      if (!is.null(this_object$`league_rank_last10`)) {
        self$`league_rank_last10` <- this_object$`league_rank_last10`
      }
      if (!is.null(this_object$`wildcard_rank`)) {
        self$`wildcard_rank` <- this_object$`wildcard_rank`
      }
      if (!is.null(this_object$`points`)) {
        self$`points` <- this_object$`points`
      }
      if (!is.null(this_object$`points_percentage`)) {
        self$`points_percentage` <- this_object$`points_percentage`
      }
      if (!is.null(this_object$`wins`)) {
        self$`wins` <- this_object$`wins`
      }
      if (!is.null(this_object$`losses`)) {
        self$`losses` <- this_object$`losses`
      }
      if (!is.null(this_object$`otl`)) {
        self$`otl` <- this_object$`otl`
      }
      if (!is.null(this_object$`games_played`)) {
        self$`games_played` <- this_object$`games_played`
      }
      if (!is.null(this_object$`goals_scored`)) {
        self$`goals_scored` <- this_object$`goals_scored`
      }
      if (!is.null(this_object$`goals_against`)) {
        self$`goals_against` <- this_object$`goals_against`
      }
      if (!is.null(this_object$`streak`)) {
        self$`streak` <- this_object$`streak`
      }
      if (!is.null(this_object$`pp_rank_division`)) {
        self$`pp_rank_division` <- this_object$`pp_rank_division`
      }
      if (!is.null(this_object$`pp_rank_conference`)) {
        self$`pp_rank_conference` <- this_object$`pp_rank_conference`
      }
      if (!is.null(this_object$`pp_rank_league`)) {
        self$`pp_rank_league` <- this_object$`pp_rank_league`
      }
      if (!is.null(this_object$`last_updated`)) {
        self$`last_updated` <- this_object$`last_updated`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StandingsPublic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StandingsPublic
    #'
    #' @param input_json the JSON input
    #' @return the instance of StandingsPublic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`season` <- this_object$`season`
      self$`team` <- this_object$`team`
      self$`division_rank` <- this_object$`division_rank`
      self$`conference_rank` <- this_object$`conference_rank`
      self$`league_rank` <- this_object$`league_rank`
      self$`division_rank_home` <- this_object$`division_rank_home`
      self$`division_rank_road` <- this_object$`division_rank_road`
      self$`division_rank_last10` <- this_object$`division_rank_last10`
      self$`conference_rank_home` <- this_object$`conference_rank_home`
      self$`conference_rank_road` <- this_object$`conference_rank_road`
      self$`conference_rank_last10` <- this_object$`conference_rank_last10`
      self$`league_rank_home` <- this_object$`league_rank_home`
      self$`league_rank_road` <- this_object$`league_rank_road`
      self$`league_rank_last10` <- this_object$`league_rank_last10`
      self$`wildcard_rank` <- this_object$`wildcard_rank`
      self$`points` <- this_object$`points`
      self$`points_percentage` <- this_object$`points_percentage`
      self$`wins` <- this_object$`wins`
      self$`losses` <- this_object$`losses`
      self$`otl` <- this_object$`otl`
      self$`games_played` <- this_object$`games_played`
      self$`goals_scored` <- this_object$`goals_scored`
      self$`goals_against` <- this_object$`goals_against`
      self$`streak` <- this_object$`streak`
      self$`pp_rank_division` <- this_object$`pp_rank_division`
      self$`pp_rank_conference` <- this_object$`pp_rank_conference`
      self$`pp_rank_league` <- this_object$`pp_rank_league`
      self$`last_updated` <- this_object$`last_updated`
      self
    },

    #' @description
    #' Validate JSON input with respect to StandingsPublic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `season`
      if (!is.null(input_json$`season`)) {
        if (!(is.numeric(input_json$`season`) && length(input_json$`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", input_json$`season`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StandingsPublic: the required field `season` is missing."))
      }
      # check the required field `team`
      if (!is.null(input_json$`team`)) {
        if (!(is.character(input_json$`team`) && length(input_json$`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", input_json$`team`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StandingsPublic: the required field `team` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StandingsPublic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `season` is null
      if (is.null(self$`season`)) {
        return(FALSE)
      }

      # check if the required `team` is null
      if (is.null(self$`team`)) {
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
      # check if the required `season` is null
      if (is.null(self$`season`)) {
        invalid_fields["season"] <- "Non-nullable required field `season` cannot be null."
      }

      # check if the required `team` is null
      if (is.null(self$`team`)) {
        invalid_fields["team"] <- "Non-nullable required field `team` cannot be null."
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
# StandingsPublic$unlock()
#
## Below is an example to define the print function
# StandingsPublic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StandingsPublic$lock()

