# libfb 
C/C++ library for Framebuffer graphics

![C](https://img.shields.io/badge/c-%2300599C.svg?style=for-the-badge&logo=c&logoColor=white)
![C++](https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

### Usage

```c
#include "libfb.h"

int main()
{
    use_fb("fb0");

    draw_rect(10, 10, 100, 100, 1, 0xf2ff00);

    close_fb();
    return 0;
}
```

### Functions

#### use_fb
open given frame buffer

```c
bool use_fb(char* fb_)
```

#### close_fb
close frame buffer
```c
void close_fb()
```

#### draw_image
draw `.jpg` and `.png`
```c
bool draw_image(int32_t offset_x, int32_t offset_y, uint32_t img_width,  
                uint32_t img_height, const char *image_path)
```

#### draw_pixel
draw pixel
```c
void draw_pixel(int32_t x, int32_t y, uint32_t color)
```

#### draw_rect
draw reactangle
```c
void draw_rect(int32_t x, int32_t y, uint32_t width, uint32_t height,
                uint32_t borderWidth, uint32_t borderColor)

```

#### draw_rect_round
draw round rectangle
```c
void draw_rect_round(int32_t x, int32_t y, uint32_t width, uint32_t height, 
                    uint32_t borderWidth, uint32_t borderRadius, uint32_t borderColor)

```

### Sources
Here are the sources of code that the `/vendor` directory contains, these files are simply copied from the source without modification
- [ Sean Barrett , "nothings/stb"](https://github.com/nothings/stb)