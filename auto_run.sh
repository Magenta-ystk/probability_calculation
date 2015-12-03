declare -i time
declare -i n	# 試行回数n
declare -i i	# カウンタ
time=3
n=5000
i=0

while [ $time -ne 10 ]	# timeの上限値100
do
	while [ $i -ne $n ]
	do
		ruby main.rb $time
		i=$i+1
	done
	ruby analize.rb $time
	time=$time+1
	i=0
done
