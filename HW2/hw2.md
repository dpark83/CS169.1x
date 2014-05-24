* PART 1: SORTING THE LIST OF ALL MOVIES
  * controller
    * index method
      * added @sort, this is a hash that has the following structue
        * :title
          * :active => false
          * :sort => "asc"
        * :release_date
          * :active => false
          * :sort => "asc"
      * the params hash in examined
        * if it has a key :title_sort
          * set @sort[:title][:active] to true - this used in the view to set the TH class
          * set @sort[:title][:sort] to the inverse of what was passed in - this is used for the generation of the link
          * @movies is set to all Movies ordered by title, with the direction passed in params
        * if it has a key :release_date_sort
          * set @sort[:release_date][:active] to true - this used in the view to set the TH class
          * set @sort[:release_date][:sort] to the inverse of what was passed in - this is used for the generation of the link
          * @movies is set to all Movies ordered by title, with the direction passed in params
        * if neither is passed in
          * @movies is set to all Movies
  * view
    * index
      * for the title TH
        * a conditional class is added based on the state of @sort[:title][:active]
        * the link is created with the paramater title_sort with the value of @sort[:title][:sort] and an id of title_header
      * for the release date TH
        * a conditional class is added based on the state of @sort[:release_date][:active]
        * the link is created with the paramater release date_sort with the value of @sort[:release_date][:sort] and an id of release_date_header

* PART 2: FILTER THE LIST OF MOVIES
  * view
    * index
      * added extra param to form_tag for HTML id of 'ratings_form'
      * added extra param to submit_tag for HTML id of 'ratings_submit'
      * use has_key? on @sort[:ratings], so only checked ones are checked
  * model
    * get_ratings method
      * get all the unique ratings in order - Movie.pluck(:rating).uniq.sort
  * controller 
    * index
      * @all_ratings is populated with a call to get_ratings on the model
      * @sort is expanded with the :ratings key
      * to find what ratings to filter on the params hash is checked for the :ratings key
        * if found @sort[:ratings] is set to the contents of params[:ratings]
        * if not and @sort[:ratings] is empty then it is populated with all ratings
      * Movie.where is called with :rating set to all the keys from @sort[:ratings]


* PART 3: REMEMBER THE SORTING AND FILTERING SETTINGS
  * controller
    * index
      * store the contents of the @sort hash in session[:sort], so it is retained between requests
      * check the session has for the :sort key
        * if not found then set @sort to be a default hash, as in step 1 & 2
        * if found then set @sort as the contents of session[:sort]
      * construct a hash with all the settings that were used to generate the list of movies
      * compare this hash against params, except the 'action' and 'controller' keys
      * if not the same then redirect to movies with the constructed hash as parameters
