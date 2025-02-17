/*
hello
Copyright (C) Stuart Forbes Poole (artiepoole) 2025

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <stdio.h>

int main() {
   unsigned char buf[40] = {0};
   size_t idx = 0;
   unsigned char* choice;
   printf("Please enter your name: "); 

   while (idx <40){
      unsigned char c;
      c = getc(stdin);
      if (c == '\n'){
         break;
      }
      buf[idx++] = c;
   }
   printf("Hello %s!\n", buf);
   return 0;
}