#
time echo "scale=2000; 4*a(1)" | bc -l -q | tr '\n' ' ' | sed 's/\\ //g' | awk '{print substr($0,1,10) "......" substr($0,length($0)-10,10)}'
