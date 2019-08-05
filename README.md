# Bweapons modpack
Bweapons aims at providing a full progression of ranged weapons,
and an API for easy registration of your own weapons.

## API Features

- Projectile and hitscan based weapons
- Integration with technic
- Custom user-defined functions like on_hit(), on_timeout(), on_fire()
- Wide customization of visuals, particle effects and sounds
- Different fire modes (multiple projectiles/traces, salvos, node and entity penetration)
- Wide customization of projectile behavior, visuals and effects
- Easy to use registration function with just one definition parameter table
- Interoperability of every option, with big room for experimentation

## Making your own weapons
To define weapons in your own mod you need to call `bweapons.register_weapon(def)`
where `def` is a definition table. To see a complete list of possible definition options (with comments)
refer to **[this document](bweapons_api/documentation.txt)**.

Although not required, but bweapons_api provides a second function, for
convenient ammo registration `bweapons.register_ammo(def)`. List of available definition
options can be found in the documentation mentioned above.

Also, you can see already defined weapon packs for reference, however, keep in mind, they don't contain all possible options.

## Limitations
Automatic weapons are not implemented for the sake of saving server perfomance (it'd be required to test current input of every player every server step). Right now weapons are purely on_use() based and has no background perfomance costs.


## Requirements
**Minetest 5.0.0+**

Mods:
- default
- technic (optional)

## Mods in modpack
### bweapons_api

API required by weapon packs

**Requires** : default, technic (optional)

### bweapons_firearms_pack

Pack of weapons, consisting of:

- Pump-action shotgun
- Double-barreled shotgun
- Pistol
- Rifle
- Grenade launcher

**Requires** : default, tnt, basic_materials, technic

### bweapons_bows_pack

Pack of weapons, consisting of:

- Wooden bow
- Crossbow

**Requires** : default

### bweapons_hitech_pack
Pack of weapons, consisting of:

- Particle Blaster
- Laser Gun
- Plasma Gun
- Rail Gun
- Rocket Launcher

**Requires** : default, tnt, basic_materials, technic

### bweapons_utility_pack
Pack of utilities, consisting of:

- Torch bow

**Requires** : default

## License
All code is GPLv3 [link to the license](https://www.gnu.org/licenses/gpl-3.0.en.html)  
All resources not covered in the "credits" section are licensed under CC BY 4.0 [link to the license](https://creativecommons.org/licenses/by/4.0/legalcode)  

## Credits 
Sounds from following users of freesound.org were mixed, cut, edited and used in this modpack:

- firestorm185 - energy hum sound
- qubodup - explosion
- kastenfrosch - cannonball
- qubodup - cannon shot
- panxozerok - instant chill
- selector - rocket launch
- florianreichelt - huge explosion
- wcoltd - laser4
- adrimb96 - fairy sound
- mattiagiovanetti - laser gun shots iii
- tjcason - shortlasersound
- nettimatto - mini crossbow foley
- qubodup - launching shooting propelled grenade
- saturdaysoundguy - longbow release 1
- kinoton - whoosh 1
- drmaysta - cartoon arrow hit
- arcandio - razorback archery
- lensflare8642 - shotgun sounds
- nioczkus - 1911 reload
- lemudcrab - grenade launcher
- nioczkus - browning hi power
- nioczkus - darkscape 1911 a1

All sounds listed above were licensed as CC0 (released to public domain). Produced sounds are also licensed as CC0.