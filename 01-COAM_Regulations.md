# 01 COAM Regulations

## 01.01 The Basics

*Ref: GA Code § 16-12-20 (2021) • O.C.G.A. § 50-27-70 (2025) • RU 13.1 (2019) • RU 13.3 (2019)*

- **COAM** = Coin-Operated Amusement Machines
  - **Class A:** Classic arcade-style games like skee-ball and claw games.
  - **Class B:** Usually resemble casino games (slots in particular), and have a few key attributes:
    - Skill-based—cannot be 100% chance *(see 01.02)*
    - Credits are carried over from game to game within a single session
    - Award lottery products or credits that must be redeemed on-location (prior to July 1, 2026)
    - Award lottery products of prepaid gift cards (after July 1, 2026; *see 01.04)*
- **Skill Test**
  - A defining feature of skill-based games is that all Wins are gated behind Skill Tests *(see 01.02)*
- **Hand Count**
  - Each play on a GA COAM Cabinet adds to the Hand Count, which is used in determining cash out values *(see 01.03)*
- **Game Pack**
  - COAM Cabinets are multi-game products sold as Game Packs. Each pack typically contains 5 or 6 titles that can be freely switched between using a central Game Select screen.

### Cabinets

*Ref: RU 13.1 (2019); Standards for the Secured Compartment*

- **Cabinet**
  - An inclusive term for the physical hardware and the Game Pack installed on it
- **Hard Meters**
  - COAM Cabinets are required to have two mechanical Hard Meters installed; one tracking coin-in, the other tracking coin-out, both in $1 increments
- **Secured Compartment**
  - COAM Cabinets must have a secured compartment that houses the logic board and Hard Meters

### Governance

*Ref: O.C.G.A. § 50-27-101 (2025) • RU 13.1 (2019)*

- **GLC** = Georgia Lottery Commission
  - The GLC oversees the regulation of COAM games in Georgia and retains 13% net receipts for the state
- **Intralot**
  - Contracted by the GLC to oversee the daily operation, security, accounting, and record keeping of all COAM games in Georgia
- **Site Controller**
  - An on-site device that all Cabinets communicate with to handle Intralot reporting, game commissioning, and other related tasks
- **SAS** = Slot Accounting System *(see 01.06)*
  - A common communication protocol used by Intralot to monitor gaming for legal, regulatory, and taxation purposes
  - Ultimately, the flow of information is: Cabinet ↔ Site Controller ↔ Intralot ↔ GLC

### Legal Entities

*Ref: O.C.G.A. § 50-27-84 (2025) • O.C.G.A. § 50-27-87 (2025) • O.C.G.A. § 50-27-102 (2025) • RU 13.1 (2019)*

- **Publisher/Distributor**
  - The company that produces the games and Cabinets. A Publisher cannot also be an MLH or a Location. The Publisher cannot profit directly from their games beyond the initial sale to an MLH
- **MLH** = Master License Holder
  - A legally mandated buffer between the Publisher and Locations
  - An MLH can not be the exclusive supplier of a Publisher's products to Locations
  - The MLH purchases games from the Publisher and leases them to the Location, and is entitled to 43.5% of net receipts
- **Location**
  - Owns the retail space where the games are located.
  - The Location leases games from the MLH, and is entitled to 43.5% of net receipts

## 01.02 Skill Test

*Ref: GA Code § 16-12-35 (2021)*

### What Defines a Skill Test

There are specific, legally mandated qualities that determine if gameplay is properly skill-based.

- All Wins MUST be gated behind a Skill Test
  - The sequence is ALWAYS: Bet → Skill → Award
  - The Win Award may encompass an entire Bonus feature, so long as there has been a Skill Test between the Bet and the Award
  - You can wrap an entire bonus feature inside the Award step, as long as a Skill Test happens between Bet and that Award
  - The reel spin presentation may come before or after the Skill Test, though it is nearly always placed before the Skill Test 
- The player must be required to take an action to determine success or failure
  - That action must be part of the flow of play, not a menu or other unrelated action
  - If there is no player interaction, it is not skill-based
- It must be possible for the test to fail
  - If there is no way to lose or fail, then it is not a Skill Test
- The award amount is predetermined as normal
  - The Skill Test result is pass or fail only; it does not impact the prize amount
- These guidelines apply to all prize awards, including regular plays, bonus games, jackpots, Progressives, etc.

## 01.03 Hand Count

*Ref: GA Code § 16-12-35; (2021) • RU 13.1 (2019)*

The concept of a Hand Count is particular to a few skill-based markets, including Georgia. The Hand Count caps the award of each “hand” at $5, which limits tax complexities as well as the viability of many forms of cheating.

- The current Hand Count must be visible to the player during normal play as well as in the Game Selection screen
- The Hand Count starts at 0 when credits are first added to the Cabinet
- Every play adds 1 to the Hand Count
- When cashing out, the maximum amount that can be collected is $5×[Hand Count]
  - Cash out increment and cash out Amount can be anything from $0.01 to $5
    - Not all Game Packs allow this to be changed; most that do default both to $5
  - Any remainder is left on the Cabinet as credits
  - The number of Hand Counts cashed out will be subtracted from the current Hand Count
  - If the cash out increment is set to less than $5, for the purposes of subtracting Hand Counts, round up to the next $5 increment

> [!EXAMPLE]
>
> A player has $42.50 in credit and 9 Hand Counts.
>
> - If the cash out increment is $5:
>  - They will actually cash out $40 (a multiple of $5)
>   - $2.50 will remain on the Cabinet
>   - The Hand Count will be reduced to 1 ($40/5 = 8 Hand Counts)
> - If the cash out increment is set to $1:
>  - They will actually cash out $42 (a multiple of $1)
>   - $0.50 will remain on the Cabinet
>   - The Hand Count will be reduced to 0 ($42/5 = 8.4 Hand Counts)

- If the Credits on the Cabinet drop below the minimum Bet, a Hand Count Reset timer will begin (the length of the countdown can be changed in settings; a good default is 30 seconds)
- When the countdown reaches 0, the Hand Count resets to 0
- If more Credits are added to the Cabinet before the countdown ends, the countdown stops, and the Hand Count is retained

> [!EXAMPLE]
>
> A player has $0.40 in credits, and the minimum Bet for the game is $0.25:
>
> - Playing a game with a Bet of $0.16 or more will drop the current credits below the minimum Bet, which will trigger the Hand Count Reset countdown:
>   - If enough credits are inserted before the countdown reaches 0, the Hand Count will be retained
>   - If the countdown reaches 0, the Hand Count is reset to 0, and any credits left on the Cabinet remain

## 01.04 Cash Out Requirements and Limitations

*Ref: GA Code § 16-12-35 (2021) • O.C.G.A § 50-27-71.1 (2025) • RU 13.3 (2019)*

Cash out in Georgia COAM has several specific limitations:

- A COAM Cabinet **cannot** dispense cash

> [!NOTE]
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

- The player can cash out no more than $5 per Hand Count
- Each Hand Count is treated as an individual game with a $5 maximum award
  - Put another way, a $1500 cash out isn't a single $1500 win; it’s 300 separate $5 wins
  - Because of this, there are no taxable wins in Georgia COAM, and no real “Hand Pay”
  - Cheating and money laundering are also much more difficult. Cashing Out $20,000, for example, would require the player to play 4,000 times

## 01.05 Location Requirements

*Ref: O.C.G.A. § 50-27-84 (2025) • RU 13.1 (2019)*

There are particular requirements that Locations must meet to qualify for a COAM license.

- May be any retail location that does not primarily sell alcohol, firearms, tobacco, or pornographic/adult content, and primarily sells merchandise rather than services
- COAM revenue, specifically net receipts, cannot exceed 50% of the total revenue for the Location
- There is a maximum of 9 COAM machines per site

## 01.06  Other Regulations

### SAS Support

*Ref: RU 13.1 (2019) • COAM SAS Requirements v1.8*

- Our separate SAS Requirements document includes the full list of required SAS Long Polls, Meters, and Events
- The Primary SAS port may only be used by Intralot to connect the Cabinet to their Site Controller
  - The Site Controller will confirm the identity of the Game Pack by running an LP21 (ROM Signature) and comparing the results to their records
    - If this check fails, the Game Pack will be disabled
- The Secondary SAS port is allowed to be used by kiosk payment systems
  - Secondary SAS is disallowed from sending LP01 (Disable Play) and LP02 (Enable Play) commands

### No Shared Progressives

*Ref: O.C.G.A § 50-27-70* (2025)

- Because the legal definition of “Class B” COAM only permits carry-over of credits within a single player session on a single Cabinet, Progressives cannot legally be shared between Cabinets
  - Games that are a part of the same Game Pack may share Progressives within that single Cabinet, as the game session includes all of the games in a Game Pack

## 01.07 Other Considerations

These are not explicitly stated regulatory requirements; rather, they are guidance we have received from our interactions with regulators. Proceed with caution.

### Table Game Imagery Disallowed

- Gambling imagery—craps tables, roulette wheels, playing cards, casino backgrounds, and so on—is consistently rejected by regulators
- Card suits and face cards are similarly called out and are better avoided
  - Traditional royal symbols (A, K, Q, J, and 10) have been allowed so long as they did not look like cards and were not paired with a suit
- Dice have been allowed so long as they are not being used in a gambling scenario

### Cash Labels and Imagery Disallowed

- There can be no messaging, explicit or implied, that the game will dispense actual cash; any such messaging will be rejected. This has been communicated to us unequivocally
  - DO NOT use "Cash Out" in-game or on buttons, use "Collect" instead
  - DO NOT label anything as "Cash", use "Credits" instead
- Dollar signs and cash values on credit amounts and prizes are OK
- Dollar sign and gold bar reel Symbols and the like are OK
- Bank and cash themes are OK

> [!SUMMARY]
>
> - **Skill Tests**
>   - All wins are gated behind a Skill Test
>   - Skill Tests require player interaction
>   - Skill Test results are pass/fail
> - **Hand Count**
>   - Hand Count starts at 0; add 1 Hand Count per play
>   - The player can cash out no more than $5 per Hand Count
>     - For every $5 cashed out, subtract 1 Hand Count
>   - Credits falling below the minimum Bet triggers the Hand Count Reset countdown
>     - If no credits are added before the countdown ends, Hand Count resets to 0
> - **Cash Out**
>   - No cash, award vouchers, gift cards, or lottery products
>   - After July 1, 2026, only prepaid gift cards and lottery products
> - **Locations**
>   - No more than 50% revenue from COAM
>   - Limit of 9 COAM Cabinets per Location
> - **Restrictions**
>   - No external control aside from Intralot's Site Controller
>   - No shared Progressives between Cabinets
>   - Secondary SAS can not enable/disable games
> - **Non-statute Restrictions**
>   - Avoid casino-related imagery
>   - Avoid “Cash” labels, use “Credits” instead
