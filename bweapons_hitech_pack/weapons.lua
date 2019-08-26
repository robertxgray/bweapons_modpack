bweapons.register_weapon({
    name = "bweapons_hitech_pack:missile_launcher",
    description = "Missile Launcher",
    texture = "bweapons_hitech_pack_missile_launcher.png",
    has_durability = true,
    uses = 64,
    ammo_type = "bweapons_hitech_pack:missile",
    spread = 0.05,
    cooldown = 1,
    flare = "tnt_boom.png",
    flare_size = 10,
    flare_glow = true,
    hit_flare = "tnt_boom.png",
    hit_flare_size = 4,
    hit_flare_glow = true,
    trail_particle = "tnt_smoke.png",
    trail_particle_velocity = 1,
    trail_particle_gravity = 6,
    trail_particle_size = 3,
    trail_particle_amount = 4,
    trail_particle_displacement = 0.25,
    trail_particle_glow = false,
    fire_sound = "bweapons_hitech_pack_missile_launcher_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_hitech_pack_missile_launcher_reload",
    reload_sound_gain = 0.25,
    projectile_speed = 30,
    projectile_gravity = 0,
    projectile_timeout = 50,
    projectile_texture = "bweapons_hitech_pack_missile_entity.png",
    projectile_glow = true,
    projectile_visual_size = 0.5,
    on_hit = function (self, target)
        tnt.boom(target.intersection_point, {radius=3})
        end,
    on_timeout = function (self)
        tnt.boom(self.previous_pos, {radius=3})
        end,
    recipe={
        {
            {'technic:stainless_steel_ingot', 'technic:stainless_steel_ingot', 'technic:composite_plate'},
            {'technic:stainless_steel_ingot', 'technic:stainless_steel_ingot', 'technic:composite_plate'},
            {'', '', 'technic:composite_plate'}
        },
    },
})

bweapons.register_weapon({
    name = "bweapons_hitech_pack:particle_gun",
    description = "Particle Gun",
    texture = "bweapons_hitech_pack_particle_gun.png",
    has_durability = true,
    uses = 64,
    requires_technic = true,
    technic_charge = 100000,
    hitscan = true,
    distance = 40,
    damage = 8,
    spread = 0.08,
    cooldown = 0.25,
    flare = "bweapons_hitech_pack_particle_gun_flare.png",
    flare_size = 10,
    flare_glow = true,
    hit_flare = "bweapons_hitech_pack_particle_hit_flare.png",
    hit_flare_size = 25,
    hit_flare_glow = true,
    hit_particle = "bweapons_hitech_pack_particle_gun_trail_particle.png",
    hit_particle_glow = true,
    hit_particle_amount = 32,
    hit_particle_size = 10,
    hit_particle_velocity = 2,
    hit_particle_gravity = -8,
    trail_particle = "bweapons_hitech_pack_particle_gun_trail_particle.png",
    trail_particle_distance = 1,
    trail_particle_velocity = 0.25,
    trail_particle_gravity = 0,
    trail_particle_size = 6,
    trail_particle_amount = 1,
    trail_particle_displacement = 0,
    trail_particle_glow = true,
    fire_sound = "bweapons_hitech_pack_particle_gun_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_hitech_pack_laser_gun_reload",
    reload_sound_gain = 0.25,
    hit_sound = "bweapons_hitech_pack_impact",
    hit_sound_gain = 0.15,
    recipe={
        {
            {'default:diamond', 'technic:doped_silicon_wafer', 'technic:red_energy_crystal'},
            {'technic:hv_transformer', 'technic:hv_transformer', 'technic:stainless_steel_ingot'},
            {'', '', 'technic:stainless_steel_ingot'}
        },
    },
})

bweapons.register_weapon({
    name = "bweapons_hitech_pack:laser_gun",
    description = "Laser Gun",
    texture = "bweapons_hitech_pack_laser_gun.png",
    has_durability = true,
    uses = 128,
    requires_technic = true,
    technic_charge = 350000,
    hitscan = true,
    distance = 100,
    damage = 15,
    spread = 0.01,
    cooldown = 1.25,
    flare = "bweapons_hitech_pack_laser_gun_flare.png",
    flare_size = 10,
    flare_glow = true,
    hit_flare = "bweapons_hitech_pack_laser_gun_hit_flare.png",
    hit_flare_size = 20,
    hit_flare_glow = true,
    hit_particle = "bweapons_hitech_pack_sparks.png",
    hit_particle_glow = true,
    hit_particle_amount = 32,
    hit_particle_size = 10,
    hit_particle_velocity = 4,
    hit_particle_gravity = -10,
    trail_particle = "bweapons_hitech_pack_laser_gun_trail.png",
    trail_particle_distance = 1,
    trail_particle_velocity = 0.25,
    trail_particle_gravity = 0,
    trail_particle_size = 3,
    trail_particle_amount = 2,
    trail_particle_displacement = 0,
    trail_particle_glow = true,
    fire_sound = "bweapons_hitech_pack_laser_gun_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_hitech_pack_laser_gun_reload",
    reload_sound_gain = 0.25,
    hit_sound = "bweapons_hitech_pack_impact",
    hit_sound_gain = 0.15,
    recipe={
        {
            {'default:mese', 'default:obsidian_glass', 'technic:green_energy_crystal'},
            {'technic:hv_transformer', 'technic:hv_transformer', 'technic:composite_plate'},
            {'', '', 'technic:stainless_steel_ingot'}
        },
    },
})

bweapons.register_weapon({
    name = "bweapons_hitech_pack:plasma_gun",
    description = "Plasma Gun",
    texture = "bweapons_hitech_pack_plasma_gun.png",
    has_durability = true,
    uses = 96,
    requires_technic = true,
    technic_charge = 500000,
    damage = 10,
    shot_amount = 5,
    spread = 0.18,
    cooldown = 1.5,
    flare = "bweapons_hitech_pack_plasma_gun_flare.png",
    flare_size = 10,
    flare_glow = true,
    hit_flare = "bweapons_hitech_pack_plasma_gun_hit_flare.png",
    hit_flare_size = 20,
    hit_flare_glow = true,
    hit_particle = "bweapons_hitech_pack_plasma_gun_hit_particle.png",
    hit_particle_glow = true,
    hit_particle_amount = 32,
    hit_particle_size = 10,
    hit_particle_velocity = 4,
    hit_particle_gravity = -10,
    trail_particle = "bweapons_hitech_pack_plasma_gun_projectile_trail.png",
    trail_particle_velocity = 0.5,
    trail_particle_gravity = 0,
    trail_particle_size = 4,
    trail_particle_amount = 2,
    trail_particle_displacement = 0.1,
    trail_particle_glow = true,
    fire_sound = "bweapons_hitech_pack_plasma_gun_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_hitech_pack_laser_gun_reload",
    reload_sound_gain = 0.25,
    hit_sound = "bweapons_hitech_pack_impact",
    hit_sound_gain = 0.1,
    projectile_speed = 30,
    projectile_gravity = 0,
    projectile_timeout = 25,
    projectile_texture = "bweapons_hitech_pack_plasma_gun_projectile.png",
    projectile_glow = true,
    projectile_visual_size = 0.5,
    recipe={
        {
            {'default:diamondblock', 'default:obsidian_glass', 'technic:green_energy_crystal'},
            {'technic:hv_transformer', 'technic:hv_transformer', 'technic:composite_plate'},
            {'', '', 'technic:stainless_steel_ingot'}
        },
    },
})

bweapons.register_weapon({
    name = "bweapons_hitech_pack:rail_gun",
    description = "Rail Gun",
    texture = "bweapons_hitech_pack_rail_gun.png",
    has_durability = true,
    uses = 64,
    requires_technic = true,
    technic_charge = 500000,
    ammo_type = "bweapons_hitech_pack:rail_slug",
    hitscan = true,
    distance = 150,
    penetration = 10,
    liquids_stop = false,
    damage = 20,
    spread = 0.01,
    cooldown = 3.5,
    flare = "bweapons_hitech_pack_rail_gun_flare.png",
    flare_size = 15,
    flare_glow = true,
    hit_flare = "tnt_boom.png",
    hit_flare_size = 25,
    hit_flare_glow = true,
    trail_particle = "bweapons_hitech_pack_rail_gun_trail.png",
    trail_particle_velocity = 1.5,
    trail_particle_gravity = 1,
    trail_particle_size = 4,
    trail_particle_amount = 4,
    trail_particle_displacement = 0,
    trail_particle_glow = true,
    fire_sound = "bweapons_hitech_pack_rail_gun_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_hitech_pack_missile_launcher_reload",
    reload_sound_gain = 0.25,
    on_hit = function (self, target)
            tnt.boom(target.intersection_point, {radius=1})
        end,
    recipe={
        {
            {'technic:copper_coil', 'technic:copper_coil', 'technic:composite_plate'},
            {'technic:hv_transformer', 'technic:hv_transformer', 'technic:blue_energy_crystal'},
            {'technic:copper_coil', 'technic:copper_coil', 'technic:composite_plate'}
        },
    },
})
