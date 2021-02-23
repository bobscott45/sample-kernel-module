obj-m += hello.o

all:
	make -C  ~/linux-source-5.8/ M=$(PWD) modules

clean:
	make -C ~/linux-source-5.8/ M=$(PWD) clean

