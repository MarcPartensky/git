update: add commit stash fetch pull push unstash
stash:
	git stash
fetch:
	git pull --recurse-submodules
pull:
	git submodule update --init --recursive
add:
	sh -c 'for gitproject in $$(/bin/ls); do git submodule add ./$$gitproject; done'
	git add -A
commit:
	git commit -S -m "update"
push:
	git push
unstash:
	git stash pop
