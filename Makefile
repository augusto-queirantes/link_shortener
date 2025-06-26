.PHONY: setup
setup: copy-env install create-db migrate-db

.PHONY: install
install:
	bundle install

.PHONY: create-db
create-db:
	rails db:create

.PHONY: migrate-db
migrate-db:
	rails db:migrate

.PHONY: copy-env
copy-env:
	cp .env.example .env
