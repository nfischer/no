#include <stdio.h>
#include <string.h>
#include <omp.h>

int main(int argc, char *argv[])
{
    char text[50];
    int n_threads;

    if (argc == 1)
        strcpy(text, "n");
    else
        strcpy(text, argv[1]);

    n_threads = 64; // let's make things interesting
    omp_set_num_threads(n_threads);

    #pragma omp parallel
    for (;;) // infinite loop
    {
        printf("%s\n", text);
    }
    return 0;
}
