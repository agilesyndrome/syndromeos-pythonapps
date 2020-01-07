pip3tool:
	docker build -t docker.pkg.github.com/agilesyndrome/syndromeos-pythonapps/pytool-$(TOOL_NAME):$(TOOL_VERSION) --build-arg toolVersion=$(TOOL_VERSION) --build-arg toolName=$(TOOL_NAME) -f Dockerfile.pip3tool .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-pythonapps/pytool-$(TOOL_NAME):$(TOOL_VERSION)

piptool:
	docker build -t docker.pkg.github.com/agilesyndrome/syndromeos-pythonapps/pytool-$(TOOL_NAME):$(TOOL_VERSION) --build-arg toolVersion=$(TOOL_VERSION) --build-arg toolName=$(TOOL_NAME) --build-arg "toolDeps=pysqlite2" -f Dockerfile.piptool .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-pythonapps/pytool-$(TOOL_NAME):$(TOOL_VERSION)


aws2cli:
	docker build -t docker.pkg.github.com/agilesyndrome/syndromeos-pythonapps/pytool-aws2cli:2.0.0dev --build-arg awscliVersion=2.0.0dev -f Dockerfile.aws2cli .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-pythonapps/pytool-aws2cli:2.0.0dev

