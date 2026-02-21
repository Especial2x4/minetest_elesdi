
minetest.register_on_joinplayer(function(player)
    minetest.after(1, function()
        player:set_sky({
            base_color = "#39FF14",
            type = "plain"
        })
    end)
end)
