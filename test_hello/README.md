# OpenCL first example

The example can help u know how to compile OpenCL and it's kernel file 

## 1.Kernel with source
This is equal to use api clCreateProgramWithSource.
Now your kernel is embedded in your example.

## 2.Kernel with binary
This is equal to use api clCreateProgramWithBinary.
Now you'll need kernel file and build it with openclc.

## Why add this to git
First time I refer Apple's 'OpenCL Programming Guide for Mac' to create my OpenCL program without Xcode, it's too hard to use.

I can't understand like how to generate the mykernel.cl.h, how to compile it by command, why it's code is different to other OpenCL codes and so on.

This example is a Apple's example code not example in 'OpenCL Programming Guide for Mac'. It programmed by clCreateProgramWithSource and I just add clCreateProgramWithBinary.

It helps me to know how to use OpenCL, and OpenCL code's constitution, and I really hope it can help u too.

## Reference
Apple's example code.

Stackoverflow's answers.
