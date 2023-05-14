#!/bin/bash
#
#	Author: Andrii Murha (lxchnlvl) <https://t.me/LexChen_Chat>
#


if [ -f x86_64/aurum_repository.db -a -f x86_64/aurum_repository.files ]; then
	rm x86_64/aurum_repository.{db,files}
	repo-add -n -R aurum_repository.db.tar.gz x86_64/*
	rm aurum_repository.{db,files}
	mv aurum_repository.db.tar.gz x86_64/aurum_repository.db
	mv aurum_repository.files.tar.gz x86_64/aurum_repository.files
	git add .
	git commit -m "Added more packages"
	git push -u origin main
else
	repo-add -n -R aurum_repository.db.tar.gz x86_64/*
	rm aurum_repository.{db,files}
	mv aurum_repository.db.tar.gz x86_64/aurum_repository.db
	mv aurum_repository.files.tar.gz x86_64/aurum_repository.files
	git add .
	git commit -m "Added more packages"
	git push -u origin main
fi






