
# Setting Up

## Install required packages


    sudo apt install build-essential linux-source flex bison libssl-dev libelf-dev linux-headers-$(uname -r) 


## Extract kernel source tree into home directory


    cd
    tar xf /usr/src/linux-source-$(uname -r | awk -F. '{print $1 "." $2}').tar.xz


## Clone this repo and copy local Module.symvers


    git clone https://github.com/bobscott45/sample-kernel-module
    cd sample-kernel-module
    cp /usr/src/linux-headers-$(uname -r)/Module.symvers .


## Run make


    cd sample-kernel-module
    make


## Install module

    sudo insmod hello.ko

If you run the command
    
    sudo dmesg

you should see something like:

[163472.920368] hello: loading out-of-tree module taints kernel.
[163472.920420] hello: module verification failed: signature and/or required key missing - tainting kernel
[163472.920738] Hello World



## Uninstall module

To remove the module, run the command
   
    sudo rmmod hello

If you then run 
    
    sudo dmesg

you should see something like:

[163618.945236] Goodbye World


# Notes

printk(KERN_ALERT "Hello World\n")

Note the lack of a comma after KERN_ALERT. The printk function is called with a single format string parameter and the above line takes advantage of concatanatiion of adjacent string constants by the preprocessor.