bweapons.register_weapon({
    name = "bweapons_utility_pack:torch_bow",
    description = "Torch Bow",
    texture = "bweapons_utility_pack_torch_bow.png",
    uses = 256,
    ammo_type = "default:torch",
    tool_repair = true,
    liquids_stop = true,
    damage = 3,
    spread = 0.08,
    cooldown = 2,
    hit_flare = "tnt_smoke.png",
    hit_flare_size = 2,
    hit_flare_glow = false,
    hit_particle = "tnt_smoke.png",
    hit_particle_glow = false,
    hit_particle_amount = 32,
    hit_particle_size = 2,
    hit_particle_velocity = 3,
    hit_particle_gravity = -10,
    trail_particle = "bweapons_utility_pack_torch_bow_trail.png",
    trail_particle_size = 8,
    trail_particle_displacement = 0.05,
    trail_particle_amount = 2,
    trail_particle_velocity = 2,
    trail_particle_gravity = 2,
    trail_particle_glow = true,
    fire_sound = "bweapons_bows_pack_longbow_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_bows_pack_longbow_reload",
    hit_sound = "bweapons_bows_pack_arrow_hit",
    hit_sound_gain = 0.5,
    projectile_speed = 30,
    projectile_gravity = -7.5,
    projectile_dampening = 0,
    projectile_timeout = 35,
    projectile_texture = "bweapons_utility_pack_torch_entity.png",
    projectile_glow = true,
    projectile_visual_size = 0.6,
    on_hit = function (projectile, target)
        if target.type == "node" then
            local target_pos = minetest.get_pointed_thing_position(target, false)
            local air_pos = minetest.find_node_near(target_pos, 2, "air", true)
            if air_pos ~= nil then
                local delta = {x = target_pos.x - air_pos.x, y = target_pos.y - air_pos.y, z = target_pos.z - air_pos.z}
                local rotation = minetest.dir_to_wallmounted(delta)
                minetest.set_node(air_pos, {name = "default:torch", nil, param2 = rotation})
            end
        end
    end,
    recipe={
        {
            {'fire:flint_and_steel', 'group:wood', 'farming:string'},
            {'group:wood', '', 'farming:string'},
            {'default:steel_ingot', 'group:wood', 'farming:string'}
        },
    },
})
