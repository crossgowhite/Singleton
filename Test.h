#ifndef TEST_H_
#define TEST_H_

#include <stdio.h>
#include "singleton.h"


class FooClass {
 public:
 	static FooClass* GetInstance();
	void Bar() { printf("Bar function"); }
private:
	FooClass() {  }
	friend struct base::DefaultSingletonTraits<FooClass>;
//
//     DISALLOW_COPY_AND_ASSIGN(FooClass);
};
//



#endif

