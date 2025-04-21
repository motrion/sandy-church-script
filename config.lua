Config = {}

-- ACE Permission for changing the church scene (Ex. add_ace group.staff church.setscene allow)
Config.AcePermission = "church.setscene"

-- Church interior coords (there shouldnt be any reason to change them unless using for another interior)
Config.ChurchPostal = vector3(1808.4193, 3909.5823, 35.0451)

-- List of entity sets for different church scenes
Config.EntitySets = {
    "church_funeral",  -- Funeral scene
    "church_married",  -- Marriage scene
    "church_service"   -- Church service scene
}
