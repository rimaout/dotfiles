## Plugin Key Bindings

**Telescopre**
    - `<leader>ff`
    - `<leader>fg`
    - `<leader>fh`
    - `<leader>fk`
    - `<leader>ff`
    - `<leader>fb`
    - `<leader>fw`
    - `<leader>fg`
    - `<leader>fd`
    - `<leader>fr`
    - `<leader>fo`
 
**Oil:**
    - `<leader>fe` opens the *oil buffer* that is like a [F]ile [E]xplorer 
    - `-` goes in parent directory (only works inside the oil buffer)

**TreeSitter:**
    - `Enter` key can be used normal and visual mode to do incremental selection

## What I have learned new 
- press `Ctrl + V` to enter **visual-block mode**
- press `Shift + I` to enter **insert mode** at the beginning of the line

## Basic Vim Motion

### From Normal Mode

**Insering:**
- `i` insert -> enter insert mode on the left of the selected char
- `I` insert at the end -> enter insert mode at the beginning of the line
- `a` append -> enter insert mode on the right of the selected char
- `A` append at the beginning -> enter insert mode at the biginning of the line
- `o` -> create new line and enter intert mode in it

**moving**
- use hjkl
- `w` next word -> move cursor to beginnig of next word
- `b` back -> move cursor to beginning of previous word
- `e` end -> move the cursor to the end of the next word
- `0` move cursor to begining of the line
- `$` move cursor to and of the line
- `^` move cursor first char of the line

>*oss:* `4w` will move the cursor 4 words haed

>***oss*** `B` can be remapped to move to the first char (`^`) and `E` to last char (`$`)
- this because is hard to use sibols for navigation, but if done creates problems with other moves (later i will ) 

- `gg` to move to the top of the page
- `G` to move to the end of the page
- `M` to move the corsor to the middle line of the visible screen
- `zz` to make to current line the visual center

**find:**
- `f` + `char` will find the next apperance of the char
- `F` + `char` will find the next appreance of the char but backwards

- use `;` to repeat last find
- use `,` to repeat last find but backwards

>*oss:* `4ft` will searche the 4th next accurance of the char t

**tips:**
- `==` to fix indentation of the current line

**Editing:**
- `p` paste after the cursor
- `P` paste before the cursor
>*oss:* if you copied an entire line `p` will paste the line under the cursor and `P` above the cursor

- `y` yank (copy) (`yy` copy all the line)
- `d` can be use to cut, after presing `d` move the cursor where you want to delear, for examle:

>- `dd` delats the entire line
>- `dl` deleat's next chart to the right
>- `d4w` delatts the next 4 words
>- `d$` can be use to deleat until the enf of the line
>- or you can use visual mode to delect and then deleat

- `u` undo modifications next chart to the right

**Other:**

- `shift + z + z` save and quit
- `jj` = esc
