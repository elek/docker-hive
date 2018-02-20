VERSION ?= latest
URL ?= "http://xenia.sote.hu/ftp/mirrors/www.apache.org/hive/hive-2.3.2/apache-hive-2.3.2-bin.tar.gz"

build:
	docker build -t flokkr/hive:$(VERSION) --build-arg URL=$(URL) .

deploy:
	docker push flokkr/hive:$(VERSION)

.PHONY: deploy build
