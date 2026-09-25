local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Threat",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Threat/main/Threat%20HOTEL-.rbxm",

    Speed = 137,
    DelayTime = 3,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = true,

    FlickerLights = {
        true,
        1,
    },

    Cycles = {
        Min = 4,
        Max = 4,
        WaitTime = 0.2,
    },

    CamShake = {
        true,
        {10.5, 40, 0.1, 1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://12706473870",
            Image2 = "rbxassetid://12706473870",

            Shake = true,

            Sound1 = {
                10483790459,
                { Volume = 0.5 },
            },

            Sound2 = {
                10483837590,
                { Volume = 0.5 },
            },

            Flashing = {
                true,
                Color3.fromRGB(112, 5, 116),
            },

            Tease = {
                false,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Threat..."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Threat has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Threat has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Threat has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Threat has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Threat has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at Threat:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Threat.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
