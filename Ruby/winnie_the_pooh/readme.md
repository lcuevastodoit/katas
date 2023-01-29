#   Winnie the Pooh
##  Language: Ruby
##  Design Pattern recommended: Observer

###  Install with

```shell
bundle install
```
## Level 2 Problem:

In this kata, the WinnieThePooh class keeps track of a list of Adventure objects, and the HistoryObserver class is notified whenever a new adventure is added to the list.

----
##  Example of use:

```ruby
    pooh = WinnieThePooh.new
    history = HistoryObserver.new
    pooh.add_observer(history)
    pooh.add_adventure("Hunting for honey", "Hundred Acre Wood", "2020-01-01")
    pooh.add_adventure("Getting stuck in rabbit's hole", "Hundred Acre Wood", "2020-01-02")
    pooh.add_adventure("Rescuing Piglet", "Hundred Acre Wood", "2020-01-03")
```

###  Note:

Hint:
-  Use the Observer pattern
-  The subject is the WinnieThePooh class
-  The observers are the HistoryObserver class
-  The subject can add adventures to the list. There is a Adventure class that you can use to create new adventures.
-  You can use the Observable module to implement the Observer pattern. Include the module in the subject that is WinnieThePooh class.



###  About the Observer pattern

The Observer pattern is a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods.
Also you can include Observable module in your class to use the Observer pattern.
