#include "libfb.h"

int main()
{
    use_fb("fb0");

    draw_rect(400, 200, 100, 100, 1, 0xf2ff00);

    close_fb();
    return 0;
}