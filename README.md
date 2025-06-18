
# Installing

### Prerequisites
 - [kanata](https://github.com/jtroo/kanata)
 - [just](https://github.com/casey/just)
 - [fzf](https://github.com/junegunn/fzf)
 - [git](https://github.com/git/git)

### Arch Linux
1.  ### Install dependencies
	```sh
	pacman -S --needed just fzf git
	```

2.  ### Install kanata
	
	```sh
	yay -S kanata
	```
	```sh
	paru -S kanata
	```
	[Build it from source](https://github.com/jtroo/kanata#build-it-yourself)	
3. ### Clone repository
	```sh
	git clone https://github.com/dooory/kanata-config
	cd kanata-config
	```
4. ### Run the justfile
	```sh
	just
	```
