home_dir := env('HOME')
kanata_dir := home_dir + '/.config/kanata/'
services := "/usr/lib/systemd/system/"

default:
	@just --choose

install-config:
	mkdir -p {{kanata_dir}}
	read -p $'Warning: this will overwrite any kanata.kbd files in {{kanata_dir}}\nPress enter to confirm...'
	cp kanata.kbd {{kanata_dir}}

install-service:
	sudo mkdir -p {{services}}
	sudo cp kanata.service {{services}}
	sudo systemctl enable kanata.service --now

install-both:
	mkdir -p {{kanata_dir}}
	read -p $'Warning: this will overwrite any kanata.kbd files in {{kanata_dir}}\nPress enter to confirm...'
	cp kanata.kbd {{kanata_dir}}
	sudo mkdir -p {{services}}
	sudo cp kanata.service {{services}}
	sudo systemctl enable kanata.service --now
