
*Setting Up*

sudo apt install build-essential linux-source flex bison libssl-dev

*Notes*

printk(KERN_ALERT "Hello World\n")

Note the lack of a comma after KERN_ALERT. Tprintk is called with a single format string parameter and the above line takes advantage of concatanatiion of adjacent string constants by the preprocessor.