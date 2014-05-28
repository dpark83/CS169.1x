* Part 1: Create a declarative scenario step for adding movies
  * Used Movie.create to add the given movies to the DB

* Part 2: Happy paths for filtering movies
  * Steps definitions
    * When I un/check the following ratings:
      * When /I (un)?check the following ratings: (.*)/
      * split the rating list on ', '
        * check if uncheck is nil
          * if yes check('ratings_' + rating)
          * if not uncheck('ratings_' + rating)
    * Then I should (not )see the movies with the following raitings:
      * Then /I should (not )?see the movies with the following raitings: (.*)/
      * split rating list on ', ' and store
      * get an array of movies filtered on ratings
        * each movie
          * if not was not present then call the step "I should see \"movie title\""
          * if not was present then call the step "I should not see \"movie title\""
    * Then I should see all the movies
      * Then /I should see all the movies/
      * get the number of table rows in the tbody and compare against the count of all movies
  * Scenario: restrict to movies with 'PG' or 'R' ratings
    * When I check the following ratings: PG, R
    * When I uncheck the following ratings: G, PG-13, NC-17
    * When I press "Refresh"
    * Then I should see the movies with the following raitings: PG, R
    * Then I should not see the movies with the following raitings: G, PG-13, NC-17

* Part 3: Happy paths for sorting movies by title and by release date
  * Steps definitions
    * Then I should see "String1" before "String2"
      * use the regex /#{String1}.*#{String2}/m on page.body to make sure that one string is before another string
    * Then movies should be in some field order
      * Then /movies should be in (.*) order/
      * set :order to the string return from regex in the ordering hash, the string is parameterise, underscored and converted to a symbol
      * get an array of movies sorted with the ordering hash
        * each movie call the step "I should see \"previous title\" before \"current title\""
        * set the previous title to the current title
  * Scenario: sort movies alphabetically
    * When I follow "Movie Title"
    * Then movies should be in title order
  * Scenario: sort movies in increasing order of release date
    * When I follow "Release Date"
    * Then movies should be in release date order
