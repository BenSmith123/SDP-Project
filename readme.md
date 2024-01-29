# SDP Project

Mobile & Desktop 2D platform game made with GameMaker Studio - originally created for the second year Software Development Practice paper.

## Releases

- See the `productBuild` folder for windows installer and Android.apk
- Mac/iOS has to be copied to the device via Xcode

## Discord

TODO - add disc link

## Guide

- Here's some tips for adding content to the existing systems:
- The `notes/TODO.txt` file might have some useful info

### Adding skins

1. Create/download from [maples.im](maples.im) (download full sprite sheet to include climbing/blink (death) sprite)
2. (Optional) Run the script to put the images needed from the downloaded character sprite sheet:
   `node externalFiles/script-get-skin-sprites.js Path/to/download` (can select images manually but this script makes it easier to find the correct files)
3. Add skin to the `PlayerSkinId` enum, use the added skin ID number in the enum as the SKIN_ID
4. Add the sprites to GameMaker: Follow the naming conventions (e.g. `spr_skin_{SKIN_ID}_stand`).
   Try align the footing - import sprite into the bottom of the canvas
   _Note: Don't set sprite offsets/origins or the collision masks - this is all handled in code!_
5. Missing climbing sprite? You might have to manually get the 2 climbing sprites.. (Inspect browser > png source..)

Example: https://github.com/BenSmith123/SDP-Project/commit/90795585aed71dd3089c8b053675fc6bab3c9b26

## Resources

- Maplestory character skins: [maples.im](maples.im) - use this instead of other websites since it includes the climbing sprites etc.
  ^ You could use this site for NPC characters but I don't think the download includes climbing sprites?: https://maplestory.net/design/designer
- Maplestory mob sprites: https://maplestory.wiki/GMS/246/mob (site is pretty broken, use the search bar if nothing is loading)
- Maplestory item sprites: https://maplestory.wiki/GMS/246/item
  ^ use param to get correct size: https://maplestory.io/api/GMS/246/item/5240001/icon?resize=1
- Damage font text: https://fontmeme.com/naruto-font/#textstyle (size 24)
