#include "Test.h"

FooClass* FooClass::GetInstance()
{
	return base::Singleton<FooClass>::get();
}