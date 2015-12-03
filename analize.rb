t = ARGV[0]
file = open( "./result/time=#{t}.txt" , "r" )	# 結果が出力されたファイル
csv = open("graph.csv", "a" )
n = 0	# 試行回数を格納する変数
lim = 0	# 枠内にいた回数を格納する変数

while( l = file.gets )
	n += 1
	l.gsub!("\n","")
	if( l == "1" )
		lim += 1
	end
end

p "time = #{t}"
p "試行回数 = #{n}"
p "枠内にいた回数 = #{lim}"
p "確率 = #{lim.to_f / n.to_f}"

csv.puts( "#{t},#{lim.to_f/n.to_f}" )
