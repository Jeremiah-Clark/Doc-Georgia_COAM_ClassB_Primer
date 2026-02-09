## Common Skill Tests

These are quick sketches of the most common Skill Tests used in GA COAM, included here for reference (refer to our individual specs for specific details about our implementation of these features)

### Reel Nudge

- After the reels stop spinning, if there is a potential Win, it will require one of the reels to be moved by one stop to complete the Win
- Arrows at the top and bottom of every reel allow the Player to nudge a reel up or down by one reel stop
- After ONE reel is nudged ONE stop, the Skill Test will be evaluated for pass/fail
- ***NOTE:** Nudge games can be configured with the nudge arrows present after every spin, even if there is no potential Win*
  - *In these cases. pressing the Play button will start the next game*
  - *After ONE reel is nudged ONE stop, the Skill Test will be evaluated as a failure*

### Symbol Select

- After the reels stop spinning, only if there is a potential Win, one of the symbols involved in that Win will be obscured from the Player
- The Player will be presented with two symbols to choose from, one of which will complete the Winning combination and award the Win
- After one of the symbols is selected, the Skill Test will be evaluated

### Overlay

- This is a broad category since it can include nearly any conceivable mini-game style Skill Test. Some examples include:
  - Hidden pictures
  - Choosing between two items
  - Solving a maze
  - Matching colors or numbers
  - Repeating a pattern
  - Etc.
- What connects these features is that they are shown on top of an overlay graphic that covers the reels. In this way, these features do not need to interact with the reels or symbols and can be applied to many different games with minimal extra effort