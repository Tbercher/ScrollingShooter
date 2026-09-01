# Scrolling Shooter Game (ITCS 4230/5230 - Workshop 1)

A 2D top-down vertical scrolling arcade shooter built with **GameMaker** using **GameMaker Language (GML)**.

---

## Game Purpose & Overview

The objective of the game is to pilot an aircraft over a vertically scrolling ocean, dodging obstacles, eliminating waves of enemy planes, and achieving the highest possible score while managing your health.

### Core Gameplay Features
* **Player Movement:** Full horizontal and vertical movement with bounded screen clamping and vertical acceleration/deceleration physics.
* **Combat Mechanics:** Spacebar-triggered shooting at regular intervals to destroy oncoming enemy aircraft and gain score points.
* **Enemies & Hazards:**
  * **Enemy 1 (Fast):** Moves quickly straight down; causes collision damage.
  * **Enemy 2 (Shooter):** Slower, higher point value, fires bullets straight down.
  * **Enemy 3 (Aimed Shooter):** Slowest, highest point value, fires clamped directional shots aimed directly at the player.
* **Damage & Health:** The player begins with 100 HP, monitored via a dynamic UI health bar. Collisions deal 30 damage, while enemy bullets deal 5 damage.
* **Power-Ups:** Health pickups periodically spawn and scroll down, restoring player health to 100 on collection.
* **Audio & Visual Effects:** Custom animations for player propellers and multi-frame explosions, accompanied by sound effects and background music (*Ride of the Valkyries*).

---

## Learning Objectives & Architecture

This project was built to master the core architectural concepts of 2D game development in GameMaker:

* **Game Loop & Step Execution:** Leveraging the Step Event to handle continuous real-time inputs, boundary clamping, and frame-by-frame updates.
* **Object-Oriented Programming & Inheritance:** Building base parent objects (`obj_island1`, `obj_enemy1`) to share core behaviors and overriding properties via Variable Definitions on child objects (`obj_enemy2`, `obj_enemy3`) to avoid code duplication.
* **Physics & Vector Math:** Manipulating 2D coordinate spaces, programming vertical inertia/acceleration (`vspeed`), and calculating clamped directional trajectories using trigonometric functions (`point_direction()`).
* **Scope & Instance Safety:** Managing local, instance (`hp`, `canShoot`), and global state while implementing defensive checks (`instance_exists()`) to prevent crashes during object destruction lifecycles.
* **Event-Driven Architecture:** Utilizing Alarm Events to control timers and cooldown rates (shooting delays, object spawners) alongside Collision and Animation End events.
* **UI & Audio Feedback:** Using Draw Events to render custom graphical interfaces (health bars, score text) and synchronizing audio playback with lifecycle state changes.

---

## Controls

| Action | Key / Control |
| :--- | :--- |
| **Move Left / Right** | `Left Arrow` / `Right Arrow` |
| **Accelerate Up / Down** | `Up Arrow` / `Down Arrow` |
| **Fire Bullets** | `Spacebar` (Hold to fire continuously) |
| **Quick Restart** | `R` |
| **Pause / Resume** *(Grad feature)* | `Alt` + `P` |

---

## How to Run

### Prerequisites
* [GameMaker](https://gamemaker.io/) (v2023+ or latest standard release) installed on Windows or macOS.

### Steps
1. **Clone the Repository:**
   ```bash
   git clone [https://github.com/](https://github.com/)<your-username>/<your-repo-name>.git
