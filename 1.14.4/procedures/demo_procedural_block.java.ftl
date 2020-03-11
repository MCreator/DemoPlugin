<#include "mcitems.ftl">
world.setBlockState(new BlockPos((int)${input$x}, (int)${input$y}, (int)${input$z}), ${mappedBlockToBlockStateCode(input$block)}, 3);

/*
NOTE:
- We need to include mcitems.ftl, which is a helper file of 1.14.4 generator that provides mappedBlockToBlockStateCode function
- If you use variables inside procedural block, wrap the whole code with {} and prefix all variables with underscore (_) to
  avoid collisions with user defined variables
 */