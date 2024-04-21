# plugin.json

Sample plugin.json contents:

```json
{
  "id": "demo_plugin",
  "supportedversions": [
    202000354321, 
    202000312345,
    202400199999,
    2024001
  ],
  "weight": 0,
  "info": {
    "name": "MCreator demo plugin",
    "version": "1.0",
    "description": "Demo plugin to demonstrate a typical plugin structure",
    "author": "Pylo",
    "credits": "Thanks to my dog!",
    "dependencies":  [
      "pluginID",
      "generator-fabric-1.16.5",
      "electrona_api"
    ],
    "updateJSONURL": "https://raw.githubusercontent.com/Goldorion/Fabric-Generator-MCreator/1.16.5/update.json",
    "pluginPageID": 64512
  }
}
```

# Generator naming conventions

Generators are added in the root folder of the plugin:

* &lt;plugin file name&gt;.zip
    * <generator 1 name>
    * <generator 2 name>
    * <generator 3 name>
    * ...

Generator names are formatted like this:

`flavor-generatorVersion`

Where `flavor` can be:

* neoforge - eg. `neoforge-1.20.4` - such generators indicate forge generator flavor
* forge - eg. `forge-1.20.1` - such generators indicate forge generator flavor
* datapack - eg. `datapack-1.14.4` - such generators indicate datapack generator flavor
* addon  - eg. `addon-1.14.x` - such generators indicate addon generator flavor
* fabric  - eg. `fabric-1.16.1` - such generators indicate fabric generator flavor
* spigot  - eg. `spigot-1.16.1` - such generators indicate spigot generator flavor