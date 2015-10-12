# Rubocop Issues to Solve

```
Topaz-Sue:go_fish $ pwd
/Users/Topaz/workspace/davinci_coders_t3_2015/practice/go_fish

(105436104_go_fish_master) Sue Uyetake
Topaz-Sue:go_fish $ guard
23:55:01 - INFO - Inspecting Ruby code style of all files
Inspecting 6 files
CCC.CW

Offenses:

card.rb:1:1: C: Missing top-level class documentation comment.
class Card
^^^^^
card.rb:6:3: C: Use attr_reader to define trivial reader methods.
  def type
  ^^^
deck.rb:3:1: C: Missing top-level class documentation comment.
class Deck
^^^^^
deck.rb:6:5: C: Use %w or %W for array of words.
    ['seahorse', 'shark', 'clownfish',
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
game.rb:4:1: C: Missing top-level class documentation comment.
class Game
^^^^^
game.rb:22:3: C: Use attr_reader to define trivial reader methods.
  def players
  ^^^
Guardfile:19:9: C: Use // around regular expression.
  watch(%r{.+\.rb$})
        ^^^^^^^^^^^
player.rb:1:1: C: Missing top-level class documentation comment.
class Player
^^^^^
player.rb:7:3: C: Use attr_reader to define trivial reader methods.
  def name
  ^^^
player.rb:18:22: C: Pass &:type as an argument to map instead of a block.
    type = @hand.map do |card|
                     ^^^^^^^^^
player.rb:24:16: W: Unused method argument - type. If it's necessary, use _ or _type as an argument name to indicate that it won't be used. You can also write as fish_for(*) if you want the method to accept any arguments but don't care about them.
  def fish_for(type)
               ^^^^

6 files inspected, 11 offenses detected

23:55:02 - INFO - Guard is now watching at '/Users/Topaz/workspace/davinci_coders_t3_2015/practice/go_fish'
[1] guard(main)>
```
