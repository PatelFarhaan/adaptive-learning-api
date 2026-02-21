.PHONY: install run test clean docker-build docker-run

install:
	bash requirements.sh

run:
	python3 apis.py

test:
	python3 -m pytest -v

clean:
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name '*.pyc' -delete 2>/dev/null || true

docker-build:
	docker build -t master-project .

docker-run:
	docker run -p 5000:5000 master-project
