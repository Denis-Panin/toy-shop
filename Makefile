MANAGE = python src/manage.py

start:
	$(MANAGE) runserver 0.0.0.0:8888

mm:
	$(MANAGE) makemigrations

m:
	$(MANAGE) migrate

static:
	$(MANAGE) collectstatic

user:
	$(MANAGE) createsuperuser
	
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
