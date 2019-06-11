include envfile
export $(shell sed 's/=.*//' envfile)

build:
	@echo '--> Creating docker image with python'
	@docker build -f Dockerfile -t python3.7.3-interpreter .

run:
	@echo '--> Running simple python script'
	@. run-python.sh poc.py

	@echo '--> Running python script that reads environment variables'
	@. run-python.sh poc-env.py

	@echo '--> Running python script with requirements'
	@. run-python.sh poc-requirement.py

	@echo '--> Running python script that generates target folder'
	@. run-python.sh poc-write.py

run-using-docker-compose:
	@echo '--> Running simple python script'
	@docker-compose run python poc.py

	@echo '--> Running python script that reads environment variables'
	@docker-compose run python poc-env.py

	@echo '--> Running python script with requirements'
	@docker-compose run python poc-requirement.py

	@echo '--> Running python script that generates target folder'
	@docker-compose run python poc-write.py
