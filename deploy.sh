node=`uname -n`

./bootstrap.sh --prefix=$HOME/3rd/${node}/boost

./b2 cxxflags="-std=c++11"

./b2 install
