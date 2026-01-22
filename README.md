<div align="center">

# 🧍 NPC Spawner

![Framework](https://img.shields.io/badge/Framework-Standalone-0099ff?style=for-the-badge&logo=lua)
![License](https://img.shields.io/badge/License-Open%20Source-2ecc71?style=for-the-badge)
![Resmon](https://img.shields.io/badge/Resmon-0.00ms-success?style=for-the-badge)
![Dependencies](https://img.shields.io/badge/Dependencies-None-lightgrey?style=for-the-badge)

**A lightweight, free, and open-source framework designed to spawn NPCs (peds) at specific locations with custom animations.**

[Download Now](#) · [Report Bug](#) · [Join Discord](#)

</div>

---

## 📖 About This Resource

**NPC Spawner** gives you a robust base framework to populate your world. Whether you need a shopkeeper standing behind a counter or a construction worker digging at a site, this script handles the spawning and animation logic efficiently.

Because it is fully **Open Source**, you have complete access to the code, allowing you to use it as a standalone resource or a baseline to build your own complex systems.

## ✨ Key Features

* **🔓 Fully Open Source:** Full access to every line of code. Customize it to your specific needs.
* **⚙️ Easy Configuration:** Set up new NPCs quickly using the `config.lua` file.
* **🚀 Highly Optimized:** A super lightweight resource that only affects the client side. Runs at **0.00ms** at idle.
* **🎭 Animation Support:** Easily assign animations to your spawned NPCs to bring the environment to life.

---

## 💻 Technical Details

| Feature | Detail |
| :--- | :--- |
| **Framework** | Standalone (Works on any server) |
| **Dependencies** | N/A |
| **Performance (Idle)** | 0.00ms |
| **Code Accessibility** | Open Source / Unencrypted |
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
