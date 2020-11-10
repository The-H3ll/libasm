#include <stdio.h>
#include <string.h>
#include <stdlib.h>


extern  int ft_strlen(const char *s);
extern  int ft_strcmp(const char *s1, const char *s2);
extern  char * ft_strcpy(char *dst, const char  *src);
int     main()
{

  printf("-------Ft_Strlen-------------\n\n");

    const char *s = "labhairi mouaadkjfjekje v ekjfekrjgekrger erkgkrejgkrjger gerkgjerkgner ";
    const char *s1 = "";
    printf("ft_strlen == > %d \n", ft_strlen(s));
    printf("strlen == > %lu \n", strlen(s));
    
    printf("ft_strlen == > %d \n", ft_strlen(s1));
    printf("strlen == > %lu \n", strlen(s1));
  
  printf("--------Ft_Strcmp-------------\n\n");
    const char *stc= "labhairimouaad";
    const char *stc1= "";
    const char *stc2= "labksjdkjkjskjdksjdksj";

  printf("ft_strcmp === > %d\n", ft_strcmp(stc, stc1));
  printf("strcmp === > %d\n", strcmp(stc, stc1));

  printf("ft_strcmp === > %d\n", ft_strcmp(stc, stc));
  printf("strcmp === > %d\n", strcmp(stc, stc));

  printf("ft_strcmp === > %d\n", ft_strcmp(stc, stc2));
  printf("strcmp === > %d\n", strcmp(stc, stc2));

  printf("ft_strcmp === > %d\n", ft_strcmp(stc1, stc2));
  printf("strcmp === > %d\n", strcmp(stc1, stc2));

  printf("--------Ft_strcpy------------\n\n");
    const char *src = "labhairi mouaad";
    char        dst[20];

    printf("ft_strcmp == > %s\n", ft_strcpy(dst, src));
    printf("strcmp == > %s\n", strcpy(dst, src));

    printf("ft_strcmp ==> %s\n", ft_strcpy(dst, ""));
    printf("strcmp ==> %s\n", strcpy(dst, ""));
}