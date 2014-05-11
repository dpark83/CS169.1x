* Define a class BookInStock which represents a book with an isbn number, isbn, and price of the book as a floating-point number, price, as attributes. The constructor should accept the ISBN number (a string) as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) if the ISBN number is the empty string or if the price is less than or equal to zero.
  * Pretty cookie cutter class
    * Use length of isbn to make sure isbn isn't an empty string

* Include the proper getters and setters for these attributes. Include a method price_as_string that returns the price of the book with a leading dollar sign and trailing zeros, that is, a price of 20 should display as "$20.00" and a price of 33.8 should display as "$33.80".
  * for the price output a format of %.2f is used to always get two decimal points

The code was written in less time than it would have taken to setup a paired programming session (not including writing the code), know this is not really the point but still the time required to setup something up should be weighted with the benefit - some comes down to  "Is the juice worth the squeeze?".
