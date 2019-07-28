virtualenv-install:
	virtualenv virtualenv; \
	source virtualenv/bin/activate; \
	python3 -m pip install -r backend/requirements/local.txt; \
	deactivate; \

virtualenv-migrate:
	source virtualenv/bin/activate; \
	python3 backend/musicsync/manage.py migrate; \
	deactivate; \

virtualenv-makemigrations:
	source virtualenv/bin/activate; \
	python3 backend/musicsync/manage.py makemigrations; \
	deactivate; \

virtualenv-run:
	source virtualenv/bin/activate; \
	docker run -p 6379:6379 -d redis:2.8; \
	python3 backend/musicsync/manage.py runserver 0.0.0.0:8000 & cd frontend/musicsync && npm run start;\
	deactivate; \