# Radiate Players
***
Provides a Minecraft function that can evenly distribute targets along the circumference of a circular area of variable radius and center point.

Has the option to offset initial drawing angle, teleport targets to the surface of any destination (like `/spreadplayers`), and center targets on their destination block.

## Installation
After downloading, the data pack can be installed in a singleplayer world folder  following [this guide](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack). 

Once installed and the world is loaded, type `/reload` to load all data pack assets.

The data pack can be uninstalled by entering the command `/function rp:disable` and removing the data pack from your world's data packs folder.

## Usage
All `targets` to distribute should be tagged with the scoreboard tag `"radiate"` using the command `/tag add [targets] radiate`.

The `radiateplayers` function can then be called using the command `/trigger radiateplayers [set|add] [<radius>]` where `[<radius>]` is the radius of the circle (>0, 1 if not specified) centered at the location of the command's execution. In this context there is no difference between `set` and `add`. 

Running the command with less than 2 `targets` will give an error. Running the command without chunk [0, 0] forceloaded will give an error (forceloaded by default when `/reload` is called). __The executing entity needs to have a command permission level of at least 2.__

Additional command options exist in the `score`s of explicit `name`s on the `radiateplayers` scoreboard objective and can be changed using the `/scoreboard players set [name] radiateplayers [score]`. The name `#theta` is an integer which determines the initial anglular offset from 0 degrees (south, +z) to begin radiating players from, which must be in the range -360 to 360; default is 0. The name `#align` is a boolean which determines whether all targets should be centered on their destination blocks, with a score of 0 being false and any other score being true; default is 0. The name `#surface` is a boolean. A score of 0 will teleport all targets along the y coordinate of the command's execution at their destination, and any other scores will teleport all targets on top of the block nearest the sky at their destination (similar to `/spreadplayers`); default is 1.

## Credits
Encoding and optimization of each function was completed by Minecraft player Oligo.

## License
GNU GPL v3.0 (see LICENSE.txt)