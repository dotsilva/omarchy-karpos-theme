# cromanomy

![cromanomy theme preview](https://raw.githubusercontent.com/dotsilva/omarchy-cromanomy-theme/master/preview.png)

```bash
omarchy-theme-install https://github.com/dotsilva/omarchy-cromanomy-theme.git
```

## Color semantics

* **Background (`#1E1E1E`; `#363636`; `#4E4E4E`; `#666666`)**
  * UI: Structural background layers.
  * Code: `#1E1E1E` is the main code background and is not reused as background for other elements.

* **Black (`#8A8A8A`)**
  * UI: Passive or inactive, but non-background.
  * Code: Comments.

* **Red (`#F34E4E`)**
  * UI: Critical alert; deletion; negative feedback; high priority; off.
  * Code: Halts, stops (e.g.: `return`, `break`, `raise`, `error`... red is the "stop!").

* **Green (`#36DB36`)**
  * UI: Healthy/enabled state; addition; positive feedback; confirmation; on.
  * Code: Invocation (e.g.: `require`, `include`, `source`, function call, method call... green is the "run!").

* **Yellow (`#CFCF2A`)**
  * UI: Broken, but not dead; alerts; mid priority; mid states.
  * Code: Routing, flow redirection (e.g.: `if`, `else`, `&&`, `|`, `>`... yellow is the "take this way instead").

* **Blue (`#7E7EFF`)**
  * UI: Static neutral information.
  * Code: Structure and definition (e.g.: `local`, `class`, `module`, function definition, method definition, structural punctuation, assignment operators like `=`...).

* **Magenta/Purple (`#E742E7`)**
  * UI: Exceptional semantic cases that need highlighting.
  * Code: Keyworded data and boolean data (e.g.: `nil`, `false`, `true`, `null`, `undefined`... it says "this is data is uncomon").

* **Cyan (`#38D5D5`)**
  * UI: Ephemeral neutral info; active focus; visual anchor; current user interaction.
  * Code: Ephemeral references (e.g.: `self`, `this`, variables, links...).

* **White (`#D2D2D2`)**
  * UI: Standard foreground color; neutral generic labels.
  * Code: Generic data (e.g.: strings, numbers...).
