* HW 1-1: Fun with strings

  * Part A - Palindromes
    * All nonalphabet characters are stripped out - /[^a-z]/
    * true is returned if the stripped string is the same as the reversed stripped string
    * the last last is a catch all that returns false

  * Part B - Word Count
    * All nonalphabet characters are stripped out - /[^a-z\s]/
    * Multiple white space characters are replacted with a single space - /\s+/
    * Any white space character at the beginning of a line is stripped out - /^\s/
    * Then split on whitespace characters - /\s/
    * A hash is used to store the word (key) and the frequency (value)
    * The hash is returned

  * Part C - Anagrams
    * The string is split on a space
    * Each word is changed to lowercase and then the characters are sorted
    * A has is used to store the sorted string (key) and an array contains the orginial word (value)
    * Each value from the above hash is pushed into an array and the array returned

* HW 1-2: Basic Object-Oriented Programming for Dessert
  * Dessert
    * As both name and calories have both need a setter and getter attr_accessor was used
    * healthy?
      * returns trie if @calories < 200
      * last line is a catch all that returns false
    * delicious? return true
  * JellyBean
    * Since any change to flavor requires a change to the name a custom setter is used
      * @name = flavor + 'jelly bean'
    * delicious?
      * returns false if @flavor is licorice

* HW 1-3: Rock Paper Scissors

  * Game Winner
    * a NoSuchStrategyError is raised if player1[1] or player2[1] (this is what the player chose) is not valid - /[^RPS]/
    * player1 is returned if player1[1] is the same as player2[1]
    * The win logic is:
      * Player1 is Rock
        * player1 is returned of Player2 is Scissors
        * catch all is return player2
      * Player1 is Scissors
        * player1 is returned of Player2 is Paper
        * catch all is return player2
      * Player1 is Paper
        * player1 is returned of Player2 is Rock
        * catch all is return player2

  * Tournament
    * Due to the multidimensional nature of the structure of the array the element [0][0] is check to see if it is a String
      * If true
        * winner is called with the arguments of tournament[0], tournament[1] and returned
      * If false 
        * tournament_winner is called twice, first with tournament[0] then with tournament[1], and the results stored
        * then winner is called with the arguments of the above two calls and returned

* HW 1-4: Ruby Metaprogramming
  * A method of #{attr_name}=(attr_name) is defined
  * If the @#{attr_name+'_history'} has not been initalised
    * initalise it with an array that contains nil
  * else
    * push the current value of @#{attr_name} into @#{attr_name+'_history'}
  * Last set @#{attr_name} to it's new value - otherwise the last history array element will be the current value
