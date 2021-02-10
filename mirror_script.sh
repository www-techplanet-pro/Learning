#!/bin/bash
mkdir mirror
cd mirror
rm -rf www.chiark.greenend.org.uk/ 
wget -mkEpnp https://www.chiark.greenend.org.uk/~sgtatham/bugs-ru.html
