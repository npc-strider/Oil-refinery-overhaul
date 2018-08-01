
--[[function build_heat_interface(event)
	local entity = event.entity
	if entity.name == "fluid-condenser" then
		
	end
end

function remove_heat_interface(event)

end

function add_heat()

end

script.on_event(defines.events.on_built_entity, function(build_heat_interface))
script.on_event(defines.events.on_player_mined_entity, function(remove_heat_interface))
script.on_event(defines.events.on_tick,function(add_heat))]]