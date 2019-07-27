# MakeFile for music sync project with Python backend and React front end
# Author: Austin Vargason
# Date Modified: 7/27/2019

virtualenv-install:
	source virtualenv/bin/activate; \
	python3 -m pip install -r requirements/base.txt; \
