#include<stdio.h>
#include<string.h>
#include "../common/swap.h"

int main()
{
	char a[20] = "";
	char b[] = "My name is Varun";
	memcpy(a, b, strlen(b));
        int len = strlen(a) - 1;
	int i = 0;
	int j = len;
	while(i < j) {
		swap(&a[i], &a[j]);
		i++;
		j--;
	}
	printf("Reveresed string is %s\n", a);
	return 0;
}
