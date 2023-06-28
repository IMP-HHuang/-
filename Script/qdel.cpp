#include<iostream>
#include<cstdlib>
#include<string>
#include<stdio.h>


int main(int argc, char *argv[])
{
	int NB;
	int NE;
	std::cout << "Input begin and end" << std::endl;
	std::cin >> NB >> NE;
	for(int i=NB; i<=NE; i++)
	{
		char tmp[256];
		sprintf(tmp, "qdel %d.IMP-Cluster", i); 
		system(tmp);
		sprintf(tmp, "%d.IMP-Cluster", i); 
		std::cout << "Stop " << tmp << std::endl;
	}
	return 0;
}
