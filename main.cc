#include    <stdlib.h>
#include    <string.h>
#include    <stdio.h>
#include "Test.h"

int main(char argc,char *argv[])
{
	FooClass * instance1 = FooClass::GetInstance();
	FooClass * instance2 = FooClass::GetInstance();

	printf("instance1=%p   instance2=%p\n",instance1,instance2);
   	return 0;
}
