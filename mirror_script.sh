#!/bin/bash
mkdir mirror
cd mirror
rm -rf www.chiark.greenend.org.uk/ 
wget -mkEpnp --reject-regex "\@" https://www.chiark.greenend.org.uk/~sgtatham/bugs-ru.html
