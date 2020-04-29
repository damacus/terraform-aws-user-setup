go-test:
	go test ./test

go-test-output:
	cd test &&\
	go test

kitchen:
	kitchen test
