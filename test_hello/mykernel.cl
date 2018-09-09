// Simple OpenCL kernel that squares an input array.
// This code is stored in a file called mykernel.cl.
// You can name your kernel file as you would name any other
// file.  Use .cl as the file extension for all kernel
// source files.
 
// Kernel block.                                      //   1
__kernel void square(                                   //   2
                   __global float* input,               //   3
                   __global float* output,
				   const unsigned int count)
{
    int i = get_global_id(0);
	if (i < count)
    	output[i] = input[i] * input[i];
}

