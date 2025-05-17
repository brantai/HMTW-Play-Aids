#import "@preview/cuti:0.3.0": show-fakebold
#import "@preview/showybox:2.0.4": showybox

#show: show-fakebold
#set page(
  paper: "us-letter",
  margin: (bottom: 0.25in, left: 0.41in, top: 0.25in, right: 0.41in),
  flipped: true,
)
#set text(
  font: "IM FELL English",
  size: 10.5pt,
)

#show regex("\d+"): set text(font: "Caslon Antique")

#show smallcaps: set text(font: "IM FELL Great Primer SC")

#set heading(numbering: none)
  
#show heading.where(level: 1): set text(
  font: "HamletOrNot",
  size: 18pt
)

#show heading.where(level: 2): set text(
  font: "IM FELL Great Primer SC",
  size: 16pt
)

#set table(
  fill: (_, y) => if calc.odd(y) {
    rgb(217, 217, 217)
  } else if y == 0 {
    rgb(67, 67, 67)
  },
  stroke: 0pt,
  align: center,
)

#let hdr(cell) = {
  text(size: 16pt, fill: white)[*#cell*]
}

#let boxtitle(title, number: none) = {
  if number != none {
    text(size: 18pt)[*#smallcaps(number): #title*]
  } else {
    text(size: 18pt)[*#title*]
  }
}

= On The Order of Things
#grid(
  columns: (1fr, 1fr),
  [
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle("Challenge Phase")],
      [
        == 1. Draw Hand
        *Players* draw 4 cards. *GM* draws 3 cards, then adds:
        #grid(columns: (1fr, 1fr),
        inset: (x: 8pt, y: 0pt),
        [
          *1* for each Enemy *type* \
          *1* if *2x* enemies than adventurers \
          *1* if *more* enemies than adventurers
        ],
        [
            *1* per enemy *larger* than a human\
            *2* if there's an *elite enemy*\
            *3* if there's a *dungeon lord*
        ])
        _Mulligan if hand is mostly Majors._
      ],
      [
        == 2. Play Initiative
        *Players* each play a facedown card as their Initiative. \
        *GM* plays facedown cards for each *significant monster* or *group's* Initiative. Each card can only have *one facedown action* at a time.
      ],
      [
        == 3. Take Turns
        GM counts up initiative. Flip your Initiative *face up* on your turn, or if an action is being taken against you.    \     *Action Value* is card value + Attribute. If multiple enemies attack the same target: *2+* gets favor, *4+* deal Piercing, *8+* deal Critical \
        *The Fool* has a value of 0 and must be played *alongside another card*. The Fool allows the action to be played as an *Interrupt* on any turn.
      ],
      [
        == 4. Minor Actions
        *Action Value* is card value.\
        The suit of cards played for Minor Actions *must match* the action. \
        *Players* are limited to one action per turn. \
        Each enemy/group gets *up to one* minor action per other character's *turn*.
      ],
      [
        == 5. Repeat
        Enemies might *scatter* or *surrender*.  Check minor arcana discard pile vs *MV* if applicable. Otherwise facedown actions remain *as is* and the GM hand is *discarded*.
      ]
    )
  ],
  [
        #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
        body-inset: 3pt,
      ),
      title-style: (
        align: center,
      ),
            sep: (thickness: 0pt),
      title: [#boxtitle("Camp Phase")],
      [
      + *#smallcaps("Camp Actions")* - Set up camp and take one Camp Action each
      + *#smallcaps("Break Bread")* - Consume a ration or mark Stressed. On 2+ Camp Phases without consuming rations, skip steps 4 and 5.
      + *#smallcaps("No Rest For the Wicked")* - Check for Random Camp Events
      + *#smallcaps("Recovery")* - Refill Lore Bids, clear the Staggered condition, and burn Charged Bonds to clear Wounds/Injured/Staggered or regain Resolve.
      + *#smallcaps("End of Phase")* - Mark Stressed if you don't have two of: bedroll, tent, or fire.
      ]
    )
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
        body-inset: 3pt,
      ),
      title-style: (
        align: center,
      ),
            sep: (thickness: 0pt),
      title: [#boxtitle("City Phase")],
      [
        + *#smallcaps("Death and Taxes")* - Pay 50% of carried gold coins as tax.
        + *#smallcaps("Noteworthy Deeds")* - Erase the oldest deed on the guild roster and replace with one from your latest Crawl (if any).
        + *#smallcaps("City Events")* - draw on the City Events table.
        + *#smallcaps("Turn in Contracts")* - Gain 1XP for each completed contract, and sell any items of art and extravagance.
        + *#smallcaps("Upkeep")* - Pay for a level of upkeep - Destitute(free), Impoverished (25G), Common (50G) or Luxurious (100G).  Refill your pack with gear of the level you paid for. Destitute upkeep marks the Stressed condition. Common upkeep allows burning charges to for healing, Luxurious heals all wounds and refreshes Resolve.
        + *#smallcaps("City Actions")* - Players each take one City Action.
      ]
    )
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        body-inset: (x: 0em, y: 0em),
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle[Morale]],
      [#table(
          columns: (2fr, 1fr),
          table.header[#hdr[Situation]][#hdr[*MV*]],
          [Overwhelming Strength], [20],
          [Evenly Matched], [18],
          [Wary], [10],
          [Routed], [8],
        )],
    )
  ]
)


#pagebreak()

= On The Hazards of Adventuring
#grid(
  columns: (1fr, 1fr),
  inset: 0pt,
  row-gutter: 1pt,
  [
    #showybox(
  frame: (
    radius: 0pt,
    thickness: 0pt,
    title-color: rgb(67, 67, 67),
    footer-color: white,
  ),
  title-style: (
    align: center,
  ),
  sep: (thickness: 0pt),
  spacing: 2pt,
  title: [#boxtitle("Light Sources")],
  [*Candles/Torches/Lanterns* flicker *2/3/4* times.],
  [Light sources *break* and *go out* if they are *hit* in combat or are *used* as a weapon.
    When *dropped*, Candles go out but can be relit; Torches may go out *50%*; Lamps are *Destroyed*.],
  [*Dim light* gives disfavor on complex or visual-reliant tasks, unless someone holds up a light for you.
    *Bright light* gives no penalties. Hiding *requires dim light*, and thus *not* holding a light source.],
  [*Candles* do *not* give dim light to the rest of the guild. You can *tie* your *lantern* to your belt.
    If you *suffer a Wound* with it on your belt, your lantern is also *Destroyed*, covering you in oil.],
)
        #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      spacing: 2pt,
      title: [#boxtitle("Watches")],
      [*Draw on the Meatgrinder* whenever a watch passes. A watch passes:],
      [
        - Each time the party *moves to a new room*
        - Whenever the party spends a long time on a task
        - Each Camp and Challenge Phase
    ],
    )
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle("Moving Carefully")],
      [If the guild is proceeding very slowly or methodically, pull again on the Meatgrinder after resolving potential encounters.],
      [If the second draw is *Torches Gutter*, keep the result. Otherwise, nothing happens.],
    )
            #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      spacing: 2pt,
      title: [#boxtitle("Ambushes")],
      [*Players ambushing:* Play as a Vigilance action
        that automatically succeeds if the stated trigger
        occurs.],
      [*Monsters ambushing:* Closest adventurer in
        marching order *tests Cups*. On fail, the monster
        has an auto-successful action with which it tries
        to *create an environmental or situational
        advantage*; if it cannot, it resorts to a cheap 1
        Wound sucker punch.],
      [*After ambush*, Challenge phase begins as
        normal.],
    )
    
  ],
  [
     #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      spacing: 2pt,
      title: [#boxtitle("Favor and Disfavor")],
      [*Favor* adds +3 to test value, *Disfavor* subtracts 3.],
      [Favor can be gained from *relevant motifs*, *meaningful collaboration*, or *spending resolve* prior to making a test.]
    )
         #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      spacing: 2pt,
      title: [#boxtitle("Pushing Fate")],
      [*Push fate* on a failed test of fate *adding an additional card* to your total - great successes are *impossible*, and failures become *great failures*.],
      [Pulling *the Fool* is an automatic great failure.]
    )
         #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      spacing: 2pt,
      title: [#boxtitle("Group Tests")],
      [The *most qualified* and *least qualified* player both make a test of fate.],
      [*Great Failure* subtracts 1 hit, *Success* adds 1 hit, *Great Success* adds 2 hits.],
      [#grid(columns: (1fr, 1fr),
        inset: (x: 8pt, y: 0pt),
        [
          *2 hits*: success for the group \
          *1 hit*: group is put in a tight spot
        ],
        [
           *0 hits*: failure for the group \
           *\<0 hits*: disaster for the group
        ])]
    )
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      spacing: 2pt,
      title: [#boxtitle("Falling")],
      [*Falling* deals 1 Piercing Wound *per 10’ fallen.*],
      [*Test Pentacles* to treat fall as *10’ shorter;*],
      [Treat as 20’ shorter on *great success;*],
      [Take damage as normal and Destroy all *fragile* items
        on person on *great failure.*],
    )
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle("Chases")],
      [*Superior mobility* resolves chase *without tests*.],
      [*Otherwise, group Pentacles test*; clever tricks grant
        *favor* to one or both testing adventurers.],
      [*On 2+ hits:* A clean getaway.],
      [*On 1 hit:* The GM should introduce a complication.],
      [*On 0 or fewer hits:* Cornered with no path of escape.],
    )
  ],
)



#pagebreak()

= On Maladies and Recovery
#grid(
  columns: (1fr, 1fr),
  [
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
        body-inset: 3pt,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle("Afflictions")],
      [Draw a progress clock with a section for each stage - mark progressed sections with hatch marks and cured sections in black - and immediately gain Stage 1. Automatically progress one stage at the end of each Camp Phase unless the next stage has been cured.],
      [*Rest and Recover* during the Camp Phase and *burn charges* to cure a stage, starting with the last stage and moving *counter-clockwise*. Affliction regresses if current stage is cured, and is healed completely when all stages are cured.],
    )
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
        body-inset: 3pt,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle("Wounds")],
      [When a *player* takes a wound, choose one of:
        #grid(
          columns: (1fr, 1fr),
          [*Notch* a piece of armor \
            Mark the *Staggered* condition \
            Mark the *Death's Door* condition
          ],
          [Wound a talent (max 2) \
            Mark the *Injured* condition
          ],
        ) Once a piece of armor has 0 Notches, it's Destroyed.
      ],
      [When a *creature* is wounded first reduce their *Defense*. When there's no Defense left reduce *Health*. When Health is 0, they're at *Death's Door*.],
      [#smallcaps[*Piercing*] damage *cannot be absorbed by armor/shield/helm* and *bypasses enemy Defense*.],
      [#smallcaps[*Critical*] damage inflicts *Injured* on *players*. If already Injured, they're on *Death's Door*. If already at Death's Door, they die. *Creatures* taking Critical damage *reduce their Health to 0*, and are on *Death's Door*.],
    )
    #showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
        body-inset: 3pt,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle("Conditions")],
      [#smallcaps[*Injured*]: The next Wound inflicts Death's Door. Can't heal Wounded Talents.],
      [#smallcaps[*Staggered*]: No immediate effects, healed automatically during camp phase unless Stressed.],
      [#smallcaps[*Stressed*]: Can't heal other Conditions.],
      [#smallcaps[*Death's Door*]: Unconscious and will rise as a zombie/wraith after 1 watch unless *Healed*. and in a quasi-state of death. You will linger there for a *single watch* afterwards. Mark *Stressed* if Healed.],
    )
  ],
  [#showybox(
      frame: (
        radius: 0pt,
        thickness: 0pt,
        title-color: rgb(67, 67, 67),
        footer-color: white,
        body-inset: 3pt,
      ),
      title-style: (
        align: center,
      ),
      sep: (thickness: 0pt),
      title: [#boxtitle("Effects")],
      [#smallcaps[*Blind*]: can't see; *disfavor* to Challenge actions/tests of fate, if they can even be made; no missile attacks at all. All harmful actions against Blind creatures gain *favor*.],
      [#smallcaps[*Control*]: Obey the order given. Effect ends if order is completed or if it cannot be completed. In combat, Controlled creatures perform the given order, using the value used to Control them.],
      [#smallcaps[*Deafen*]: Cannot hear; also, disfavor on Speak Incantation.],
      [#smallcaps[*Displace*]: Displaced creatures are moved as per initiating effect.],
      [#smallcaps[*Destroy*]: Destroyed items are unusable.],
      [#smallcaps[*Disarm*]: Drop one held item. Picking up weapons is a Recover action.],
      [#smallcaps[*Exhaust*]: Exhausted creatures have *disfavor* to all tests and Challenge actions.],
      [#smallcaps[*Heal*]: Remove a Wound from a condition.],
      [#smallcaps[*Inspire*]: Inspired creatures must immediately role-play one of the seven Dispositions to the best of their ability],
      [#smallcaps[*Grow/Shrink*]: Double or halve in size. Gain favor when this is advantageous and disfavor when disadvantageous.],
      [#smallcaps[*Notch*]: When an item suffers harm, it is Notched. After some amount of Notches, the item is Destroyed. Most things are Destroyed after one Notch. Durable items/gear after two. Tempered steel gear after three Notches. Notches can be restored with a Tinker’s Kit or during the City Phase.],
      [#smallcaps[*Root*]: Immediately disengage, and cannot move (Move, Avoid, Dash, Dodge)],
      [#smallcaps[*Shroud*]: Impossible to see without magic or special senses. Can only be targeted if moving or interacting with the world, though with disfavor. Shrouded creatures have favor on harmful actions against anyone who doesn’t see them.],
      [#smallcaps[*Silence*]:Mute, thus cannot Speak Incantations.],
      [#smallcaps[*Stun*]: In a Challenge, immediately choose and discard a card from your hand. Does not require being Recovered from.],
      [#smallcaps[*Trip*]: Immediately disengage and fall prone. Prone creatures cannot Move, Avoid or Dash. Melee against prone targets has favor, missiles have disfavor.],
    )],
)
