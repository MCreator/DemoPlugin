@SubscribeEvent public void onGemDropped(ItemTossEvent event){
	PlayerEntity entity = event.getPlayer();
	int x = (int)entity.posX;
	int y = (int)entity.posY;
	int z = (int)entity.posZ;
	World world = entity.world;
	ItemStack itemstack = event.getEntityItem().getItem();

	java.util.HashMap<String, Object> dependencies = new java.util.HashMap<>();
	dependencies.put("x", x);
	dependencies.put("y", y);
	dependencies.put("z", z);
	dependencies.put("world", world);
	dependencies.put("entity", entity);
	dependencies.put("itemstack", itemstack);

	this.executeProcedure(dependencies);
}