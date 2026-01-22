--[[
=====================================================================
                        NPC Placer
                        
  Script Configuration
  Developed by: Sam Scripts
  Website: www.samscripts.co.uk
  
=====================================================================
--]]

Config = {}

Config.Debug = true

-- -------------------------------------------------------------------
-- 🧑 NPC's Settings
-- -------------------------------------------------------------------

Config.NPCS = {
     -- Example 1:
    {
    model = "a_m_m_eastsa_02",
    coords = vec4(188.84, -855.18, 30.37, 31.84),
    animations = {
        dict = "mini@triathlon",
        name = "idle_e",
        flag = 1
    },
    },
     -- Example 2:
    {
    model = "a_f_m_tramp_01",
    coords = vec4(190.74, -854.59, 30.33, 18.24),
    animations = {
        dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@",
        name = "med_center",
        flag = 1
    },
    },
    -- Example 3:
    {
    model = "a_m_m_ktown_01",
    coords = vec4(187.02, -855.9, 30.36, 14.46),
    animations = {
        dict = false,
        name = false,
        flag = 1
    },     
    }
}

-- -------------------------------------------------------------------
-- 📕 Information
-- -------------------------------------------------------------------

-- https://docs.fivem.net/docs/game-references/ped-models/

-- https://forge.plebmasters.de/animations?ped=A_F_Y_Beach_01
