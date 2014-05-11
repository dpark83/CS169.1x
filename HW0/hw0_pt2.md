* Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name.
  * Just us the + operator, well function, to combined the two strings
  
* Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters!
  * Use a regex that starts with any letter that is a consonant and is 0 or more characters, i.e. /^[b-df-hj-np-tv-z].*/i

* Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!
  * Check if string is a binary number using a regex
    * String is one or more 0 or 1, i.e. /^[01]+$/
    * Return false if not valid
  * Convert string to a integer using to_i(2) so it uses base two
  * Check the modulo of the integer and 4, if it is 0 then return true
  * A return fasle is the last line, kind of a catch all
