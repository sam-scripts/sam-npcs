<div align="center">

# 🧍 NPC Spawner

![Framework](https://img.shields.io/badge/Framework-Standalone-0099ff?style=for-the-badge&logo=lua)
![License](https://img.shields.io/badge/License-Open%20Source-2ecc71?style=for-the-badge)
![Resmon](https://img.shields.io/badge/Resmon-0.00ms-success?style=for-the-badge)
![Dependencies](https://img.shields.io/badge/Dependencies-None-lightgrey?style=for-the-badge)

**A lightweight, free, and open-source framework designed to spawn NPCs (peds) at specific locations with custom animations.**

[Download Now](https://github.com/sam-scripts/sam-npcs/archive/refs/heads/main.zip) · [Report Bug](https://discord.gg/U9m8BGxMWY) · [Join Discord](https://discord.gg/U9m8BGxMWY)

</div>

---

## 📖 About This Resource

**NPC Spawner** gives you a robust base framework to populate your world. Whether you need a shopkeeper standing behind a counter or a construction worker digging at a site, this script handles the spawning and animation logic efficiently.

---

## 💻 Technical Details

| Feature | Detail |
| :--- | :--- |
| **Framework** | Standalone (Works on any server/framework) |
| **Dependencies** | N/A |
| **Performance (Idle) (Depending on amount of NPC's)** | 0.00ms |
| **Support** | Discord |

---

## 🛠️ Configuration

Configuration is handled entirely in `config.lua`. You can add as many NPCs as you like by defining their model, coordinates, and animation settings.

```lua
Config = {}

Config.NPCs = {
    {
        model = "a_m_m_farmer_01",
        coords = vector4(123.4, 567.8, 90.0, 180.0),
        animation = {
            dict = "amb@world_human_gardener_plant@idle_a",
            anim = "idle_a"
        }
    },
}
