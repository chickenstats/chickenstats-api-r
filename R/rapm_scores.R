#' Create a new RapmScores
#'
#' @description
#' RapmScores Class
#'
#' @docType class
#' @title RapmScores
#' @description RapmScores Class
#' @format An \code{R6Class} generator object
#' @field id  character
#' @field api_id  integer
#' @field season  integer
#' @field session  character
#' @field situation  character
#' @field name  character [optional]
#' @field team  character [optional]
#' @field pos  character [optional]
#' @field pos2  character [optional]
#' @field toi_minutes  numeric [optional]
#' @field rapm_off  numeric [optional]
#' @field rapm_def  numeric [optional]
#' @field off_coeff_corsi  numeric [optional]
#' @field off_coeff_goals  numeric [optional]
#' @field def_coeff_corsi  numeric [optional]
#' @field def_coeff_goals  numeric [optional]
#' @field metric_for_context_xg  numeric [optional]
#' @field metric_against_context_xg  numeric [optional]
#' @field metric_diff_context_xg  numeric [optional]
#' @field metric_for_corsi  numeric [optional]
#' @field metric_against_corsi  numeric [optional]
#' @field metric_diff_corsi  numeric [optional]
#' @field metric_for_goals  numeric [optional]
#' @field metric_against_goals  numeric [optional]
#' @field metric_diff_goals  numeric [optional]
#' @field on_ice_for_60_context_xg  numeric [optional]
#' @field on_ice_against_60_context_xg  numeric [optional]
#' @field on_ice_diff_60_context_xg  numeric [optional]
#' @field on_ice_for_60_corsi  numeric [optional]
#' @field on_ice_against_60_corsi  numeric [optional]
#' @field on_ice_diff_60_corsi  numeric [optional]
#' @field on_ice_for_60_goals  numeric [optional]
#' @field on_ice_against_60_goals  numeric [optional]
#' @field on_ice_diff_60_goals  numeric [optional]
#' @field total_rapm_context_xg  numeric [optional]
#' @field total_rapm_corsi  numeric [optional]
#' @field total_rapm_goals  numeric [optional]
#' @field off_coeff_context_xg_z  numeric [optional]
#' @field off_coeff_corsi_z  numeric [optional]
#' @field off_coeff_goals_z  numeric [optional]
#' @field def_coeff_context_xg_z  numeric [optional]
#' @field def_coeff_corsi_z  numeric [optional]
#' @field def_coeff_goals_z  numeric [optional]
#' @field metric_for_context_xg_z  numeric [optional]
#' @field metric_against_context_xg_z  numeric [optional]
#' @field metric_diff_context_xg_z  numeric [optional]
#' @field metric_for_corsi_z  numeric [optional]
#' @field metric_against_corsi_z  numeric [optional]
#' @field metric_diff_corsi_z  numeric [optional]
#' @field metric_for_goals_z  numeric [optional]
#' @field metric_against_goals_z  numeric [optional]
#' @field metric_diff_goals_z  numeric [optional]
#' @field on_ice_for_60_context_xg_z  numeric [optional]
#' @field on_ice_against_60_context_xg_z  numeric [optional]
#' @field on_ice_diff_60_context_xg_z  numeric [optional]
#' @field on_ice_for_60_corsi_z  numeric [optional]
#' @field on_ice_against_60_corsi_z  numeric [optional]
#' @field on_ice_diff_60_corsi_z  numeric [optional]
#' @field on_ice_for_60_goals_z  numeric [optional]
#' @field on_ice_against_60_goals_z  numeric [optional]
#' @field on_ice_diff_60_goals_z  numeric [optional]
#' @field total_rapm_context_xg_z  numeric [optional]
#' @field total_rapm_corsi_z  numeric [optional]
#' @field total_rapm_goals_z  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RapmScores <- R6::R6Class(
  "RapmScores",
  public = list(
    `id` = NULL,
    `api_id` = NULL,
    `season` = NULL,
    `session` = NULL,
    `situation` = NULL,
    `name` = NULL,
    `team` = NULL,
    `pos` = NULL,
    `pos2` = NULL,
    `toi_minutes` = NULL,
    `rapm_off` = NULL,
    `rapm_def` = NULL,
    `off_coeff_corsi` = NULL,
    `off_coeff_goals` = NULL,
    `def_coeff_corsi` = NULL,
    `def_coeff_goals` = NULL,
    `metric_for_context_xg` = NULL,
    `metric_against_context_xg` = NULL,
    `metric_diff_context_xg` = NULL,
    `metric_for_corsi` = NULL,
    `metric_against_corsi` = NULL,
    `metric_diff_corsi` = NULL,
    `metric_for_goals` = NULL,
    `metric_against_goals` = NULL,
    `metric_diff_goals` = NULL,
    `on_ice_for_60_context_xg` = NULL,
    `on_ice_against_60_context_xg` = NULL,
    `on_ice_diff_60_context_xg` = NULL,
    `on_ice_for_60_corsi` = NULL,
    `on_ice_against_60_corsi` = NULL,
    `on_ice_diff_60_corsi` = NULL,
    `on_ice_for_60_goals` = NULL,
    `on_ice_against_60_goals` = NULL,
    `on_ice_diff_60_goals` = NULL,
    `total_rapm_context_xg` = NULL,
    `total_rapm_corsi` = NULL,
    `total_rapm_goals` = NULL,
    `off_coeff_context_xg_z` = NULL,
    `off_coeff_corsi_z` = NULL,
    `off_coeff_goals_z` = NULL,
    `def_coeff_context_xg_z` = NULL,
    `def_coeff_corsi_z` = NULL,
    `def_coeff_goals_z` = NULL,
    `metric_for_context_xg_z` = NULL,
    `metric_against_context_xg_z` = NULL,
    `metric_diff_context_xg_z` = NULL,
    `metric_for_corsi_z` = NULL,
    `metric_against_corsi_z` = NULL,
    `metric_diff_corsi_z` = NULL,
    `metric_for_goals_z` = NULL,
    `metric_against_goals_z` = NULL,
    `metric_diff_goals_z` = NULL,
    `on_ice_for_60_context_xg_z` = NULL,
    `on_ice_against_60_context_xg_z` = NULL,
    `on_ice_diff_60_context_xg_z` = NULL,
    `on_ice_for_60_corsi_z` = NULL,
    `on_ice_against_60_corsi_z` = NULL,
    `on_ice_diff_60_corsi_z` = NULL,
    `on_ice_for_60_goals_z` = NULL,
    `on_ice_against_60_goals_z` = NULL,
    `on_ice_diff_60_goals_z` = NULL,
    `total_rapm_context_xg_z` = NULL,
    `total_rapm_corsi_z` = NULL,
    `total_rapm_goals_z` = NULL,

    #' @description
    #' Initialize a new RapmScores class.
    #'
    #' @param id id
    #' @param api_id api_id
    #' @param season season
    #' @param session session
    #' @param situation situation
    #' @param name name
    #' @param team team
    #' @param pos pos
    #' @param pos2 pos2
    #' @param toi_minutes toi_minutes
    #' @param rapm_off rapm_off
    #' @param rapm_def rapm_def
    #' @param off_coeff_corsi off_coeff_corsi
    #' @param off_coeff_goals off_coeff_goals
    #' @param def_coeff_corsi def_coeff_corsi
    #' @param def_coeff_goals def_coeff_goals
    #' @param metric_for_context_xg metric_for_context_xg
    #' @param metric_against_context_xg metric_against_context_xg
    #' @param metric_diff_context_xg metric_diff_context_xg
    #' @param metric_for_corsi metric_for_corsi
    #' @param metric_against_corsi metric_against_corsi
    #' @param metric_diff_corsi metric_diff_corsi
    #' @param metric_for_goals metric_for_goals
    #' @param metric_against_goals metric_against_goals
    #' @param metric_diff_goals metric_diff_goals
    #' @param on_ice_for_60_context_xg on_ice_for_60_context_xg
    #' @param on_ice_against_60_context_xg on_ice_against_60_context_xg
    #' @param on_ice_diff_60_context_xg on_ice_diff_60_context_xg
    #' @param on_ice_for_60_corsi on_ice_for_60_corsi
    #' @param on_ice_against_60_corsi on_ice_against_60_corsi
    #' @param on_ice_diff_60_corsi on_ice_diff_60_corsi
    #' @param on_ice_for_60_goals on_ice_for_60_goals
    #' @param on_ice_against_60_goals on_ice_against_60_goals
    #' @param on_ice_diff_60_goals on_ice_diff_60_goals
    #' @param total_rapm_context_xg total_rapm_context_xg
    #' @param total_rapm_corsi total_rapm_corsi
    #' @param total_rapm_goals total_rapm_goals
    #' @param off_coeff_context_xg_z off_coeff_context_xg_z
    #' @param off_coeff_corsi_z off_coeff_corsi_z
    #' @param off_coeff_goals_z off_coeff_goals_z
    #' @param def_coeff_context_xg_z def_coeff_context_xg_z
    #' @param def_coeff_corsi_z def_coeff_corsi_z
    #' @param def_coeff_goals_z def_coeff_goals_z
    #' @param metric_for_context_xg_z metric_for_context_xg_z
    #' @param metric_against_context_xg_z metric_against_context_xg_z
    #' @param metric_diff_context_xg_z metric_diff_context_xg_z
    #' @param metric_for_corsi_z metric_for_corsi_z
    #' @param metric_against_corsi_z metric_against_corsi_z
    #' @param metric_diff_corsi_z metric_diff_corsi_z
    #' @param metric_for_goals_z metric_for_goals_z
    #' @param metric_against_goals_z metric_against_goals_z
    #' @param metric_diff_goals_z metric_diff_goals_z
    #' @param on_ice_for_60_context_xg_z on_ice_for_60_context_xg_z
    #' @param on_ice_against_60_context_xg_z on_ice_against_60_context_xg_z
    #' @param on_ice_diff_60_context_xg_z on_ice_diff_60_context_xg_z
    #' @param on_ice_for_60_corsi_z on_ice_for_60_corsi_z
    #' @param on_ice_against_60_corsi_z on_ice_against_60_corsi_z
    #' @param on_ice_diff_60_corsi_z on_ice_diff_60_corsi_z
    #' @param on_ice_for_60_goals_z on_ice_for_60_goals_z
    #' @param on_ice_against_60_goals_z on_ice_against_60_goals_z
    #' @param on_ice_diff_60_goals_z on_ice_diff_60_goals_z
    #' @param total_rapm_context_xg_z total_rapm_context_xg_z
    #' @param total_rapm_corsi_z total_rapm_corsi_z
    #' @param total_rapm_goals_z total_rapm_goals_z
    #' @param ... Other optional arguments.
    initialize = function(`id`, `api_id`, `season`, `session`, `situation`, `name` = NULL, `team` = NULL, `pos` = NULL, `pos2` = NULL, `toi_minutes` = NULL, `rapm_off` = NULL, `rapm_def` = NULL, `off_coeff_corsi` = NULL, `off_coeff_goals` = NULL, `def_coeff_corsi` = NULL, `def_coeff_goals` = NULL, `metric_for_context_xg` = NULL, `metric_against_context_xg` = NULL, `metric_diff_context_xg` = NULL, `metric_for_corsi` = NULL, `metric_against_corsi` = NULL, `metric_diff_corsi` = NULL, `metric_for_goals` = NULL, `metric_against_goals` = NULL, `metric_diff_goals` = NULL, `on_ice_for_60_context_xg` = NULL, `on_ice_against_60_context_xg` = NULL, `on_ice_diff_60_context_xg` = NULL, `on_ice_for_60_corsi` = NULL, `on_ice_against_60_corsi` = NULL, `on_ice_diff_60_corsi` = NULL, `on_ice_for_60_goals` = NULL, `on_ice_against_60_goals` = NULL, `on_ice_diff_60_goals` = NULL, `total_rapm_context_xg` = NULL, `total_rapm_corsi` = NULL, `total_rapm_goals` = NULL, `off_coeff_context_xg_z` = NULL, `off_coeff_corsi_z` = NULL, `off_coeff_goals_z` = NULL, `def_coeff_context_xg_z` = NULL, `def_coeff_corsi_z` = NULL, `def_coeff_goals_z` = NULL, `metric_for_context_xg_z` = NULL, `metric_against_context_xg_z` = NULL, `metric_diff_context_xg_z` = NULL, `metric_for_corsi_z` = NULL, `metric_against_corsi_z` = NULL, `metric_diff_corsi_z` = NULL, `metric_for_goals_z` = NULL, `metric_against_goals_z` = NULL, `metric_diff_goals_z` = NULL, `on_ice_for_60_context_xg_z` = NULL, `on_ice_against_60_context_xg_z` = NULL, `on_ice_diff_60_context_xg_z` = NULL, `on_ice_for_60_corsi_z` = NULL, `on_ice_against_60_corsi_z` = NULL, `on_ice_diff_60_corsi_z` = NULL, `on_ice_for_60_goals_z` = NULL, `on_ice_against_60_goals_z` = NULL, `on_ice_diff_60_goals_z` = NULL, `total_rapm_context_xg_z` = NULL, `total_rapm_corsi_z` = NULL, `total_rapm_goals_z` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`api_id`)) {
        if (!(is.numeric(`api_id`) && length(`api_id`) == 1)) {
          stop(paste("Error! Invalid data for `api_id`. Must be an integer:", `api_id`))
        }
        self$`api_id` <- `api_id`
      }
      if (!missing(`season`)) {
        if (!(is.numeric(`season`) && length(`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", `season`))
        }
        self$`season` <- `season`
      }
      if (!missing(`session`)) {
        if (!(is.character(`session`) && length(`session`) == 1)) {
          stop(paste("Error! Invalid data for `session`. Must be a string:", `session`))
        }
        self$`session` <- `session`
      }
      if (!missing(`situation`)) {
        if (!(is.character(`situation`) && length(`situation`) == 1)) {
          stop(paste("Error! Invalid data for `situation`. Must be a string:", `situation`))
        }
        self$`situation` <- `situation`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`team`)) {
        if (!(is.character(`team`) && length(`team`) == 1)) {
          stop(paste("Error! Invalid data for `team`. Must be a string:", `team`))
        }
        self$`team` <- `team`
      }
      if (!is.null(`pos`)) {
        if (!(is.character(`pos`) && length(`pos`) == 1)) {
          stop(paste("Error! Invalid data for `pos`. Must be a string:", `pos`))
        }
        self$`pos` <- `pos`
      }
      if (!is.null(`pos2`)) {
        if (!(is.character(`pos2`) && length(`pos2`) == 1)) {
          stop(paste("Error! Invalid data for `pos2`. Must be a string:", `pos2`))
        }
        self$`pos2` <- `pos2`
      }
      if (!is.null(`toi_minutes`)) {
        self$`toi_minutes` <- `toi_minutes`
      }
      if (!is.null(`rapm_off`)) {
        self$`rapm_off` <- `rapm_off`
      }
      if (!is.null(`rapm_def`)) {
        self$`rapm_def` <- `rapm_def`
      }
      if (!is.null(`off_coeff_corsi`)) {
        self$`off_coeff_corsi` <- `off_coeff_corsi`
      }
      if (!is.null(`off_coeff_goals`)) {
        self$`off_coeff_goals` <- `off_coeff_goals`
      }
      if (!is.null(`def_coeff_corsi`)) {
        self$`def_coeff_corsi` <- `def_coeff_corsi`
      }
      if (!is.null(`def_coeff_goals`)) {
        self$`def_coeff_goals` <- `def_coeff_goals`
      }
      if (!is.null(`metric_for_context_xg`)) {
        self$`metric_for_context_xg` <- `metric_for_context_xg`
      }
      if (!is.null(`metric_against_context_xg`)) {
        self$`metric_against_context_xg` <- `metric_against_context_xg`
      }
      if (!is.null(`metric_diff_context_xg`)) {
        self$`metric_diff_context_xg` <- `metric_diff_context_xg`
      }
      if (!is.null(`metric_for_corsi`)) {
        self$`metric_for_corsi` <- `metric_for_corsi`
      }
      if (!is.null(`metric_against_corsi`)) {
        self$`metric_against_corsi` <- `metric_against_corsi`
      }
      if (!is.null(`metric_diff_corsi`)) {
        self$`metric_diff_corsi` <- `metric_diff_corsi`
      }
      if (!is.null(`metric_for_goals`)) {
        self$`metric_for_goals` <- `metric_for_goals`
      }
      if (!is.null(`metric_against_goals`)) {
        self$`metric_against_goals` <- `metric_against_goals`
      }
      if (!is.null(`metric_diff_goals`)) {
        self$`metric_diff_goals` <- `metric_diff_goals`
      }
      if (!is.null(`on_ice_for_60_context_xg`)) {
        self$`on_ice_for_60_context_xg` <- `on_ice_for_60_context_xg`
      }
      if (!is.null(`on_ice_against_60_context_xg`)) {
        self$`on_ice_against_60_context_xg` <- `on_ice_against_60_context_xg`
      }
      if (!is.null(`on_ice_diff_60_context_xg`)) {
        self$`on_ice_diff_60_context_xg` <- `on_ice_diff_60_context_xg`
      }
      if (!is.null(`on_ice_for_60_corsi`)) {
        self$`on_ice_for_60_corsi` <- `on_ice_for_60_corsi`
      }
      if (!is.null(`on_ice_against_60_corsi`)) {
        self$`on_ice_against_60_corsi` <- `on_ice_against_60_corsi`
      }
      if (!is.null(`on_ice_diff_60_corsi`)) {
        self$`on_ice_diff_60_corsi` <- `on_ice_diff_60_corsi`
      }
      if (!is.null(`on_ice_for_60_goals`)) {
        self$`on_ice_for_60_goals` <- `on_ice_for_60_goals`
      }
      if (!is.null(`on_ice_against_60_goals`)) {
        self$`on_ice_against_60_goals` <- `on_ice_against_60_goals`
      }
      if (!is.null(`on_ice_diff_60_goals`)) {
        self$`on_ice_diff_60_goals` <- `on_ice_diff_60_goals`
      }
      if (!is.null(`total_rapm_context_xg`)) {
        self$`total_rapm_context_xg` <- `total_rapm_context_xg`
      }
      if (!is.null(`total_rapm_corsi`)) {
        self$`total_rapm_corsi` <- `total_rapm_corsi`
      }
      if (!is.null(`total_rapm_goals`)) {
        self$`total_rapm_goals` <- `total_rapm_goals`
      }
      if (!is.null(`off_coeff_context_xg_z`)) {
        self$`off_coeff_context_xg_z` <- `off_coeff_context_xg_z`
      }
      if (!is.null(`off_coeff_corsi_z`)) {
        self$`off_coeff_corsi_z` <- `off_coeff_corsi_z`
      }
      if (!is.null(`off_coeff_goals_z`)) {
        self$`off_coeff_goals_z` <- `off_coeff_goals_z`
      }
      if (!is.null(`def_coeff_context_xg_z`)) {
        self$`def_coeff_context_xg_z` <- `def_coeff_context_xg_z`
      }
      if (!is.null(`def_coeff_corsi_z`)) {
        self$`def_coeff_corsi_z` <- `def_coeff_corsi_z`
      }
      if (!is.null(`def_coeff_goals_z`)) {
        self$`def_coeff_goals_z` <- `def_coeff_goals_z`
      }
      if (!is.null(`metric_for_context_xg_z`)) {
        self$`metric_for_context_xg_z` <- `metric_for_context_xg_z`
      }
      if (!is.null(`metric_against_context_xg_z`)) {
        self$`metric_against_context_xg_z` <- `metric_against_context_xg_z`
      }
      if (!is.null(`metric_diff_context_xg_z`)) {
        self$`metric_diff_context_xg_z` <- `metric_diff_context_xg_z`
      }
      if (!is.null(`metric_for_corsi_z`)) {
        self$`metric_for_corsi_z` <- `metric_for_corsi_z`
      }
      if (!is.null(`metric_against_corsi_z`)) {
        self$`metric_against_corsi_z` <- `metric_against_corsi_z`
      }
      if (!is.null(`metric_diff_corsi_z`)) {
        self$`metric_diff_corsi_z` <- `metric_diff_corsi_z`
      }
      if (!is.null(`metric_for_goals_z`)) {
        self$`metric_for_goals_z` <- `metric_for_goals_z`
      }
      if (!is.null(`metric_against_goals_z`)) {
        self$`metric_against_goals_z` <- `metric_against_goals_z`
      }
      if (!is.null(`metric_diff_goals_z`)) {
        self$`metric_diff_goals_z` <- `metric_diff_goals_z`
      }
      if (!is.null(`on_ice_for_60_context_xg_z`)) {
        self$`on_ice_for_60_context_xg_z` <- `on_ice_for_60_context_xg_z`
      }
      if (!is.null(`on_ice_against_60_context_xg_z`)) {
        self$`on_ice_against_60_context_xg_z` <- `on_ice_against_60_context_xg_z`
      }
      if (!is.null(`on_ice_diff_60_context_xg_z`)) {
        self$`on_ice_diff_60_context_xg_z` <- `on_ice_diff_60_context_xg_z`
      }
      if (!is.null(`on_ice_for_60_corsi_z`)) {
        self$`on_ice_for_60_corsi_z` <- `on_ice_for_60_corsi_z`
      }
      if (!is.null(`on_ice_against_60_corsi_z`)) {
        self$`on_ice_against_60_corsi_z` <- `on_ice_against_60_corsi_z`
      }
      if (!is.null(`on_ice_diff_60_corsi_z`)) {
        self$`on_ice_diff_60_corsi_z` <- `on_ice_diff_60_corsi_z`
      }
      if (!is.null(`on_ice_for_60_goals_z`)) {
        self$`on_ice_for_60_goals_z` <- `on_ice_for_60_goals_z`
      }
      if (!is.null(`on_ice_against_60_goals_z`)) {
        self$`on_ice_against_60_goals_z` <- `on_ice_against_60_goals_z`
      }
      if (!is.null(`on_ice_diff_60_goals_z`)) {
        self$`on_ice_diff_60_goals_z` <- `on_ice_diff_60_goals_z`
      }
      if (!is.null(`total_rapm_context_xg_z`)) {
        self$`total_rapm_context_xg_z` <- `total_rapm_context_xg_z`
      }
      if (!is.null(`total_rapm_corsi_z`)) {
        self$`total_rapm_corsi_z` <- `total_rapm_corsi_z`
      }
      if (!is.null(`total_rapm_goals_z`)) {
        self$`total_rapm_goals_z` <- `total_rapm_goals_z`
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
    #' @return RapmScores as a base R list.
    #' @examples
    #' # convert array of RapmScores (x) to a data frame
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
    #' Convert RapmScores to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RapmScoresObject <- list()
      if (!is.null(self$`id`)) {
        RapmScoresObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`api_id`)) {
        RapmScoresObject[["api_id"]] <-
          self$`api_id`
      }
      if (!is.null(self$`season`)) {
        RapmScoresObject[["season"]] <-
          self$`season`
      }
      if (!is.null(self$`session`)) {
        RapmScoresObject[["session"]] <-
          self$`session`
      }
      if (!is.null(self$`situation`)) {
        RapmScoresObject[["situation"]] <-
          self$`situation`
      }
      if (!is.null(self$`name`)) {
        RapmScoresObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`team`)) {
        RapmScoresObject[["team"]] <-
          self$`team`
      }
      if (!is.null(self$`pos`)) {
        RapmScoresObject[["pos"]] <-
          self$`pos`
      }
      if (!is.null(self$`pos2`)) {
        RapmScoresObject[["pos2"]] <-
          self$`pos2`
      }
      if (!is.null(self$`toi_minutes`)) {
        RapmScoresObject[["toi_minutes"]] <-
          self$`toi_minutes`
      }
      if (!is.null(self$`rapm_off`)) {
        RapmScoresObject[["rapm_off"]] <-
          self$`rapm_off`
      }
      if (!is.null(self$`rapm_def`)) {
        RapmScoresObject[["rapm_def"]] <-
          self$`rapm_def`
      }
      if (!is.null(self$`off_coeff_corsi`)) {
        RapmScoresObject[["off_coeff_corsi"]] <-
          self$`off_coeff_corsi`
      }
      if (!is.null(self$`off_coeff_goals`)) {
        RapmScoresObject[["off_coeff_goals"]] <-
          self$`off_coeff_goals`
      }
      if (!is.null(self$`def_coeff_corsi`)) {
        RapmScoresObject[["def_coeff_corsi"]] <-
          self$`def_coeff_corsi`
      }
      if (!is.null(self$`def_coeff_goals`)) {
        RapmScoresObject[["def_coeff_goals"]] <-
          self$`def_coeff_goals`
      }
      if (!is.null(self$`metric_for_context_xg`)) {
        RapmScoresObject[["metric_for_context_xg"]] <-
          self$`metric_for_context_xg`
      }
      if (!is.null(self$`metric_against_context_xg`)) {
        RapmScoresObject[["metric_against_context_xg"]] <-
          self$`metric_against_context_xg`
      }
      if (!is.null(self$`metric_diff_context_xg`)) {
        RapmScoresObject[["metric_diff_context_xg"]] <-
          self$`metric_diff_context_xg`
      }
      if (!is.null(self$`metric_for_corsi`)) {
        RapmScoresObject[["metric_for_corsi"]] <-
          self$`metric_for_corsi`
      }
      if (!is.null(self$`metric_against_corsi`)) {
        RapmScoresObject[["metric_against_corsi"]] <-
          self$`metric_against_corsi`
      }
      if (!is.null(self$`metric_diff_corsi`)) {
        RapmScoresObject[["metric_diff_corsi"]] <-
          self$`metric_diff_corsi`
      }
      if (!is.null(self$`metric_for_goals`)) {
        RapmScoresObject[["metric_for_goals"]] <-
          self$`metric_for_goals`
      }
      if (!is.null(self$`metric_against_goals`)) {
        RapmScoresObject[["metric_against_goals"]] <-
          self$`metric_against_goals`
      }
      if (!is.null(self$`metric_diff_goals`)) {
        RapmScoresObject[["metric_diff_goals"]] <-
          self$`metric_diff_goals`
      }
      if (!is.null(self$`on_ice_for_60_context_xg`)) {
        RapmScoresObject[["on_ice_for_60_context_xg"]] <-
          self$`on_ice_for_60_context_xg`
      }
      if (!is.null(self$`on_ice_against_60_context_xg`)) {
        RapmScoresObject[["on_ice_against_60_context_xg"]] <-
          self$`on_ice_against_60_context_xg`
      }
      if (!is.null(self$`on_ice_diff_60_context_xg`)) {
        RapmScoresObject[["on_ice_diff_60_context_xg"]] <-
          self$`on_ice_diff_60_context_xg`
      }
      if (!is.null(self$`on_ice_for_60_corsi`)) {
        RapmScoresObject[["on_ice_for_60_corsi"]] <-
          self$`on_ice_for_60_corsi`
      }
      if (!is.null(self$`on_ice_against_60_corsi`)) {
        RapmScoresObject[["on_ice_against_60_corsi"]] <-
          self$`on_ice_against_60_corsi`
      }
      if (!is.null(self$`on_ice_diff_60_corsi`)) {
        RapmScoresObject[["on_ice_diff_60_corsi"]] <-
          self$`on_ice_diff_60_corsi`
      }
      if (!is.null(self$`on_ice_for_60_goals`)) {
        RapmScoresObject[["on_ice_for_60_goals"]] <-
          self$`on_ice_for_60_goals`
      }
      if (!is.null(self$`on_ice_against_60_goals`)) {
        RapmScoresObject[["on_ice_against_60_goals"]] <-
          self$`on_ice_against_60_goals`
      }
      if (!is.null(self$`on_ice_diff_60_goals`)) {
        RapmScoresObject[["on_ice_diff_60_goals"]] <-
          self$`on_ice_diff_60_goals`
      }
      if (!is.null(self$`total_rapm_context_xg`)) {
        RapmScoresObject[["total_rapm_context_xg"]] <-
          self$`total_rapm_context_xg`
      }
      if (!is.null(self$`total_rapm_corsi`)) {
        RapmScoresObject[["total_rapm_corsi"]] <-
          self$`total_rapm_corsi`
      }
      if (!is.null(self$`total_rapm_goals`)) {
        RapmScoresObject[["total_rapm_goals"]] <-
          self$`total_rapm_goals`
      }
      if (!is.null(self$`off_coeff_context_xg_z`)) {
        RapmScoresObject[["off_coeff_context_xg_z"]] <-
          self$`off_coeff_context_xg_z`
      }
      if (!is.null(self$`off_coeff_corsi_z`)) {
        RapmScoresObject[["off_coeff_corsi_z"]] <-
          self$`off_coeff_corsi_z`
      }
      if (!is.null(self$`off_coeff_goals_z`)) {
        RapmScoresObject[["off_coeff_goals_z"]] <-
          self$`off_coeff_goals_z`
      }
      if (!is.null(self$`def_coeff_context_xg_z`)) {
        RapmScoresObject[["def_coeff_context_xg_z"]] <-
          self$`def_coeff_context_xg_z`
      }
      if (!is.null(self$`def_coeff_corsi_z`)) {
        RapmScoresObject[["def_coeff_corsi_z"]] <-
          self$`def_coeff_corsi_z`
      }
      if (!is.null(self$`def_coeff_goals_z`)) {
        RapmScoresObject[["def_coeff_goals_z"]] <-
          self$`def_coeff_goals_z`
      }
      if (!is.null(self$`metric_for_context_xg_z`)) {
        RapmScoresObject[["metric_for_context_xg_z"]] <-
          self$`metric_for_context_xg_z`
      }
      if (!is.null(self$`metric_against_context_xg_z`)) {
        RapmScoresObject[["metric_against_context_xg_z"]] <-
          self$`metric_against_context_xg_z`
      }
      if (!is.null(self$`metric_diff_context_xg_z`)) {
        RapmScoresObject[["metric_diff_context_xg_z"]] <-
          self$`metric_diff_context_xg_z`
      }
      if (!is.null(self$`metric_for_corsi_z`)) {
        RapmScoresObject[["metric_for_corsi_z"]] <-
          self$`metric_for_corsi_z`
      }
      if (!is.null(self$`metric_against_corsi_z`)) {
        RapmScoresObject[["metric_against_corsi_z"]] <-
          self$`metric_against_corsi_z`
      }
      if (!is.null(self$`metric_diff_corsi_z`)) {
        RapmScoresObject[["metric_diff_corsi_z"]] <-
          self$`metric_diff_corsi_z`
      }
      if (!is.null(self$`metric_for_goals_z`)) {
        RapmScoresObject[["metric_for_goals_z"]] <-
          self$`metric_for_goals_z`
      }
      if (!is.null(self$`metric_against_goals_z`)) {
        RapmScoresObject[["metric_against_goals_z"]] <-
          self$`metric_against_goals_z`
      }
      if (!is.null(self$`metric_diff_goals_z`)) {
        RapmScoresObject[["metric_diff_goals_z"]] <-
          self$`metric_diff_goals_z`
      }
      if (!is.null(self$`on_ice_for_60_context_xg_z`)) {
        RapmScoresObject[["on_ice_for_60_context_xg_z"]] <-
          self$`on_ice_for_60_context_xg_z`
      }
      if (!is.null(self$`on_ice_against_60_context_xg_z`)) {
        RapmScoresObject[["on_ice_against_60_context_xg_z"]] <-
          self$`on_ice_against_60_context_xg_z`
      }
      if (!is.null(self$`on_ice_diff_60_context_xg_z`)) {
        RapmScoresObject[["on_ice_diff_60_context_xg_z"]] <-
          self$`on_ice_diff_60_context_xg_z`
      }
      if (!is.null(self$`on_ice_for_60_corsi_z`)) {
        RapmScoresObject[["on_ice_for_60_corsi_z"]] <-
          self$`on_ice_for_60_corsi_z`
      }
      if (!is.null(self$`on_ice_against_60_corsi_z`)) {
        RapmScoresObject[["on_ice_against_60_corsi_z"]] <-
          self$`on_ice_against_60_corsi_z`
      }
      if (!is.null(self$`on_ice_diff_60_corsi_z`)) {
        RapmScoresObject[["on_ice_diff_60_corsi_z"]] <-
          self$`on_ice_diff_60_corsi_z`
      }
      if (!is.null(self$`on_ice_for_60_goals_z`)) {
        RapmScoresObject[["on_ice_for_60_goals_z"]] <-
          self$`on_ice_for_60_goals_z`
      }
      if (!is.null(self$`on_ice_against_60_goals_z`)) {
        RapmScoresObject[["on_ice_against_60_goals_z"]] <-
          self$`on_ice_against_60_goals_z`
      }
      if (!is.null(self$`on_ice_diff_60_goals_z`)) {
        RapmScoresObject[["on_ice_diff_60_goals_z"]] <-
          self$`on_ice_diff_60_goals_z`
      }
      if (!is.null(self$`total_rapm_context_xg_z`)) {
        RapmScoresObject[["total_rapm_context_xg_z"]] <-
          self$`total_rapm_context_xg_z`
      }
      if (!is.null(self$`total_rapm_corsi_z`)) {
        RapmScoresObject[["total_rapm_corsi_z"]] <-
          self$`total_rapm_corsi_z`
      }
      if (!is.null(self$`total_rapm_goals_z`)) {
        RapmScoresObject[["total_rapm_goals_z"]] <-
          self$`total_rapm_goals_z`
      }
      return(RapmScoresObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RapmScores
    #'
    #' @param input_json the JSON input
    #' @return the instance of RapmScores
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`api_id`)) {
        self$`api_id` <- this_object$`api_id`
      }
      if (!is.null(this_object$`season`)) {
        self$`season` <- this_object$`season`
      }
      if (!is.null(this_object$`session`)) {
        self$`session` <- this_object$`session`
      }
      if (!is.null(this_object$`situation`)) {
        self$`situation` <- this_object$`situation`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`team`)) {
        self$`team` <- this_object$`team`
      }
      if (!is.null(this_object$`pos`)) {
        self$`pos` <- this_object$`pos`
      }
      if (!is.null(this_object$`pos2`)) {
        self$`pos2` <- this_object$`pos2`
      }
      if (!is.null(this_object$`toi_minutes`)) {
        self$`toi_minutes` <- this_object$`toi_minutes`
      }
      if (!is.null(this_object$`rapm_off`)) {
        self$`rapm_off` <- this_object$`rapm_off`
      }
      if (!is.null(this_object$`rapm_def`)) {
        self$`rapm_def` <- this_object$`rapm_def`
      }
      if (!is.null(this_object$`off_coeff_corsi`)) {
        self$`off_coeff_corsi` <- this_object$`off_coeff_corsi`
      }
      if (!is.null(this_object$`off_coeff_goals`)) {
        self$`off_coeff_goals` <- this_object$`off_coeff_goals`
      }
      if (!is.null(this_object$`def_coeff_corsi`)) {
        self$`def_coeff_corsi` <- this_object$`def_coeff_corsi`
      }
      if (!is.null(this_object$`def_coeff_goals`)) {
        self$`def_coeff_goals` <- this_object$`def_coeff_goals`
      }
      if (!is.null(this_object$`metric_for_context_xg`)) {
        self$`metric_for_context_xg` <- this_object$`metric_for_context_xg`
      }
      if (!is.null(this_object$`metric_against_context_xg`)) {
        self$`metric_against_context_xg` <- this_object$`metric_against_context_xg`
      }
      if (!is.null(this_object$`metric_diff_context_xg`)) {
        self$`metric_diff_context_xg` <- this_object$`metric_diff_context_xg`
      }
      if (!is.null(this_object$`metric_for_corsi`)) {
        self$`metric_for_corsi` <- this_object$`metric_for_corsi`
      }
      if (!is.null(this_object$`metric_against_corsi`)) {
        self$`metric_against_corsi` <- this_object$`metric_against_corsi`
      }
      if (!is.null(this_object$`metric_diff_corsi`)) {
        self$`metric_diff_corsi` <- this_object$`metric_diff_corsi`
      }
      if (!is.null(this_object$`metric_for_goals`)) {
        self$`metric_for_goals` <- this_object$`metric_for_goals`
      }
      if (!is.null(this_object$`metric_against_goals`)) {
        self$`metric_against_goals` <- this_object$`metric_against_goals`
      }
      if (!is.null(this_object$`metric_diff_goals`)) {
        self$`metric_diff_goals` <- this_object$`metric_diff_goals`
      }
      if (!is.null(this_object$`on_ice_for_60_context_xg`)) {
        self$`on_ice_for_60_context_xg` <- this_object$`on_ice_for_60_context_xg`
      }
      if (!is.null(this_object$`on_ice_against_60_context_xg`)) {
        self$`on_ice_against_60_context_xg` <- this_object$`on_ice_against_60_context_xg`
      }
      if (!is.null(this_object$`on_ice_diff_60_context_xg`)) {
        self$`on_ice_diff_60_context_xg` <- this_object$`on_ice_diff_60_context_xg`
      }
      if (!is.null(this_object$`on_ice_for_60_corsi`)) {
        self$`on_ice_for_60_corsi` <- this_object$`on_ice_for_60_corsi`
      }
      if (!is.null(this_object$`on_ice_against_60_corsi`)) {
        self$`on_ice_against_60_corsi` <- this_object$`on_ice_against_60_corsi`
      }
      if (!is.null(this_object$`on_ice_diff_60_corsi`)) {
        self$`on_ice_diff_60_corsi` <- this_object$`on_ice_diff_60_corsi`
      }
      if (!is.null(this_object$`on_ice_for_60_goals`)) {
        self$`on_ice_for_60_goals` <- this_object$`on_ice_for_60_goals`
      }
      if (!is.null(this_object$`on_ice_against_60_goals`)) {
        self$`on_ice_against_60_goals` <- this_object$`on_ice_against_60_goals`
      }
      if (!is.null(this_object$`on_ice_diff_60_goals`)) {
        self$`on_ice_diff_60_goals` <- this_object$`on_ice_diff_60_goals`
      }
      if (!is.null(this_object$`total_rapm_context_xg`)) {
        self$`total_rapm_context_xg` <- this_object$`total_rapm_context_xg`
      }
      if (!is.null(this_object$`total_rapm_corsi`)) {
        self$`total_rapm_corsi` <- this_object$`total_rapm_corsi`
      }
      if (!is.null(this_object$`total_rapm_goals`)) {
        self$`total_rapm_goals` <- this_object$`total_rapm_goals`
      }
      if (!is.null(this_object$`off_coeff_context_xg_z`)) {
        self$`off_coeff_context_xg_z` <- this_object$`off_coeff_context_xg_z`
      }
      if (!is.null(this_object$`off_coeff_corsi_z`)) {
        self$`off_coeff_corsi_z` <- this_object$`off_coeff_corsi_z`
      }
      if (!is.null(this_object$`off_coeff_goals_z`)) {
        self$`off_coeff_goals_z` <- this_object$`off_coeff_goals_z`
      }
      if (!is.null(this_object$`def_coeff_context_xg_z`)) {
        self$`def_coeff_context_xg_z` <- this_object$`def_coeff_context_xg_z`
      }
      if (!is.null(this_object$`def_coeff_corsi_z`)) {
        self$`def_coeff_corsi_z` <- this_object$`def_coeff_corsi_z`
      }
      if (!is.null(this_object$`def_coeff_goals_z`)) {
        self$`def_coeff_goals_z` <- this_object$`def_coeff_goals_z`
      }
      if (!is.null(this_object$`metric_for_context_xg_z`)) {
        self$`metric_for_context_xg_z` <- this_object$`metric_for_context_xg_z`
      }
      if (!is.null(this_object$`metric_against_context_xg_z`)) {
        self$`metric_against_context_xg_z` <- this_object$`metric_against_context_xg_z`
      }
      if (!is.null(this_object$`metric_diff_context_xg_z`)) {
        self$`metric_diff_context_xg_z` <- this_object$`metric_diff_context_xg_z`
      }
      if (!is.null(this_object$`metric_for_corsi_z`)) {
        self$`metric_for_corsi_z` <- this_object$`metric_for_corsi_z`
      }
      if (!is.null(this_object$`metric_against_corsi_z`)) {
        self$`metric_against_corsi_z` <- this_object$`metric_against_corsi_z`
      }
      if (!is.null(this_object$`metric_diff_corsi_z`)) {
        self$`metric_diff_corsi_z` <- this_object$`metric_diff_corsi_z`
      }
      if (!is.null(this_object$`metric_for_goals_z`)) {
        self$`metric_for_goals_z` <- this_object$`metric_for_goals_z`
      }
      if (!is.null(this_object$`metric_against_goals_z`)) {
        self$`metric_against_goals_z` <- this_object$`metric_against_goals_z`
      }
      if (!is.null(this_object$`metric_diff_goals_z`)) {
        self$`metric_diff_goals_z` <- this_object$`metric_diff_goals_z`
      }
      if (!is.null(this_object$`on_ice_for_60_context_xg_z`)) {
        self$`on_ice_for_60_context_xg_z` <- this_object$`on_ice_for_60_context_xg_z`
      }
      if (!is.null(this_object$`on_ice_against_60_context_xg_z`)) {
        self$`on_ice_against_60_context_xg_z` <- this_object$`on_ice_against_60_context_xg_z`
      }
      if (!is.null(this_object$`on_ice_diff_60_context_xg_z`)) {
        self$`on_ice_diff_60_context_xg_z` <- this_object$`on_ice_diff_60_context_xg_z`
      }
      if (!is.null(this_object$`on_ice_for_60_corsi_z`)) {
        self$`on_ice_for_60_corsi_z` <- this_object$`on_ice_for_60_corsi_z`
      }
      if (!is.null(this_object$`on_ice_against_60_corsi_z`)) {
        self$`on_ice_against_60_corsi_z` <- this_object$`on_ice_against_60_corsi_z`
      }
      if (!is.null(this_object$`on_ice_diff_60_corsi_z`)) {
        self$`on_ice_diff_60_corsi_z` <- this_object$`on_ice_diff_60_corsi_z`
      }
      if (!is.null(this_object$`on_ice_for_60_goals_z`)) {
        self$`on_ice_for_60_goals_z` <- this_object$`on_ice_for_60_goals_z`
      }
      if (!is.null(this_object$`on_ice_against_60_goals_z`)) {
        self$`on_ice_against_60_goals_z` <- this_object$`on_ice_against_60_goals_z`
      }
      if (!is.null(this_object$`on_ice_diff_60_goals_z`)) {
        self$`on_ice_diff_60_goals_z` <- this_object$`on_ice_diff_60_goals_z`
      }
      if (!is.null(this_object$`total_rapm_context_xg_z`)) {
        self$`total_rapm_context_xg_z` <- this_object$`total_rapm_context_xg_z`
      }
      if (!is.null(this_object$`total_rapm_corsi_z`)) {
        self$`total_rapm_corsi_z` <- this_object$`total_rapm_corsi_z`
      }
      if (!is.null(this_object$`total_rapm_goals_z`)) {
        self$`total_rapm_goals_z` <- this_object$`total_rapm_goals_z`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RapmScores in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RapmScores
    #'
    #' @param input_json the JSON input
    #' @return the instance of RapmScores
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`api_id` <- this_object$`api_id`
      self$`season` <- this_object$`season`
      self$`session` <- this_object$`session`
      self$`situation` <- this_object$`situation`
      self$`name` <- this_object$`name`
      self$`team` <- this_object$`team`
      self$`pos` <- this_object$`pos`
      self$`pos2` <- this_object$`pos2`
      self$`toi_minutes` <- this_object$`toi_minutes`
      self$`rapm_off` <- this_object$`rapm_off`
      self$`rapm_def` <- this_object$`rapm_def`
      self$`off_coeff_corsi` <- this_object$`off_coeff_corsi`
      self$`off_coeff_goals` <- this_object$`off_coeff_goals`
      self$`def_coeff_corsi` <- this_object$`def_coeff_corsi`
      self$`def_coeff_goals` <- this_object$`def_coeff_goals`
      self$`metric_for_context_xg` <- this_object$`metric_for_context_xg`
      self$`metric_against_context_xg` <- this_object$`metric_against_context_xg`
      self$`metric_diff_context_xg` <- this_object$`metric_diff_context_xg`
      self$`metric_for_corsi` <- this_object$`metric_for_corsi`
      self$`metric_against_corsi` <- this_object$`metric_against_corsi`
      self$`metric_diff_corsi` <- this_object$`metric_diff_corsi`
      self$`metric_for_goals` <- this_object$`metric_for_goals`
      self$`metric_against_goals` <- this_object$`metric_against_goals`
      self$`metric_diff_goals` <- this_object$`metric_diff_goals`
      self$`on_ice_for_60_context_xg` <- this_object$`on_ice_for_60_context_xg`
      self$`on_ice_against_60_context_xg` <- this_object$`on_ice_against_60_context_xg`
      self$`on_ice_diff_60_context_xg` <- this_object$`on_ice_diff_60_context_xg`
      self$`on_ice_for_60_corsi` <- this_object$`on_ice_for_60_corsi`
      self$`on_ice_against_60_corsi` <- this_object$`on_ice_against_60_corsi`
      self$`on_ice_diff_60_corsi` <- this_object$`on_ice_diff_60_corsi`
      self$`on_ice_for_60_goals` <- this_object$`on_ice_for_60_goals`
      self$`on_ice_against_60_goals` <- this_object$`on_ice_against_60_goals`
      self$`on_ice_diff_60_goals` <- this_object$`on_ice_diff_60_goals`
      self$`total_rapm_context_xg` <- this_object$`total_rapm_context_xg`
      self$`total_rapm_corsi` <- this_object$`total_rapm_corsi`
      self$`total_rapm_goals` <- this_object$`total_rapm_goals`
      self$`off_coeff_context_xg_z` <- this_object$`off_coeff_context_xg_z`
      self$`off_coeff_corsi_z` <- this_object$`off_coeff_corsi_z`
      self$`off_coeff_goals_z` <- this_object$`off_coeff_goals_z`
      self$`def_coeff_context_xg_z` <- this_object$`def_coeff_context_xg_z`
      self$`def_coeff_corsi_z` <- this_object$`def_coeff_corsi_z`
      self$`def_coeff_goals_z` <- this_object$`def_coeff_goals_z`
      self$`metric_for_context_xg_z` <- this_object$`metric_for_context_xg_z`
      self$`metric_against_context_xg_z` <- this_object$`metric_against_context_xg_z`
      self$`metric_diff_context_xg_z` <- this_object$`metric_diff_context_xg_z`
      self$`metric_for_corsi_z` <- this_object$`metric_for_corsi_z`
      self$`metric_against_corsi_z` <- this_object$`metric_against_corsi_z`
      self$`metric_diff_corsi_z` <- this_object$`metric_diff_corsi_z`
      self$`metric_for_goals_z` <- this_object$`metric_for_goals_z`
      self$`metric_against_goals_z` <- this_object$`metric_against_goals_z`
      self$`metric_diff_goals_z` <- this_object$`metric_diff_goals_z`
      self$`on_ice_for_60_context_xg_z` <- this_object$`on_ice_for_60_context_xg_z`
      self$`on_ice_against_60_context_xg_z` <- this_object$`on_ice_against_60_context_xg_z`
      self$`on_ice_diff_60_context_xg_z` <- this_object$`on_ice_diff_60_context_xg_z`
      self$`on_ice_for_60_corsi_z` <- this_object$`on_ice_for_60_corsi_z`
      self$`on_ice_against_60_corsi_z` <- this_object$`on_ice_against_60_corsi_z`
      self$`on_ice_diff_60_corsi_z` <- this_object$`on_ice_diff_60_corsi_z`
      self$`on_ice_for_60_goals_z` <- this_object$`on_ice_for_60_goals_z`
      self$`on_ice_against_60_goals_z` <- this_object$`on_ice_against_60_goals_z`
      self$`on_ice_diff_60_goals_z` <- this_object$`on_ice_diff_60_goals_z`
      self$`total_rapm_context_xg_z` <- this_object$`total_rapm_context_xg_z`
      self$`total_rapm_corsi_z` <- this_object$`total_rapm_corsi_z`
      self$`total_rapm_goals_z` <- this_object$`total_rapm_goals_z`
      self
    },

    #' @description
    #' Validate JSON input with respect to RapmScores and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RapmScores: the required field `id` is missing."))
      }
      # check the required field `api_id`
      if (!is.null(input_json$`api_id`)) {
        if (!(is.numeric(input_json$`api_id`) && length(input_json$`api_id`) == 1)) {
          stop(paste("Error! Invalid data for `api_id`. Must be an integer:", input_json$`api_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RapmScores: the required field `api_id` is missing."))
      }
      # check the required field `season`
      if (!is.null(input_json$`season`)) {
        if (!(is.numeric(input_json$`season`) && length(input_json$`season`) == 1)) {
          stop(paste("Error! Invalid data for `season`. Must be an integer:", input_json$`season`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RapmScores: the required field `season` is missing."))
      }
      # check the required field `session`
      if (!is.null(input_json$`session`)) {
        if (!(is.character(input_json$`session`) && length(input_json$`session`) == 1)) {
          stop(paste("Error! Invalid data for `session`. Must be a string:", input_json$`session`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RapmScores: the required field `session` is missing."))
      }
      # check the required field `situation`
      if (!is.null(input_json$`situation`)) {
        if (!(is.character(input_json$`situation`) && length(input_json$`situation`) == 1)) {
          stop(paste("Error! Invalid data for `situation`. Must be a string:", input_json$`situation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RapmScores: the required field `situation` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RapmScores
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

      # check if the required `api_id` is null
      if (is.null(self$`api_id`)) {
        return(FALSE)
      }

      # check if the required `season` is null
      if (is.null(self$`season`)) {
        return(FALSE)
      }

      # check if the required `session` is null
      if (is.null(self$`session`)) {
        return(FALSE)
      }

      # check if the required `situation` is null
      if (is.null(self$`situation`)) {
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

      # check if the required `api_id` is null
      if (is.null(self$`api_id`)) {
        invalid_fields["api_id"] <- "Non-nullable required field `api_id` cannot be null."
      }

      # check if the required `season` is null
      if (is.null(self$`season`)) {
        invalid_fields["season"] <- "Non-nullable required field `season` cannot be null."
      }

      # check if the required `session` is null
      if (is.null(self$`session`)) {
        invalid_fields["session"] <- "Non-nullable required field `session` cannot be null."
      }

      # check if the required `situation` is null
      if (is.null(self$`situation`)) {
        invalid_fields["situation"] <- "Non-nullable required field `situation` cannot be null."
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
# RapmScores$unlock()
#
## Below is an example to define the print function
# RapmScores$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RapmScores$lock()

