#include <stdbool.h>

typedef struct Status
{
	bool is_affected;

	char condition[16];

} Status;

typedef struct Player
{
	
	char name[16];

	int score;

	Status status[5];

	//S.P.E.C.I.A.L
	int strength;
	int perception;
	int endurance;
	int charisma;
	int intelligence;
	int agility;
	int luck;

} Player;
