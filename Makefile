pull:
	git submodule update --init --recursive
fetch:
	git pull --recurse-submodules
add:
	for gitproject in $(/bin/ls); do git submodule add ./$gitproject; done

