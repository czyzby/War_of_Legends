function wesnoth.wml_actions.WOL_add_fire_status(cfg)	
	local units = wesnoth.units.find_on_map(cfg)
	for _,u in pairs(units) do
		u:add_modification("object",{
			id = "WOL_fire_status_object",
            duration = "turn",
            -- add overlay
			T.effect{
				apply_to="overlay",
				add="misc/fire-overlay.png"
			}
		})
		u.status.fire_status = true
	end
end