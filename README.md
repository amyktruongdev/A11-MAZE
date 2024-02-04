# TEAM 3: A11-MAZE
Team Members:
- Sam Hernandez
- Connie Chen
- Amy Truong
- Brett Bass
- Aolany Acosta

## MENTORS
- Max Hops 
- Cordero Hernandez

## HONORABLE MENTIONS
- Doris Chaney
- Todd Uramoto
- Leonard Tatum
- Jason McDonald

## REQUIREMENTS
- Using + integrating operating system level accesibility API's
- Save Progress
- Multiple levels and difficulty
- Auditory cues iattached to decisions / moves / options selected
- Follow ADA compliance
- Ability to play with eyes closed

## ACCESSIBILITY
>How did we take into account Accessibility?
<br><br>
Our main point for _**Accessibility**_ was using _**Audio cues**_ so that players could navigate through the game. Collision with walls or trees makes _**sounds**_ that will eventually guide the user out of the maze through trial and error. Stars also lead the player towards the exit portal of the maze, they help by also making **Audio cues**. The little character has _**unit based movement**_ where it moves anywhere up, down, left, and right one block. The unit based movement makes it easier for less mistakes towards the direction the player wants to go to. A short and sweet first level allows players to explore the basics of the game while leaving room to make mistakes. It might take time to get adjusted with the playstyle of the game using WASD keys or just in general getting the feel of the game and thats okay! The game takes into consideration a lot about how it's presented. The **font** on each of the buttons is set up to ADA standards with the size of 28px. The _**text color**_ itself is within a _**light gray looking transparent background**_ making the text pop out with a widely accepted tone of _**yellow**_ for thoses who are colorblind. Save files make the game more accessible because if the player experiences vision loss, they can exit out of the game. It will come back to where they left off from when they decide to use the _**LOAD**_ button when they feel better to get back into the game!

## HOW TO NAVIGATE THROUGH THE GAME
### Main Menu Screen: 
<img width="640" alt="Screenshot 2024-02-04 at 4 29 45 AM" src="https://github.com/amyktruongdev/A11-MAZE/assets/94605991/28fcc843-7c7b-472f-99cf-834c0e1a0636">\
This is the main menu screen that holds our logo and buttons that each lead to specific part of the game. To navigate through the main menu, players will have to hover their mouse over the button and _**LEFT CLICK**_ to select their desired button.

## Buttons
<img width="266" alt="Screenshot 2024-02-04 at 5 40 57 AM" src="https://github.com/amyktruongdev/A11-MAZE/assets/94605991/820e5430-3e72-44ae-a510-f957a1c49b76">\
Each button will read out what it is labeled as when users hover over it with their mouse. There are 5 buttons (New Game, Load, Leaderboard, Options, and Quit). When clicked, the player will be sent to each buttons respective location.

- The _**NEW GAME**_ button will start an entirely new game for the player where they can automatically start playing the game.
- The _**LOAD** button_ brings the player back to where they left off when they closed out of the game.
- The _**LEADERBOARD**_ button takes the player to the _**LEADERBOARD**_. It's based on how many Stars the player collects, it also ranks the person with the most Stars at the top and whoever else follows behind them in score. It is the top 5 players. There is a button within the _**LEADERBOARD**_ that takes the player back to the Main Menu called _**CLOSE LEADERBOARD**_.
![leaderboardpic](https://github.com/amyktruongdev/A11-MAZE/assets/94605991/758ac8d3-93ce-4c16-b99f-aa3447352ba0)

- The _**OPTIONS**_ button displays a seperate page if players want to customize their game experience.
- The _**QUIT**_ button exits the player out of the game.

## HOW TO PLAY
![wasdpic](https://github.com/amyktruongdev/A11-MAZE/assets/94605991/138691b1-d889-4778-b09f-9a8ee917a7ee)\
**PLAYERS WILL MOVE USING WASD KEYS** 
<br><br>
Once the player selects _**NEW GAME**_, they will be sent into the game!\
A short and sweet level allows players to explore the basics of the game.\
<img width="637" alt="Screenshot 2024-02-04 at 6 00 37 AM" src="https://github.com/amyktruongdev/A11-MAZE/assets/94605991/2b527897-d018-44c0-819a-9ff8bc6e79da">\
This is where players are prompted to walk using WASD keys towards the Stars and exit portal.\
If players bump into trees and walls, there will be a sound indicating that they have collided with the tree.\
When players make contact with the exit portal, a sound will prompt that they are moving into the next level.

## CODE PLANNING & SKELETON STRUCTURE

![codeorderpic](https://github.com/amyktruongdev/A11-MAZE/assets/94605991/efdc078b-bc79-4ec0-9024-350472b8bdae)\
This was also how we decided to divide up the work load, decide order of importance, and nice to have features that may or may not have been implimented. At first we had decided to write our game using Android studio, but ultimately ended up switching to Godot Engine. A game making engine with it's own scripting language!\
<img width="227" alt="Screenshot 2024-02-04 at 7 56 26 AM" src="https://github.com/amyktruongdev/A11-MAZE/assets/94605991/d6cbeb16-6ac6-4f6a-862b-c241f46bed59">

## GODOT CODE & DESIGN SNAPSHOTS
<img width="1424" alt="Screenshot 2024-02-04 at 8 00 16 AM" src="https://github.com/amyktruongdev/A11-MAZE/assets/94605991/f84df633-4654-4a53-844b-44cdfca1aa9f">
<img width="864" alt="Screenshot 2024-02-04 at 8 00 41 AM" src="https://github.com/amyktruongdev/A11-MAZE/assets/94605991/3c5816b5-c343-44d4-9a66-219a00667e21">
<br><br>
We would switch between Godot's script mode to actually impliment the code and the 2d mode where we could see the product of our code and designs!

## SECURITY
A11-MAZE's database for the leaderboard was made using **SILENTWOLF's** API. There is protection using this database because there is a **API KEY** that was uniquely generated for A11-MAZE's.\
![silentwolfpic](https://github.com/amyktruongdev/A11-MAZE/assets/94605991/5f953f66-652f-4b2c-b16b-39c3ef15a6c0)\
Here is a snippet of what the API implimentation is for SILENTWOLF.\
![silentwolfcodesamplepic](https://github.com/amyktruongdev/A11-MAZE/assets/94605991/55484e74-0651-4dfe-a107-c23a2d599493)

## DEMO GAME PHOTOS
A11-Maze Level 1:
![Screenshot 2024-02-04 093226](https://github.com/JoergFranke/phoneme_recognition/assets/158373403/9f314b41-ee30-403c-9c29-5f869dab2c38)
A11-Maze Level 2:
![Screenshot 2024-02-04 093252](https://github.com/JoergFranke/phoneme_recognition/assets/158373403/25cd532f-ba56-4bf5-ba68-ace1950b71bf)
A11-Maze Level 3:
![Screenshot 2024-02-04 093901](https://github.com/JoergFranke/phoneme_recognition/assets/158373403/da5e63f9-a13a-4873-bfa4-a094709fa715)
