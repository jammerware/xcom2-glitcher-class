# Jammerware's Glitcher Class
This is a mod for Firaxis' XCOM 2: War of the Chosen. It adds the Glitcher soldier class. I'm not actively working on this right now, but I wanted a place to store ideas until I'm ready to get started in earnest.

## Ability Ideas

### Core
*Glitchwalk* - You project a digital copy of yourself (a "Glitch") that can move and attack normally. It deals half of your normal damage and can't use items. If it's killed by enemy fire, you take 2 damage.

### Hack utility
*Trojan* - Target hackable object's tech defense is reduced significantly for 2 turns. The Glitch is consumed.

*Trojan Emitter (alternative to Trojan)*: Hackable objects within 3 tiles of the Glitch have significantly reduced tech defense.

### Offense/mobility
*Teleburst* - You switch places with your Glitch. Any enemies between you take moderate damage.

*Onrush* - This turn, if you move within one tile of an enemy, it's knocked backward a small amount. Also usable by your Glitch.

### Defense
*Total Recall* - If you're the victim of enemy fire, instead prevent it and return your Glitch to the tile on which you were hit.

## Design questions
- Is the glitch copy persistent?
    - If it only lasts for the turn, that prevents potential AI abuse
    - If it only lasts for a short time, that minimizes the value of abilities that ask you to sacrifice the copy as a cost
    - Short-lived glitches make the you-take-damage-when-they-die penalty relatively unimportant
- Does the Glitch break your squad's/soldier's stealth when spotted? (Probably)
- Can glitches interact with mission objects, hackable objects, doors, etc.?
    - Doors seem necessary/a given
    - Being able to hack enables the "send the Glitch in to do your dirty work" game
    - Potentially causes huge problems if the Glitch loots a mission item (does it go to the Glitcher?)
- How do we play up the Templar/Ranger damage aspect? Does this compete in a real way with those classes?