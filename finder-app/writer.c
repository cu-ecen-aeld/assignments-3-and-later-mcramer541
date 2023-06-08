#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
    openlog("writer", 0, LOG_USER);

    if (argc != 3)
    {
        syslog(LOG_ERR, "Invalid number of arguments: %d!", argc-1);
        return 1;
    }

    const char* filename = argv[1];
    const char* writestr = argv[2];

    FILE* file = fopen(filename, "w+"); 
    if (file == NULL)
    {
        syslog(LOG_ERR, "Could not create %s, errno: %d, %s", filename, errno, strerror(errno));
        return 1;
    }
    
    syslog(LOG_DEBUG, "Writing %s to %s", writestr, filename);
    fprintf(file, "%s", writestr);
    fclose(file);

    return 0;
}
