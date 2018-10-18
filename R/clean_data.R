#' Clean a data.frame
#'
#' This function applies several cleaning procedures to an input `data.frame`,
#' by standardising variable names, labels used categorical variables
#' (characters of factors), and setting dates to `Date` objects. Optionally, an
#' intelligent date search can be used on character strings to extract dates
#' from various formats mixed with other text. See details for more information.
#'
#' @author Thibaut Jombart
#'
#' @param x a `data.frame`
#'
#' @param sep The separator used between words, and defaults to the underscore
#'   `_`.
#'
#' @inheritParams clean_dates
#' 
#' @export
#'
#' @return A `data.frame` with standardised labels for characters and
#'   factors.
#'
#' @examples
#'
#' ## make toy data
#' onsets <- as.Date("2018-01-01") + sample(1:10, 20, replace = TRUE)
#' discharge <- format(as.Date(onsets) + 10, "%d/%m/%Y")
#' genders <- c("male", "female", "FEMALE", "Male", "Female", "MALE")
#' gender <- sample(genders, 20, replace = TRUE)
#' case_types <- c("confirmed", "probable", "suspected", "not a case",
#'                 "Confirmed", "PROBABLE", "suspected  ", "Not.a.Case")
#' messy_dates <- sample(
#'                  c("01-12-2001", "male", "female", "2018-10-18", "2018_10_17",
#'                    "2018 10 19", "// 24//12//1989", NA, "that's 24/12/1989!"),
#'                  20, replace = TRUE)
#' case <- factor(sample(case_types, 20, replace = TRUE))
#' toy_data <- data.frame("Date of Onset." = onsets,
#'                        "DisCharge.." = discharge,
#'                        "GENDER_ " = gender,
#'                        "Épi.Case_définition" = case,
#'                        "messy/dates" = messy_dates)
#' ## show data
#' toy_data
#'
#'
#' ## clean variable names, store in new object, show results
#' clean_data <- clean_data(toy_data)
#' clean_data
#'
#' clean_data2 <- clean_data(toy_data, error_tolerance = 0.25)
#' clean_data2


clean_data <- function(x, sep = "_", force_Date = TRUE,
                                  guess_dates = TRUE, error_tolerance = 0.1,
                                  quiet = FALSE) {

  if (!is.data.frame(x)) {
    stop("x is not a data.frame")
  } 

  if (ncol(x)==0L) {
    stop("x has no columns")
  }

  out <- clean_variable_names(x, sep = sep)
  out <- clean_variable_labels(out, sep = sep)
  out <- clean_dates(out,
                     force_Date = force_Date,
                     guess_dates = guess_dates,
                     error_tolerance = error_tolerance)
  out
}
