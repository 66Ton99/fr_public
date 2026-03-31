#include <cstdio>

#if defined(_MSC_VER) && _MSC_VER >= 1900
extern "C" FILE* __cdecl __acrt_iob_func(unsigned);
extern "C" FILE _iob[] = {
  *(__acrt_iob_func(0)),
  *(__acrt_iob_func(1)),
  *(__acrt_iob_func(2))
};
#endif
