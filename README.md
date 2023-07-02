# My 💤 LazyVim IDE config for Neovim

[![IT Man - Talk #33 NeoVim as IDE [Vietnamese]](https://i.ytimg.com/vi/dFi8CzvqkNE/hqdefault.jpg)](https://www.youtube.com/watch?v=dFi8CzvqkNE)

[![IT Man - Talk #35 #Neovim IDE for Web Developer](https://i.ytimg.com/vi/3EbgMJ-RcWY/hqdefault.jpg)](https://www.youtube.com/watch?v=3EbgMJ-RcWY)

**[Note:]** This Neovim configuration is based on the starter template at
https://github.com/jellydn/lazy-nvim-ide and is extensively enhanced for
use with [Lazyman](https://github.com/doctorfree/nvim-lazyman).

## Install Lazyman

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

## Install the LazyIde Neovim configuration

```bash
lazyman -w LazyIde
```

## Configure the shell environment

```bash
export NVIM_APPNAME="nvim-LazyIde"
alias wvim="NVIM_APPNAME=nvim-LazyIde nvim"
```

## Screenshots

<img width="1792" alt="image" src="https://user-images.githubusercontent.com/870029/228557089-0faaa49f-5dab-4704-a919-04decfc781ac.png">

## Tips

- Improve key repeat on Mac OSX, need to restart
```sh
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 14
```

## Authors

👤 **Ronald Joe Record**

- Website: https://ronrecord.com/
- Twitter: [@ronrecord](https://twitter.com/ronrecord)
- Github: [@doctorfree](https://github.com/doctorfree)

👤 **Huynh Duc Dung**

- Website: https://productsway.com/
- Twitter: [@jellydn](https://twitter.com/jellydn)
- Github: [@jellydn](https://github.com/jellydn)

## Show your support

Give a ⭐️ if this project helped you!

[![paypal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/ronrecord)
[![buymeacoffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/doctorfree)
