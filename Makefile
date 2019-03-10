.PHONY: all help runserver


# target: all - Default target. Does nothing.
all:
	@echo "Hello $(LOGNAME), nothing to do by default"
	@echo "Try 'make help'"

# target: help - Display callable targets.
help:
	@egrep "^# target:" [Mm]akefile

# target: run - Runs a dev server on localhost:8000
run:
	python manage.py runserver

# target: collect - calls the "collectstatic" django command
collect:
	django-admin.py collectstatic --settings=$(SETTINGS) --noinput
