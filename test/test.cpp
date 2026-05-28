#include <windows.h>

void foo(void) {
  OutputDebugStringA("This is the first thing we have actually printed.\n");
}

int CALLBACK WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
                     LPSTR lpCmdLine, int nShowCmd) {
  foo();
  return 0;
};
