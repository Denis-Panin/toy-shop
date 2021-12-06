MANAGE = python manage.py

run:
	 cd src && $(MANAGE) runserver 0.0.0.0:8000

new-migrate:
	cd src && $(MANAGE) makemigrations

migrate:
	cd src && $(MANAGE) migrate

lint:
	flake8 ./src

check:
	$(MANAGE) check

check-migrate:
	$(MANAGE) --check --dry-run

shell_plus:
	$(MANAGE) shell_plus --print-sql

celery:
	 cd src && celery -A core worker -l info

beat_celery:
	 cd src && celery -A core beat -l info

flower_celery:
	cd src &&  celery -A core flower

freeze:
	pip freeze > requirements.txt