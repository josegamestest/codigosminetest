    #Apos remover o bloco de baixo atualisa a fisica do bloco de cima

    local pos=self.object:get_pos()
    local adjacent_nodes = {
      {x=0, y=0, z=0}, --1    0  0
      {x=1, y=0, z=0}, --1    1  0
      {x=-1, y=0, z=0},--2   -1  0
      {x=0, y=0, z=1},--2     0  1
      {x=0, y=0, z=-1},--4    0 -1
      {x=1, y=0, z=1},--5     1  1
      {x=-1, y=0, z=-1},--6  -1 -1
      {x=-1, y=0, z=1},--7   -1  1
      {x=1, y=0, z=-1},--8    1 -1
    }
    for _, offset in ipairs(adjacent_nodes) do
        local adj_pos = {x=pos.x+offset.x, y=pos.y+offset.y, z=pos.z+offset.z}
        local adj_node = minetest.get_node(adj_pos).name
    	if adj_node ~= "air" then
          local adj_pos2 = {x=pos.x+offset.x, y=pos.y+1, z=pos.z+offset.z}
          minetest.check_for_falling(adj_pos2)
          minetest.remove_node(adj_pos)
    	end
    end
