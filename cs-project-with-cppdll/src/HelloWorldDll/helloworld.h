#ifndef __HELLO_WORLD_H__
#define __HELLO_WORLD_H__

#ifdef DLL_EXPORT
#define DLLAPI __declspec(dllexport)
#else
#define DLLAPI __declspec(dllimport)
#endif

#ifdef __cplusplus
extern "C" {
#endif

DLLAPI void HelloWorld();

#ifdef __cplusplus
}
#endif

#endif
