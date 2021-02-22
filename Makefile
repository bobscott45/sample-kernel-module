obj-m += hello.o

all:
	make -C  ~/linux-source-4.19/ M=$(PWD) modules

clean:
	make -C ~/linux-source-4.19/ M=$(PWD) clean

