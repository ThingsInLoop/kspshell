/*
 * main.c
 *
 *  Created on: Mar 28, 2021
 *      Author: sasha
 */

#include "../include/tree_struct.h"

#include <stdio.h>


#define _EEXIT \
	do { \
		print_usage(); \
		return -1; \
	} while(0)


void print_usage(void)
{
	printf(	"Usage: kspshell DIR\n\n" \
			"DIR is a path to Kerbal Space Program root directoy\n");
}

int main(int argc, char* argv[])
{
	char* ksp_dir_path;

	if (argc != 2){
		_EEXIT;
	}
	ksp_dir_path = argv[1];

	printf("%s\n", ksp_dir_path);

	return 0;
}
