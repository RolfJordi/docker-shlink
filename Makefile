name ?= shlink
all: run

run:
	docker run --name $(name) -p 80:8080 -e SHORT_DOMAIN_HOST=w.max.local -e SHORT_DOMAIN_SCHEMA=http shlinkio/shlink

rm:
	docker stop $(name)
	docker rm $(name)
