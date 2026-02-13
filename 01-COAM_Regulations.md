# 01 COAM Regulations

## 01.01 The Basics

 *(Ref: O.C.G.A. § 16-12-35; O.C.G.A. § 50-27-70; O.C.G.A. § 50-27-84; O.C.G.A. § 50-27-87; O.C.G.A. § 50-27-101; O.C.G.A. § 50-27-102; RU 13.1.2; RU 13.1.13; RU 13.1.14)*

- **COAM** = Coin-Operated Amusement Machines
  - **Class A:** Classic arcade-style games like skee-ball and claw games.
  - **Class B:** Usually resemble casino games (slots in particular), and have a few key attributes:
    - Skill-based—cannot be 100% chance
    - Credits are carried over from game to game
    - Dispense credits that must be redeemed on-location
- **Skill Test**
  - A defining feature of skill-based games is that all Wins are gated behind Skill Tests (see below)
- **Hand Count**
  - Each play on a GA COAM machine adds to the Hand Count, which is used in determining cash-out values
- **Game Pack**
  - COAM games are multi-game products, usually consisting of 5–6 titles per pack that may be freely switched between from a central Game Select screen
- **Site Controller**
  - An on-site device that all cabinets communicate with to handle Intralot reporting, game commissioning, and other related tasks
- **SAS** = Slot Accounting System
  - A common communication protocol used by Intralot to monitor gaming for legal, regulatory, and taxation purposes

### Cabinets

*(RU 13.1.14; Standards for the Secured Compartment)*

- **Cabinet**
  - A catch-all term for the physical hardware that the Game Pack is installed on
- **Hard Meters**
  - COAM Cabinets are required to have two mechanical Hard Meters installed; one tracking coin-in, the other tracking coin-out, both in $1 increments
- **Secured Compartment**
  - COAM cabinets must have a compartment secured with a cylinder lock that houses the logic board and hard meters

### Governance

- **GLC** = Georgia Lottery Commission
  - The GLC oversees the regulation of COAM games in Georgia and retains 13% net receipts for the state
- **Intralot**
  - Contracted by the GLC to oversee the daily operation, security, accounting, and record keeping of all COAM games in Georgia

### Legal Entities

 *(Ref: 50-27-102; RU 13.1.13)*

- **Publisher**
  - The company that produces the games and cabinets. A Publisher can not also be an MLH or LLH. The Publisher can not profit directly from their games beyond the initial sale to an MLH
- **MLH** = Master License Holder
  - A legally mandated buffer between the Publisher and Locations
  - An MLH can not be the exclusive supplier of a Publisher's products to Locations
  - The MLH purchases games from the Publisher and leases them to the Location, and is entitled to 43.5% of net receipts
- **Location**
  - Owns the retail space where the games are located.
  - The Location leases games from the MLH, and is entitled to 43.5% of net receipts

## 01.02 Skill Test

*(Ref: O.C.G.A. § 16-12-35)*

### What Defines a Skill Test

There are specific, legally mandated qualities that determine if gameplay is properly skill-based.

- All Wins MUST be gated behind a Skill Test
  - The sequence is ALWAYS: **Bet → Skill → Award**
  - The Win Award may encompass an entire Bonus feature, so long as there has been a Skill Test between the Bet and the Award
  - The reel spin presentation may come before or after the Skill Test, though it is nearly always placed before the Skill Test 
- The player must be required to take an action to determine success or failure
  - If there is no player interaction, it is not skill-based
- It must be possible for the test to fail
  - If there is no way to lose or fail, then it is not a Skill Test
- The award amount is predetermined as normal
  - The Skill Test result is pass or fail only; it does not impact the prize amount
- These guidelines apply to all prize awards, including regular plays, bonus games, jackpots, progressives, etc.

## 01.03 Hand Count

*(Ref: O.C.G.A § 16-12-35; RU 3.1.14)*

The concept of a Hand Count is particular to a few skill-based markets, including Georgia.

- The current Hand Count must be visible to the player during normal play as well as in the Game Selection screen
- The Hand Count starts at 0 when credits are first added to the machine
- Every play adds 1 to the Hand Count
- When cashing out, the maximum amount that can be collected is [Hand Count] × $5
  - Cash-out increment and Cash-out Amount can be anything from $0.01 to $5
    - Not all Game Packs allow this to be changed; most that do default both to $5
  - Any remainder is left on the cabinet as credits
  - The number of Hand Counts cashed out will be subtracted from the current Hand Count
  - If the Cash Out increment is set to less than $5, for the purposes of subtracting Hand Counts, round up to the next $5 increment

> [!EXAMPLE]
>
> **Hand Count Cash-Out**
>
> A player has $42.50 in credit and 9 Hand Count.
>
> - If the Cash-out increment is $5:
>   - They will actually cash out $40 (a multiple of $5)
>   - $2.50 will remain on the machine
>   - The Hand Count will be reduced to 1 ($40/5 = 8 Hand Counts)
>
> - If the Cash-out increment is set to $1:
>   - They will actually cash-out $42 (a multiple of $1)
>   - $0.50 will remain on the machine
>   - The Hand Count will be reduced to 0 ($42/5 = 8.4 Hand Counts)

- If the Credits on the machine drop below the minimum bet level, a Hand Count Reset timer will begin (the length of the countdown can be set in the settings, and should default to 30 seconds
- When the countdown reaches 0, the Hand Count resets to 0
- If more Credits are added to the machine before the countdown ends, the countdown stops, and the Hand Count is retained

> [!EXAMPLE]
>
> **Hand Count Reset**
>
> A player has $0.40 in credits, and the Minimum Bet for the game is $0.25:
>
> - Playing a game with a Bet of $0.16 or more will drop the current credits below the Minimum Bet, which will trigger the Hand Count Reset countdown:
>   - If enough credits are inserted before the countdown reaches 0, the Hand Count will be retained
>   - If the countdown reaches 0, the Hand Count is reset to 0, and any credits left on the machine remain

## 01.04 Cash-Out Requirements and Limitations

*(Ref: O.C.G.A § 16-12-35; O.C.G.A § 50-27-71; RU 13.3.1)*

Cash-out in Georgia COAM has several specific limitations:

- A COAM machine **cannot** dispense cash

> [!TIP]
>
> Prior to July 1, 2026:
>
> - A COAM game can award vouchers, gift cards, or lottery products
>   - Must be redeemed on-site only
>   - Such vouchers cannot be redeemed for cash, firearms, alcohol, or tobacco
>   - Other prizes of equivalent value are also permitted
>
> After July 1, 2026:
>
> - Prepaid gift cards and lottery products will be the ONLY allowed form of redemption  
>   - Gift cards can be used for any legal purchase at any location that accepts them 

- Can cash out no more than $5 per Hand Count
- Each Hand Count is treated as an individual game with a $5 maximum award. Because of this, there are no taxable wins in Georgia COAM
  - Put another way, a $1500 cash-out isn't a $1500 win; it is 300 × $5 wins.

## 01.05 Location Requirements

*(Ref: O.C.G.A § 50-27-84; RU 13.1.13)*

There are particular requirements that locations must meet to qualify for a COAM license.

- May be any retail location that does not primarily sell alcohol, firearms, tobacco, or pornographic/adult content, and primarily sells merchandise rather than services
  - **NOTE:** A rule change is in the works to allow for COAM machines to be placed in bars*
- COAM revenue cannot exceed 50% of the total revenue for the location
- There is a maximum of 9 COAM machines per site

## 01.06  Other Regulations

### SAS Support

*(Ref: RU 3.1.14; COAM SAS Requirements v1.8)*

- Our separate SAS Requirements document includes the full list of required SAS Long Polls, Meters, and Events
- The Primary SAS port may only be used by Intralot to connect the Cabinet to their Site Controller
  - The Site Controller will confirm the identity of the Game Pack by running an LP21 (ROM Signature) and comparing the results to their records
    - If this check fails, the Game Pack will be disabled
- The Secondary SAS port is allowed to be used by kiosk payment systems
  - Secondary SAS is disallowed from sending LP01 (Disable Play) and LP02 (Enable Play) commands

### No Shared Progressives

*(Ref: O.C.G.A § 50-27-70)*

- As a consequence of the “Class B” legal definition allowing the carry-over of points only within a single session, Progressives can not be shared between cabinets
  - Games that are a part of the same Game Pack may share Progressives within that single cabinet, as the game session includes all of the games in a Game Pack

## 01.07 Other Considerations

These are not explicitly stated regulatory requirements; rather, they are guidance we have received from our interactions with regulators. Proceed with caution.

### Table Game Imagery Disallowed

- Gambling imagery—craps tables, roulette wheels, playing cards, casino backgrounds, and so on—is not allowed
- DO NOT use card suits and face cards in designs
  - Traditional royal symbols (A, K, Q, J, and 10) are allowed so long as they do not look like cards and are not paired with a suit
- Dice are allowed

### Cash Labels and Imagery Disallowed

- There can be no messaging, implicit or implied, that the game will dispense actual cash
- DO NOT use "Cash Out" in-game or on buttons
	- Use "Collect" instead
- DO NOT label anything as "Cash"
	- Use "Credits" instead
- Dollar signs and cash values on credit amounts and prizes are OK
- Dollar sign and gold bar or similar reel Symbols are OK
- Bank and cash themes are OK

> [!SUMMARY]
>
> - **Skill Tests**
>   - All wins are gated behind a Skill Test
>   - Skill Tests require player interaction
>   - Skill Test results are pass/fail
> - **Hand Count**
>   - Hand Count starts at 0; add 1 Hand Count per play
>   - The player can cash out only $5 per Hand Count
>     - For every $5 cashed-out, subtract 1 Hand Count
>   - Credits below the minimum Bet triggers the Hand Count Reset countdown
>     - If no credits are added before the countdown ends, Hand Count resets to 0
> - **Cash Out**
>   - No cash, award vouchers, gift cards, or lottery products
>   - After June 1, 2026, only prepaid gift cards
> - **Locations**
>   - No more than 50% revenue from COAM
>   - Limit of 9 COAM cabinets per location
> - **Restrictions**
>   - No network aside from Intralot's Site Controller
>   - Secondary SAS can not enable/disable games
>   - No casino imagery
>   - No "Cash"
