# Procedures plugin folder

In this folder, new procedure blocks and procedure categories can be defined

# Procedure category

Procedure categories are added in files with the following name:

`$categorymachinename.json`

JSON format for a custom procedure category is:

```
{
  "name": "[display name]",
  "color": [display color]
}
```

To translate the display name, you can remove the `name` property. Then, add a line in the `texts.properties` file using this template. 

`block.category.[$categorymachinename]=[display name]`

# Procedure blocks

Each procedure block has own JSON file named:

`blockmachinename.json`

## Procedural procedure block

Procedural procedure blocks are blocks that do action and do not return any value, 
for example "destroy block" procedure block. Example of such procedure
block is in demo_procedural_block.json.

Blocks are defined in a format of Blockly procedure blocks: https://developers.google.com/blockly/guides/create-custom-blocks/define-blocks

Exception is additional "mcreator" field which defines format of block for MCreator:

```
...

"mcreator": {
    "toolbox_id": "[categorymachinename]",
    "toolbox_init": [
      ...
      List of string elements containing initial XML for Blockly blocks
      ...
    ],
    "inputs": [
      List of inputs defined in blockly block (fields with type input_value)
    ],
    "inputs": [
      List of fields defined in blockly block (fields with type field_*)
    ],
    "dependencies": [
      {
        List of procedure dependencies to be used by MCreator dependency system
      }
    ]
  }

...
```

Dependency format:

```
"name": "Dependency name",
"type": "Dependency type"
```

Dependency types:
* actionresulttype
* advancement
* blockstate
* dimensiontype
* direction
* entity
* itemstack
* logic
* map
* number
* string
* world

## Output procedure block

Has the same structure as procedural procedure block, but needs to have Blockly type defined, for example:

```
...

"output": "Number",

...
```

Output type needs to be in blockly format, for example:
* Number
* Boolean
* String
* MCItem
* MCItemBlock
* Direction

# Generator for procedure block

Each procedure block needs its own template defined for all desired generators. These templates belong in:

`<plugin root>/<generator machine name>/procedures/blockmachinename.java.ftl`

Check `./1.14.4/procedures/` or `./1.15.2/procedures/` for examples of such templates.
