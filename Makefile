

all:
	docker build --tag="tacodata/skydebug" .
	docker push tacodata/skydebug
