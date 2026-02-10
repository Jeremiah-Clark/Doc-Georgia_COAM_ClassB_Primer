# 01 Basics of COAM

## 01.01 Important Terms & Entities

- **COAM** = Coin Operated Amusement Machines
  - **Class A:** Classic arcade-style games like skee-ball and claw games.
  - **Class B:** Usually resemble casino games (slots in particular), and have a few key attributes:
    - Skill-based, cannot be 100% chance
    - Credits are carried over from game to game
    - Dispense credits in some form that must be redeemed for merchandise on-location
- **GLC** = Georgia Lottery Commission
  - The GLC oversees COAM games in Georgia.
- **Intralot**
  - Manages daily operation, security, accounting, and records of all COAM games in Georgia
- **Skill Test**
  - A defining feature of skill-based games is that all Wins are gated behind Skill Tests (see below)
- **Hand Count**
  - Each play on a GA COAM machine adds to the Hand Count, which is used for determining cash-out values (see below)
- **Site Controller**
  - A device that all cabinets on site communicate with to handle Intralot reporting, ticket printing and other related tasks
- **SAS** = Slot Accounting System
  - A direct connection between each cabinet and Intralot; is used to monitor gaming for legal, regulatory, and tax purposes
- **Publisher**
  - Produces games and cabinets
- **Master License Holder**
  - Purchases cabinets from the publisher and owns them

### Location License Holder

Owns the retail space, leases cabinets from Master License Holder.

## 01.02. Skill Test

### What Defines a Skill Test

A few things to keep in mind when determining if the gameplay is properly skill-based or not:

- All Wins MUST be gated behind a Skill Test
  - The sequence is ALWAYS: **Bet → Skill → Award**
  - The Win Award may encompass an entire Bonus feature, so long as there has been a Skill Test between the Bet and the Award
  - The reel spin presentation may come before or after the Skill Test, though it is nearly always placed before the Skill Test 
- The Player has to decide something and take an action to determine success or failure
  - If there is no player interaction, it is not skill-based
- It must be possible for the test to fail
  - If there is no way to lose or fail, then it is not a skill test
- The possible award amount is predetermined as normal in a game of the type being played (usually a slot machine)
  - The skill determination only decides whether the Player receives the award or not, and it does not impact the prize amount
- These guidelines apply to all prize awards, including regular plays, bonus games, jackpots, progressives, etc.

### Features Common to All Skill Test Presentations

- Pressing the *Play* button without solving the Skill Test will do nothing
- The *Bet Level*, *Max Bet*, *Exit*, and *Help* buttons are also disabled until the Skill Test is completed
- If the game is AutoPlaying, the AutoPlay will stop when a Skill Test needs to be solved
  - The game may resume AutoPlay following the Skill Test evaluation, but it is not required
- The potential Win Line or combination is highlighted, so it is clear to the player which potential Win is being evaluated
  - This may also involve deemphasizing symbols not involved in the potential Win, but this is not required
- There may be multiple Wins present; in these cases, the Skill Test is applied to the highest Win
  - Correctly solving the Skill Test awards **ALL the Wins**
  - Failing the Skill Test awards **NONE of the Wins** (this must be made clear in the Help Pages)
- Hinting at the correct answer is allowed. Some examples of hinting include: 
  - Making the correct option a different color
  - Adding particles or other effects to the correct option
  - Animating the correct option


## 01.03 Common Skill Tests

These are quick sketches of the most common Skill Tests used in GA COAM, included here for reference. 
Refer to individual specs for specific details about our implementation of these features.

### Reel Nudge

- After the reels stop spinning, if there is a potential Win, one of the reels will be positioned one stop too high or too low to complete the Win
- Arrows at the top and bottom of every reel allow the Player to nudge a reel up or down by one reel stop
- After ONE reel is nudged ONE stop, the Skill Test will be evaluated for pass/fail
- Some Nudge games can be configured with the nudge arrows present after every spin, even if there is no potential Win
  - In these cases, pressing the *Play* button without solving the Skill Test will start the next game
  - After ONE reel is nudged ONE stop, the Skill Test will be evaluated as a failure

### Symbol Select

- After the reels stop spinning, only if there is a potential Win, one of the symbols involved in that Win will be obscured from the Player
- The Player will be presented with two symbols to choose from, one of which will complete the Winning combination and award the Win
- After one of the symbols is selected, the Skill Test will be evaluated

### Overlay

- The Skill Test will be shown on an overlay graphic that will overlay the reels, rather than being shown on the reels
- This is a broad category that can include nearly any conceivable mini-game as a Skill Test. Some examples include:
  - Choosing correctly between two items
  - Hidden pictures
  - Solving a maze
  - Matching colors or numbers
  - Repeating a pattern
  - Etc.
- Since Overlay features do not need to interact with the reels or symbols, they can be applied to many different games with minimal effort

## 01.04 Hand Count

The concept of a Hand Count is particular to a few skill-based markets, including Georgia.

- The Hand Count starts at 0 when credits are first added to the machine
- Every play adds 1 to the Hand Count
- When cashing out, the maximum amount that can be collected is [Hand Count] x $5
  - Cash-out increment and minimum Cash-out Amount can be set to anything from $0.01 to $5
  - Any remainder is left on the cabinet as credit
  - The number of Hand Counts cashed out will be subtracted from the current Hand Count upon cashing out

**Example:**
A player has $42.50 in credits and 9 Hand Count (so the maximum amount the player can cash out is $45):

1. If the Cash-out increment is set to $5, they will actually cash-out $40; $2.50 will remain on the machine and the Hand Count will be reduced to 1
2. If the Cash-out increment is set to $1, they will actually cash-out $42; $0.50 will remain on the machine and the Hand Count will be reduced to 0

- If the Credits on the machine drop below the minimum bet level, a Hand Count Reset timer will begin (the length of the countdown can be set in the settings, and should default to 30 seconds
  - When the countdown reaches 0, the Hand Count resets to 0
  - If more Credits are added to the machine before the countdown ends, the countdown stops, and the Hand Count is retained

**Example:**
A player has $0.40 in credits and the Minimum Bet for the game is $0.25.
Playing a game with a Bet of $0.16 or more will drop the current credits below the Minimum Bet, which will trigger the Hand Count Reset countdown:

- If enough credits are inserted before the countdown reaches 0, the Hand Count will be retained
- If the countdown reaches 0, the Hand Count is reset to 0 and any credits left on the machine remain

## 01.05 Cash-Out Requirements and Limitations

Cash-out in Georgia COAM has several specific limitations

- A COAM machine cannot dispense cash
- It can dispense vouchers or gift cards to be redeemed on-site
  - Cannot be redeemed for cash, firearms, alcohol, tobacco, or pornography
- Other prizes of equivalent value are also permitted
- ***NOTE:** A voluntary pilot program is in progress to allow winnings to be placed on a pre-paid Visa or Mastercard; we will update as necessary*
- Can cash-out only $5 per Hand Count (see above)
- Legally speaking, each Hand Count is treated as an individual game with a $5 maximum award, so that there is no traditional “hand pay” for taxable wins. In other words, a $1500 cash out isn’t a $1500 win, it is 300 x $5 wins.

## 01.06 Location Requirements

There are particular requirements that locations must meet to qualify for a COAM license:

- Any retail location that does not primarily sell alcohol, firearms, tobacco, or pornographic/adult content; and primarily sells merchandise rather than services
- COAM revenue cannot exceed 50% of the total revenue for the location
- There are a maximum of 9 COAM machines per site
- ***NOTE:** The rules are changing soon to allow for COAM machines to be placed in bars; we will update as necessary*

## 01.07 Regulatory Considerations

### Table Game Imagery Disallowed

- Gambling imagery—craps tables, roulette wheels, playing cards, casino backgrounds, and so on—is not allowed
- DO NOT use card suits and face cards in designs
- Traditional royals (A, K, Q, J, and 10) are allowed so long as they do not look like cards and are not paired with a suit
- Dice are allowed

### Cash Labels and Imagery Disallowed

These are not explicit regulatory requirements, but rather guidance we have received from regulators:

- There can be no messaging, implicit or implied, that the game will dispense actual cash
- DO NOT use “Cash Out” in-game or on buttons
	- Use “Collect” instead
- DO NOT label anything as “Cash”
	- Use “Credits” instead
- Dollar signs and cash values on credit amounts and prizes are OK
- Dollar sign and gold bar reel Symbols are OK
- Bank and cash themes are OK
