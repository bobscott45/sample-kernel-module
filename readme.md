
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


You should see the hello message by running 
    sudo dmesg

## Uninstall module
   
    sudo rmmod hello

You should see the goodbye message by running 
    sudo dmesg


# Notes

printk(KERN_ALERT "Hello World\n")

Note the lack of a comma after KERN_ALERT. Tprintk is called with a single format string parameter and the above line takes advantage of concatanatiion of adjacent string constants by the preprocessor.