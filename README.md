# Demo MCreator plugin

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/Pylo/MCreatorDemoPlugin/blob/master/LICENSE)

This repository demonstrates a basic MCreator plugin structure.

WARNING: The plugin structure might and will change in the future so keep your eye on this repository for changes on the format if you are a plugin dev.

Demonstrated features:
* Custom procedural/output procedure block
* Custom procedure category
* Custom global trigger
* Custom templates
* Generator for given features for 1.14.4 and 1.15.2
* Localized texts

Other plugin features not demonstrated:
* Custom JSON advancement triggers and categories
* AI task blocks and categories
* Full generator plugin
* Data lists
* APIs - eg. Minecraft Link
* Variables
* UI Themes

For features not demonstrated in this plugin, you can check the built-in plugins in &lt;install dir&gt;/plugins
folder of your MCreator installation for the reference.

https://mcreator.net/wiki/section/mcreator-plugins

# Gradle tasks
This demo plugin comes with some Gradle tasks to help you with the development of your plugin. 
In order to use them, it is recommended to use Intellij IDEA as it has been tested with this IDE. However, other programs such as Eclipse may also work, but the procedure may change.
In Intellij, find your working folder and open the build.gradle file. Then, load th gradle project and wait. If you don't have a JDK for Java 16, you will need to install one. You can go on [Adoptium](https://adoptium.net) (AdoptOpenJDK) to find one.
When it is done, you should be able to see a new task group called `mcreator_plugins` in the sidebar "Gradle". Those tasks are:
* exportPlugin: Create a new ZIP archive containing the plugin in a `build` folder
  * You can edit the name using `Globals.ARCHIVE_NAME` in the build.gradle file.
* install: Install the plugin (the generated file of `exportPlugin`) inside the `plugins` folder of MCreator.
* runMCreator: Export and install the plugin and then, launch MCreator. 
  * The default root of each OS is used, but you can customize it by changing one of the following variables in the `build.gradle`. `Globals.MCREATOR_ROOT_FOLDER_WINDOWS` and `Globals.MCREATOR_ROOT_FOLDER_MAC_LINUX`

# Exporting
## Using Gradle
To export your plugin, you can use the provided Gradle task. Read the section above for more information.

## Manual method
To export the plugin, simply archive the `src` folder of the plugin into a ZIP file, so the plugin has
the following structure:

* &lt;plugin file name&gt;.zip
   * plugin.json
   * (procedures)
   * (<generator 1 name>)
   * ...

# Installation
## Using Gradle
To export your plugin, you can use the provided Gradle task. Read the `Gradle tasks` for more information.

## Manual method
To install exported plugin in MCreator, put the plugin ZIP file into &lt;user home&gt;/.mcreator/plugins
or install them from MCreator's preferences window and relaunch MCreator.

# Generator naming conventions

Generators are added in the root folder of the plugin:

* &lt;plugin file name&gt;.zip
   * <generator 1 name>
   * <generator 2 name>
   * <generator 3 name>
   * ...

Generator names are formatted like this:

FLAVOR-generatorName

Where FLAVOR can be:

* forge - eg. "forge-1.15.2" - such generators indicate forge generator flavor
* datapack - eg. "datapack-1.14.4" - such generators indicate datapack generator flavor
* addon  - eg. "addon-1.14.x" - such generators indicate addon generator flavor
* fabric  - eg. "fabric-1.16.1" - such generators indicate fabric generator flavor
* spigot  - eg. "spigot-1.16.1" - such generators indicate spigot generator flavor

# Non-plugin files

All files outside the `src` folder are not part of the plugin structure but are there for the purpose of Intellij IDEA IDE support
for better plugin development, documentation purposes and similar.