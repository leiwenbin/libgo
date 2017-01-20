#!/bin/sh

#-lboost_context -lboost_thread

echo "------------- libgo ---------------"
/opt/rh/devtoolset-2/root/usr/bin/g++ libgo_test.cpp -I/mnt/hgfs/Code/c++/libgo++ -std=c++11 -O3 -Wall -o libgo_test -L/mnt/hgfs/Code/c++/libgo++/test/golang -llibgo -pthread && export LD_LIBRARY_PATH=/mnt/hgfs/Code/c++/libgo++/test/golang && ./libgo_test
echo "-----------------------------------"

echo "------------- golang --------------"
go test golang_test.go -test.bench=".*"
echo "-----------------------------------"
