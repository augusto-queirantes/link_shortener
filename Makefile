.PHONY: setup
setup: copy-env install create-db migrate-db

.PHONY: server
server:
	rails s -b 0.0.0.0

.PHONY: lint
rubocop:
	rubocop

.PHONY: test
test:
	rspec

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
