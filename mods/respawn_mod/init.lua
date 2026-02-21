

-- Respawn Mod silencioso
minetest.register_chatcommand("respawn", {
    description = "Reaparecer directamente en el spawn",
    privs = {interact = true},
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if player then
            local spawn = {x=0, y=5, z=0} -- coordenadas personalizadas
            player:set_pos(spawn)
            -- No se envía ningún mensaje
            return true
        else
            return false
        end
    end
})
