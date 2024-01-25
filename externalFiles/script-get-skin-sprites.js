const fs = require("fs");
const path = require("path");

/*
 * This script gets all of the sprites used in the game from the maples.im download and puts
 * the files in a new folder inside of the character sprites folder called "ALL game sprites"
 *
 * example usage: node script-get-skin-sprites.js Home/Game-assets/skin-ben
 */

// list of all files to get under the 'default/0' subfolder
const defaultFilesToGet = [
  "stand1_0.png",
  "stand1_1.png",
  "stand1_2.png",
  // "stand1_2", // same as 0
  "jump_0.png",
  "walk1_0.png",
  "walk1_1.png",
  "walk1_2.png",
  "walk1_3.png",
  // "walk1_4.png", // same as 0
  "ladder_0.png",
  "ladder_1.png",
  "shoot1_0.png",
  "shoot1_1.png",
  "shoot1_3.png",
  // 2-handed sword swing
  "swingP1_0.png",
  "swingP1_1.png",
  "swingP1_2.png",
  // spellcaster throw
  "swingO1_0.png",
  "swingO1_1.png",
  "swingO1_2.png",
  // ninja throw (throw_2)
  "swingO3_0.png",
  "swingO3_1.png",
  "swingO3_2.png",
];

// Get the folder path from the command-line arguments
const providedFolderPath = process.argv[2];

if (!providedFolderPath) {
  console.error(
    'Please provide the path to the "default" folder as a command-line argument.'
  );
  process.exit(1);
}

// Resolve the provided path to handle relative paths and convert to Unix-style
const selectedFolder = path.resolve(providedFolderPath).replace(/\\/g, "/");

// Helper function to get specific files in a folder by names
function getFilesInFolder(folderPath, fileNames) {
  return fileNames.map((fileName) => path.join(folderPath, fileName));
}

// Path to the "default" subfolder
const defaultSubfolder = path.join(selectedFolder, "default/0");

try {
  // Get the specified files from the "default" subfolder
  const defaultFiles = getFilesInFolder(defaultSubfolder, defaultFilesToGet);

  // Get the specified files from the "blink" subfolder
  const blinkSubfolder = path.join(selectedFolder, "blink/0");
  const blinkFile = getFilesInFolder(blinkSubfolder, ["fly_0.png"])[0];

  // Create a new folder for the copied files
  const newFolder = path.join(selectedFolder, "ALL game sprites");
  fs.mkdirSync(newFolder, { recursive: true });

  // Copy the selected files to the new folder
  defaultFiles.forEach((sourcePath) => {
    if (fs.existsSync(sourcePath)) {
      const destinationPath = path.join(newFolder, path.basename(sourcePath));
      fs.copyFileSync(sourcePath, destinationPath);
    }
  });

  // get the dead sprite seperately - in different folder
  if (fs.existsSync(blinkFile)) {
    const destinationPath = path.join(newFolder, path.basename(blinkFile));
    fs.copyFileSync(blinkFile, destinationPath);
  }

  console.log(`Files copied to: ${newFolder}`);
} catch (error) {
  console.error(error.message);
}
