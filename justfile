home_dir := env('HOME')
kanata_config_dir := home_dir + '/.config/kanata/'
current_dir := env('PWD')

kanata_symlink := kanata_config_dir + "kanata.kbd"
kanata_hardlink := current_dir + "kanata.kbd" 
services := "/usr/lib/systemd/system/"

default:
	@just --choose

install-config:
	mkdir -p {{kanata_config_dir}}
	ln -sf {{kanata_hardlink}} {{kanata_symlink}}

install-service:
	sudo mkdir -p {{services}}
	sudo cp kanata.service {{services}}
	sudo systemctl enable kanata.service --now

install-both:
	mkdir -p {{kanata_config_dir}}
	ln -sf {{kanata_hardlink}} {{kanata_symlink}}
	sudo mkdir -p {{services}}
	sudo cp kanata.service {{services}}
	sudo systemctl enable kanata.service --now
