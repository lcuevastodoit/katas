##  Language: Ruby
##  Design Pattern recommended: Adapter

###  Install with

```shell
bundle install
```
## Level 1 Problem:

Create a Ruby application that allows you to retrieve information about Star Wars characters through an external API. The application should be able to display the name, species, and home world of a character given its ID. Use the Adapter pattern to adapt the API response to an object of a character class.

----
##  Example of use:

```ruby
fetcher = CharacterFetcher.new((StarWarsAPIAdapter.new))

luke = fetcher.fetch(1)
puts luke.name # Output: "Luke Skywalker"
puts luke.species # Output: "Human"
puts luke.home_world # Output: "Tatooine"
```

###  Note:

Use the Star Wars API (https://swapi.dev/) to obtain information about characters.
-  for all characters: https://swapi.dev/api/people
-  for only one character: https://swapi.dev/api/people/<id>

Use the HTTParty gem to make calls to the API.
-  require 'httparty'
-  HTTParty.get

Hint: Use the Adapter pattern to adapt the API response to an object of the Character class.
-  Create the initial TDD unit tests for the character fetcher class
-  Create the character class for attributes definitions
-  Create the Star War adapter class to retrieve the character from API and adapt this response to a Character object
-  Create the character fetcher class to use the adapter retrieving the character info by id

This problem is a challenge to apply the Adapter pattern to a real Star Wars situation. Good Luck !
