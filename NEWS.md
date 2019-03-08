# linelist 0.8.3.9000

* `compare_data()` now returns list of variable classes instead of TRUE if the
  classes match. (See #53 for details).

# linelist 0.8.2.9000

* `clean_variable_spelling()` will now run global variables before processing
  named variables instead of in tandem. This allows the user to define
  misspellings in the `.global` variable.
  See https://github.com/reconhub/linelist/issues/51 for details.

# linelist 0.8.1.9000

* `clean_spelling()` will no longer throw a warning if there is no value for
  .default to replace.
* `clean_variable_spelling()`, `clean_variables()`, and `clean_data()` gain the
  `warn` and `warn_spelling` arguments which will capture all errors and
  warnings issued from `clean_spelling()` for each variable. 
  See https://github.com/reconhub/linelist/pull/48 for details).  

# linelist 0.8.0.9000

* `compare_data()` allows users to compare _structural changes_ to data frames
  This includes, names, classes, dimensions, and values in matching categorical
  variables. (See https://github.com/reconhub/linelist/pull/50 for details).
* `top_values()` will mask all but the top `n` values in a factor.
* the `crayon` package is added to imports

# linelist 0.7.3.9000

* `clean_spelling()` wordlists now allow the optional `.missing` keyword to
  replace both `NA` and blank ("") cells in the data. Values that are `NA` will
  be converted to "NA" (character) with a warning. 
  See https://github.com/reconhub/linelist/pull/44 and 
  https://github.com/reconhub/linelist/pull/45 for details.

# linelist 0.7.2.9000

* `guess_dates()` can once again parse date formats that are file names: 
  `example_format_2019-02-19.xlsx`. (See #43 for details)

# linelist 0.7.1.9000

* `clean_spelling()` gains a `quiet` argument to suppress warnings.
* `clean_variable_spelling()` will no longer error if there are variable 
  specifications that don't exist in the data. It will also suppress all 
  warnings from `clean_spelling()`. (see #41 for details)

# linelist 0.7.0.9000

* `clean_spelling()` will check the spelling of a vector against a wordlist
* `clean_variable_spelling()` will apply `clean_spelling()` to all specified
  columns in a data frame
* `clean_variables()` wraps `clean_variable_labels()` and `clean_variable_spelling()`
* `clean_data()` now can optionally check labels againt a wordlist.

(see #38 for details)

# linelist 0.6.0.9000

* `mask()` will temporarily replace column names with epivars
* `unmask()` reverses the effect of mask.
* New Imports: tidyselect and purrr
  (see #37 for details)

# linelist 0.5.1.9000

* `geo` epivar was replaced with `geo_lat` and `geo_lon` (see #35)

# linelist 0.5.0.9000

* add optional constraints for what columns can be manipulated and make 
  clean_data() faster (see #32)

# linelist 0.4.0.9000

* use lubridate package to parse dates (see #30)

# linelist 0.3.7.9000

* `lookup()` function can look up the column name corresponding to an epivar
   (see #28)

# linelist 0.3.6.9000

* `add_epivars()` adds epivars to the global dictionary
* `add_description()` updates the description of one of the epivars
  (see #26)

# linelist 0.3.5.9000

* add `template_linelist()` function (see #24)

# linelist 0.3.4.9000

* add rio to imports (see #23)

# linelist 0.3.3.9000

* rename all_dictionary argument to full_dict (see #22)

# linelist 0.3.2.9000

* re-instate validator of dots (see #21)

# linelist 0.3.1.9000

* re-instate data validation (see #20)

# linelist 0.3.0.9000

* restructure linelist class to make dictionary global (see #19)

# linelist 0.2.1.9000

* dictionary validation and tibble import (see #17)

# linelist 0.2.0.9000

* new functions to handle epivars (see #16)

# linelist 0.1.1.9000

* `get_vars()` can take multiple variables (see #15)

# linelist 0.1.0.9000

* adds linelist class (see #9)

# linelist 0.0.2.9000

* `guess_dates()` now throws an appropriate error if a vector is passed instead
  of a data frame. See https://github.com/reconhub/linelist/issues/4 for details

# linelist 0.0.1.9000

* Added a `NEWS.md` file to track changes to the package.


