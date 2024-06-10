# This is a neo-vim / vim distribuition. based on nvchad and lazyvim.
There's commands to easy install in every plataform that you use, even in android (via root) /ios terminal (via jailbreak).
This is supposed to be simple, easy and blasing-fast using ssh whenever/wherever I need, and to help me during my Uni days.<p>
 startup time, stats for nerds --> 89.95ms 

# My NvChad configuration
![Alt Text](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExZG1uajZqb21rMTV5dXUyaTB1d3ZuN2hzNjE1MTE5ZTZodTN3eTY3ZSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/JNFMqgqtcrwwk27Z3f/source.gif)


## Prerequisite

### Yields:
- Neovim 0.9.5ˆ. [download](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- Nerd Font as your terminal font. You can search here [NerdFonts](https://www.nerdfonts.com/)
- Make sure the nerd font you set doesn't end with Mono to prevent small icons.
  - Example : JetbrainsMono Nerd Font "" and **not** JetbrainsMono Nerd Font **"Mono"**
  - Personally I use [[Meslo(preview)]](https://www.programmingfonts.org/#meslo),[[Meslo - download]](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip)
- Ripgrep is required for grep searching with Telescope (OPTIONAL).
- Delete/backup old neovim folders if you have (check commands below)
- git -- strongly recommend it
- Codeium for code completion -- optional
- sed, for replacing
- For windows user's only :
  - GCC, Windows users must have mingw installed and set on path.
  - Make, Windows users must have GnuWin32 installed and set on path.
  - Win32yank, for clipboard -- optional for mac/linux users (if you use windows)

___
## Installation

### Do a backup first
````bash
mv ./.config/nvim ./.config/.nvim.bak
````

### Linux & Mac

```bash
git clone https://github.com/davecarrijo/NvChad_BlazingFast ~/.config/nvim && nvim
```
#### backup & download
```bash
mv ./.config/nvim ./.config/.nvim.bak && git clone https://github.com/davecarrijo/NvChad_BlazingFast ~/.config/nvim && nvim
```

### Windows
##### CMD
```cmd
git clone https://github.com/davecarrijo/NvChad_BlazingFast %USERPROFILE%\AppData\Local\nvim && nvim
```
##### Powershell
```powershell
git clone https://github.com/davecarrijo/NvChad_BlazingFast $ENV:USERPROFILE\AppData\Local\nvim && nvim
```
____
## Uninstallation

###### Linux / Macos (unix)
```shell
rm -rf ~/.config/nvim && rm -rf ~/.local/share/nvim
```
###### Windows CMD
```cmd
rd -r ~\AppData\Local\nvim && rd -r ~\AppData\Local\nvim-data
```
###### Window PowerShell
```powershell
rm -Force ~\AppData\Local\nvim && rm -Force ~\AppData\Local\nvim-data
```
cya matte

## Plugins
I will update this later
