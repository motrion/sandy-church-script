# sandy-church-script

A simple FiveM script that allows you to change the interior scene of **Prompt Studio's Sandy Church** using a slash command. Toggle between church layouts like a funeral, wedding, or service synced across the server.

## 🎬 Previews

- 🗺️ **Map Trailer by Prompt Studios:**  
  [Watch on YouTube](https://www.youtube.com/watch?v=e65JFRwvC2Q)

- 🛠️ **Script In-Game Preview:**  
  [Watch Demo](https://r2.fivemanage.com/9CSxFdMOEkX3ND2dvZeLW/Desktop2025.04.21-03.49.12.01-Trim.mp4)

## 🛒 Where to Get the Map

You can purchase the **Sandy Church Map** by **Prompt Studios** here:

- 💵 [Direct Purchase - Prompt Mods](https://fivem.prompt-mods.com/package/6781028)  
- 📦 [Included in Subscription](https://fivem.prompt-mods.com/package/5231636)

## 🧠 Credits

- 🏗️ **Map Created By:** [Prompt-Coder on GitHub](https://github.com/Prompt-Coder)
- 🧩 **Script Created For:** Prompt Studio's Sandy Church map

## ⚙️ Requirements

- [ox_lib](https://github.com/overextended/ox_lib)
- FiveM server with ACE permission setup

## 📖 Usage

### Slash Command


This will open a dialog menu to select from the following scene options:

- **Funeral**
- **Marriage**
- **Service**
- **Clear** (removes any active scene)

The selected scene will apply to everyone on the server.

### ACE Permission

Only users with the following ACE permission can access the command: (can be changed in the config.lua)

```plaintext
church.setscene
