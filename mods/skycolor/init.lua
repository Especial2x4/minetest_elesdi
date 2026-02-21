
local colors = {
    "#39FF14",
    "#00FF00",
    "#0000FF",
    "#FFFF00",
    "#FF00FF",
    "#00FFFF",
    "#FFA500",
    "#8000FF"
}

minetest.register_on_joinplayer(function(player)

    local function change_sky()
        if not player or not player:is_player() then return end

        local color = colors[math.random(#colors)]

        player:set_sky({
            type = "plain",
            base_color = color
        })

        -- Próximo cambio entre 20 y 60 segundos
        local next_time = math.random(20, 60)
        minetest.after(next_time, change_sky)
    end

    change_sky()
end)
