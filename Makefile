obj-m += hello.o

all:
	make -C  ~/linux-source-$(shell uname -r | awk -F. '{print $$1 "."  $$2}')/ M=$(PWD) modules

clean:
	make -C ~/linux-source-$(shell uname -r | awk -F. '{print $$1 "."  $$2}')/ M=$(PWD) clean

