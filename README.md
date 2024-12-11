
# How to init new home env

## 1. Install Nix
`
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install
`

## 2. Download .dotfiles
`
nix-shell -p git --run 'git clone '
`

## 3. Install

## make symlink
`
cd ~/.gotfiles
stow -vt ~ */
`
## update symlink
### rm -rf file or dir that made symlink before
### make again
`
cd ~/.gotfiles
stow -vt ~ */
`


## Install home-manager
### refer: https://dev.to/synecdokey/nix-on-macos-2oj3

## Install nix-darwin
### Step 1. Create flake-nix
`
mkdir -p ~/.config/nix-darwin
cd ~/.config/nix-darwin
nix flake init -t nix-darwin
sed -i '' "s/simple/$(scutil --get LocalHostName)/" flake.nix
`
### Step 2. Installing nix-darwin
`
nix run nix-darwin -- switch --flake ~/.config/nix-darwin
`
### Step 3. Using nix-darwin
`
darwin-rebuild switch --flake ~/.config/nix-darwin
`
### refer: https://github.com/LnL7/nix-darwin?tab=readme-ov-file

## How to backup dotfiles
### refer: https://www.reddit.com/r/neovim/comments/z0zvfb/protip_how_to_back_up_all_dotfiles/

