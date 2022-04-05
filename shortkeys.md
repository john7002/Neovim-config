## My Vim main commands

### undo / Redo
| Description      | Command |
| ----------- | ----------- |
| Undo        | <span style="color:blue">u </span>|
| Redo        | <span style="color:blue">Ctrl + r </span>|

### Delete / Replace
| Description      | Command |
| ----------- | ----------- |
| delete a character        | <span style="color:blue">x </span>|
| delete a line        | <span style="color:blue">dd </span>|
| delete a word        | <span style="color:blue">dw </span>|
| delete inside pharenthesis        | <span style="color:blue">di( </span>|
| delete rest of the line        | <span style="color:blue">D </span>|
| delete current word        | <span style="color:blue">diw </span>|
| change current word        | <span style="color:blue">ciw </span>|
| change current letter case       | <span style="color:blue">~ </span>|
| replace a character| <span style="color:blue">r</span>|
| shift line to the right| <span style="color:blue">></span>|
| shift line to the left| <span style="color:blue"><</span>|


### Navigate
| Description      | Command |
| ----------- | ----------- |
| Go to line x| <span style="color:blue">:x </span>|
| Go to beginning of the line | <span style="color:blue">0 </span>|
| Go to end of the line | <span style="color:blue">$ </span>|
| Go to next word | <span style="color:blue">w </span>|
| Go to previous word | <span style="color:blue">b </span>|
| Go to beginning of file| <span style="color:blue">gg </span>|
| Go to end of file| <span style="color:blue">G </span>|
| Create new line below| <span style="color:blue">o </span>|
| Create new line above| <span style="color:blue">O </span>|
| Move one block to the top | <span style="color:blue">Ctrl - u </span>|
| Move one block to the down | <span style="color:blue">Ctrl - d </span>|
| Move to the corresponding parenthesis,bracket..| <span style="color:blue">% </span>|
| Move one block to the down | <span style="color:blue">Ctrl - d </span>|
| center screen to current line| <span style="color:blue">zz </span>|
| go to next character| <span style="color:blue">t + character </span>|

### Select/copy/paste
| Description      | Command |
| ----------- | ----------- |
| Copy current line| <span style="color:blue">yy </span>|
| Cut selection| <span style="color:blue">d </span>|
| start selecting | <span style="color:blue">v </span>|
| select current line| <span style="color:blue">Shift - v </span>|
| paste current selection| <span style="color:blue">p </span>|
| multiple cursor| <span style="color:blue">Ctrl - v </span>|
| multiple insertion| <span style="color:blue">I </span>|

### Indent code
| Description      | Command |
| ----------- | ----------- |
| indent| <span style="color:blue"><< or >> </span>|
| to repeat the indent| <span style="color:blue">.</span>|
  
### Search 
| Description      | Command |
| ----------- | ----------- |
| search a word| <span style="color:blue">/ word (+enter) </span>|
| Go to next occurence| <span style="color:blue">n </span>|
| Go to previous occurence| <span style="color:blue">Shift - n </span>|
| select current line| <span style="color:blue">Shift - v </span>|
| display instances of the current word| <span style="color:blue">* </span>|


### Comment(need vim-commentary plugin) 
| Description      | Command |
| ----------- | ----------- |
| comment a line| <span style="color:blue">gc </span>|
| comment a paragraph| <span style="color:blue">gcap </span>|

### File exploration
| Description      | Command |
| ----------- | ----------- |
| find a file(need FZF plugin)| <span style="color:blue">Ctrl-P </span>|
| Open a file| <span style="color:blue">:e <filenam> </span>|
| swith to another tab| <span style="color:blue">gt or gT </span>|
  

## My Tmux main commands
| Description      | Command |
| ----------- | ----------- |
| create a new window| <span style="color:blue">Ctrl-b c</span>|
| navigate between windows| <span style="color:blue">Ctrl-b n</span>|
| rename window| <span style="color:blue">Ctrl-b ,</span>|
| slide window vertically| <span style="color:blue">Ctrl-b ,</span>|
| Resize pannel | <span style="color:blue">Ctrl-b Alt left_arrow</span>|
| switch between pannels | <span style="color:blue">Ctrl-b o</span>|
| display pannels in fullscreen | <span style="color:blue">Ctrl-b z</span>|
