# Demo MCreator plugin

This repository demonstrates a basic MCreator plugin structure.

WARNING: The plugin structure might and will change in the future so keep your eye on this repository for changes on the format if you are a plugin dev.

Demonstrated features:
* Custom procedural procedure block
* Custom output procedure block
* Custom procedure category
* Custom global trigger
* Generator for given features for 1.14.4

Other plugin features not demonstrated:
* Custom JSON advancement triggers and categories
* AI task blocks and categories
* Full generator plugin

For features not demonstrated in this plugin, you can check the built-in plugins in &lt;install dir&gt;/plugins 
folder of your MCreator installation for the reference.

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

# Non-plugin files

The following files are not part of the plugin structure but are there for the purpose of Intellij IDEA IDE support
for better plugin development, documentation purposes and similar:

* README.md
* LICENSE
* demo-plugin.iml
* .idea/*
* .github/*
