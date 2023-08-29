#include <iostream>
#include <forward_list>
#include <string>
#include <cstdlib>

int main()
{
    std::forward_list<std::string> l_test = {"hello", "world"};
    for (const auto& str : l_test)
    {
        std::cout<<str<<" ";
    }
    std::cout<<std::endl;
    exit(0);
}