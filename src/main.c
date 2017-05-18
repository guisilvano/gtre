#include <stdio.h>

#include "player.c"

int main (int argc, char *argv[])
{

	Player player;

	player.score = 4;

	printf("%d", player.score);

	return 0;

}
