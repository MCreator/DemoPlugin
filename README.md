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
- Data lists
* APIs - eg. Minecraft Link

For features not demonstrated in this plugin, you can check the built-in plugins in &lt;install dir&gt;/plugins
folder of your MCreator installation for the reference.

https://mcreator.net/wiki/section/mcreator-plugins

# Exporting

To export the plugin, simply archive the root folder of the plugin into a ZIP file, so the plugin has
the following structure:

* &lt;plugin file name&gt;.zip
   * plugin.json
   * (procedures)
   * (<generator 1 name>)
   * ...

# Installation

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

The following files are not part of the plugin structure but are there for the purpose of Intellij IDEA IDE support
for better plugin development, documentation purposes and similar:

* README.md
* LICENSE
* demo-plugin.iml
* .idea/*
* .github/*
