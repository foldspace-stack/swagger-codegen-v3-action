PROJECT_DIR 	:=  $(shell pwd)
MVN 			= mvn --settings ${PROJECT_DIR}/settings.xml -Dmaven.test.skip=true


help:
	@echo "USAGE:\t"
	@awk -F ':|##' '/^[^\t].+?:.*?##/ {printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF}' Makefile

.DEFAULT_GOAL=help
.PHONY=help