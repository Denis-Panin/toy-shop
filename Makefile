MANAGE = python manage.py

start:
	 cd src && $(MANAGE) runserver 0.0.0.0:8888

mm:
	cd src && $(MANAGE) makemigrations

m:
	cd src && $(MANAGE) migrate

static:
	cd src && $(MANAGE) collectstatic

user:
	cd src && $(MANAGE) createsuperuser
	
lint:
	flake8 ./src

check:
	$(MANAGE) check

check-migrate:
	$(MANAGE) --check --dry-run

shell_plus:
	cd src && $(MANAGE) shell_plus --print-sql

celery:
	 cd src && celery -A core worker -l info

beat_celery:
	 cd src && celery -A core beat -l info

flower_celery:
	cd src &&  celery -A core flower

freeze:
	pip freeze > requirements.txt
