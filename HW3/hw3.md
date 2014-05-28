* Part 1: Create a declarative scenario step for adding movies
  * Used Movie.create to add the given movies to the DB

* Part 2: Happy paths for filtering movies

* Part 3: Happy paths for sorting movies by title and by release date
  * Then I should see "String1" before "String2"
    * use the regex /#{String1}.*#{String2}/m on page.body to make sure that one string is before another string
  * Then movies should be in some field order
    * Then /movies should be in (.*) order/
    * set :order to the string return from regex in the ordering hash, the string is parameterise, underscored and converted to a symbol
    * get an array of movies sorted with the ordering hash
      * each movie call the step "I should see \"previous title\" before \"current title\""
      * set the previous title to the current title
