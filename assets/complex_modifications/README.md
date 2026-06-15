# Karabiner Hyper Shortcuts

**Location:** `/Users/markandrey/.config/karabiner/assets/complex_modifications/`

A set of [Karabiner-Elements](https://karabiner-elements.pqrs.org/) complex modifications that turn **Hyper** (⌃⌥⇧⌘) into a powerful application launcher and utility key.

## What is Hyper?

Hyper is the combination of all four modifier keys pressed together:
**Control (⌃) + Option (⌥) + Shift (⇧) + Command (⌘)**

Instead of treating these as separate modifiers, this configuration turns them into a single "Hyper" key that you can combine with any other key to trigger actions.

## Default Shortcuts

### Launch Applications

| Hyper + Key | Action |
|---|---|
| `F` | Finder |
| `T` | Terminal |
| `C` | Calendar |
| `N` | Notes |
| `B` | Brave Browser |
| `G` | Google Chrome |
| `O` | Obsidian |
| `J` | Joplin |
| `E` | Ente Auth |
| `.` | Visual Studio Code |
| `Esc` | Activity Monitor |
| `` ` `` | System Settings |

### Open Websites

| Hyper + Key | URL |
|---|---|
| `1` | https://www.google.com |
| `2` | https://chatgpt.com |
| `3` | https://chat.deepseek.com |
| `4` | https://mail.yahoo.com |
| `5` | https://github.com |

### Utilities

| Hyper + Key | Action |
|---|---|
| `D` | Insert current date/time (`YYYY-MM-DD_HH-MM-SS`) |
| `I` | Insert a UUID |
| `L` | Lock screen |
| `F4` | Search highlighted text on Google |

## How to Use

1. **Open** `hyper.json` in this directory
2. **Edit** the file to add, remove, or modify rules
3. Open **Karabiner-Elements** → **Complex Modifications**
4. Click **Add rule** (at the bottom)
5. Find **Hyper shortcuts** in the list and click **Enable** on the rules you want
6. The changes are applied automatically — no restart needed

## How to Add Your Own Shortcut

Each rule follows this structure:

```json
{
  "description": "Hyper + X → Description of action",
  "manipulators": [
    {
      "type": "basic",
      "from": {
        "key_code": "x",
        "modifiers": {
          "mandatory": [
            "left_control",
            "left_option",
            "left_shift",
            "left_command"
          ]
        }
      },
      "to": [
        {
          "shell_command": "open -a 'Your App'"
        }
      ]
    }
  ]
}
```

Replace `"x"` with your desired key and `"Your App"` with the application or URL you want to open.

### Common `to` actions

- **Open an app:** `"shell_command": "open -a 'App Name'"`
- **Open a URL:** `"shell_command": "open https://example.com"`
- **Send keystrokes:** `"key_code": "v", "modifiers": ["left_command"]`
- **Run a shell command:** `"shell_command": "your-command-here"`
- **Multiple actions:** Use an array of objects (see the `D` or `I` keys for examples)

## Key Codes Reference

Common key codes for the `from.key_code` field:
- Letters: `a`–`z`
- Numbers: `1`–`9`, `0`
- Symbols: `escape`, `period`, `grave_accent_and_tilde`, `f1`–`f12`
- Modifiers: `left_control`, `left_option`, `left_shift`, `left_command`, `caps_lock`

Full list: [Karabiner KeyCode Reference](https://karabiner-elements.pqrs.org/docs/json/complex-modifications-manipulator-definition/from/key-code/)
