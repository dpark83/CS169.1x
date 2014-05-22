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
