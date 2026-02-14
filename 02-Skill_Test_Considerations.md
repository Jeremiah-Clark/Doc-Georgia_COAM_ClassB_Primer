# 02 Skill Test Considerations

## 02.01 Features Common to Skill Test Presentations

The following patterns are standard ways to implement the legally required Skill Tests in-game.

- In a standard Skill Test, pressing the *Play* button without solving the Skill Test will do nothing
- The *Bet Level*, *Max Bet*, *Exit*, and *Help* buttons are also disabled until the Skill Test is completed
- If the game is AutoPlaying, the AutoPlay will stop when a Skill Test needs to be solved
  - By default, the game should resume AutoPlay following the Skill Test evaluation (though this is not legally required)
- The potential Win Line or combination is highlighted, so it is clear to the player which potential Win is being evaluated
  - You may also deemphasize unrelated symbols to further emphasize the win, but this is optional
  - This does not apply to Overlay Skill Tests that cover the reels; in that case, all required information must be included on the overlay
- There may be multiple Wins present; in these cases, the Skill Test is applied to the highest Win
  - Correctly solving the Skill Test awards **ALL the Wins**
  - Failing the Skill Test awards **NONE of the Wins**
  - This must be made clear in the Help Pages
- Hinting at the correct answer is allowed. Some examples of hinting include: 
  - Making the correct option a different color
  - Adding particles or other effects to the correct option
  - Animating the correct option
  - Applying a label to the correct option

## 02.02 Common Skill Test Types

These are quick sketches of the most common, compliant Skill Tests used in GA COAM, included here for reference. 
Refer to individual specs for specific details about our implementation of these features.

### Reel Nudge

- After the reels stop spinning, if there is a potential Win, one of the reels will be positioned one stop too high or too low to complete the Win
- Arrows will appear at the top and bottom of every reel allow the Player to nudge a reel up or down by one reel stop
- After ONE reel is nudged ONE stop, the Skill Test will be evaluated
- Though it is uncommon in Georgia COAM, some Nudge games can be configured with the nudge arrows present after every spin, even if there is no potential Win
  - In these cases, pressing the *Play* button without solving the Skill Test will start the next game (this is the only exception to the rule that the *Play* button is disabled during a Skill Test)
  - After ONE reel is nudged ONE stop, the Skill Test will be evaluated as a failure
- The nature of how Nudges work means they are best used in single-line, three-reel games
- The earliest Georgia COAM games were Nudge games, and many players still prefer them over any other Skill Test type

### Symbol Select

- After the reels stop spinning, only if there is a potential Win, one of the symbols involved in that Win will be obscured from the Player
- The Player will be presented with two symbols to choose from, one of which will complete the Winning combination and award the Win
- After one of the symbols is selected, the Skill Test is evaluated

### Overlay

- The Skill Test will be shown on an overlay graphic that will overlay the reels, rather than being shown on the reels
- This is a broad category that can include nearly any conceivable mini-game as a Skill Test. Some examples include:
  - Choosing correctly between two or more items
  - Matching colors or numbers
  - Finding a hidden picture
  - Solving a maze
  - Repeating a pattern (aka "Simon")
- Since Overlay features do not need to interact with the reels or symbols, they can be applied to many different games with minimal effort
- They risk interrupting the flow of play if they are not carefully designed
