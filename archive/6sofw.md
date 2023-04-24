>Coding Characters
You have to edit Character.hx in source>gameObjects, and add a case for your character under the switch(curCharacter) statement. If your character dances left to right (think spooky kids idle), add characterData.quickDancer = true; on that specific case, and replace the 'idle' animation with separate 'danceLeft' and 'danceRight' ones. Character offsets aren't hardcoded, and can be made and revised through creating a [charactername]Offsets.txt in assets>images>characters. You can add them to the charter character list through characterList.txt in the assets folder.
>Coding Stages
You have to edit Stage.hx in source>gameObjects and add a case under switch (curStage) to add your own custom stage. Each custom stage would have all it's assets in it's own folder named after the case you created in assets>images>backgrounds. Also, what stage each song uses is also hardcoded, so you need to make a case for what stage each song uses under the switch statement that starts with "switch (CoolUtil.spaceToDash...)" in Stage.hx.
>Coding the new week in the story menu
You have to edit Main.hx in the source folder and add your new week to the gameWeeks array.
>Adding songs and charts
For each song, make a folder named after it (lowercase and dashes replacing spaces) in assets>songs and place the charts and songs in that folder. Any fnf chart works but you should use the .ogg format for the audio.
