

ALTER TABLE legoportfolio.color ADD PRIMARY KEY (id);
ALTER TABLE legoportfolio.inventories ADD PRIMARY KEY (id);
ALTER TABLE legoportfolio.parts ADD PRIMARY KEY (part_num);
ALTER TABLE legoportfolio.partcat ADD PRIMARY KEY (id);
ALTER TABLE legoportfolio.sets ADD PRIMARY KEY (set_num);
ALTER TABLE legoportfolio.themes ADD PRIMARY KEY (id);

-- Add foreign keys
ALTER TABLE legoportfolio.parts ADD FOREIGN KEY (part_cat_id) 
	REFERENCES legoportfolio.partcat(id);


ALTER TABLE legoportfolio.inventorysets ADD FOREIGN KEY (inventory_id) 
	REFERENCES legoportfolio.inventories(id);

ALTER TABLE legoportfolio.inventorysets ADD FOREIGN KEY (set_num) 
	REFERENCES legoportfolio.sets(set_num);


ALTER TABLE legoportfolio.sets ADD FOREIGN KEY (theme_id) 
	REFERENCES legoportfolio.themes(id);


ALTER TABLE legoportfolio.inventories ADD FOREIGN KEY (set_num) 
	REFERENCES legoportfolio.sets(set_num);