
# 原子クラス
class Atom

	# 初期設定 x軸とy軸の値を0
	# 原子の初期値(x,y)=(0,0)
	def initialize
		@x = 0
		@y = 0
	end

	# 原子を1回動かす
	def step
		step = rand(4)
		case step		# 4方向どこに動かすか取得
		when 0 then
			@x += 1		# x軸方向に+1
		when 1 then
			@x -= 1		# x軸方向に-1
		when 2 then
			@y += 1		# y軸方向に+1
		when 3 then
			@y -= 1		# y軸方向に-1
		end
	end

	# 原子が枠内に存在するか判定
	# 原子が枠内に存在する : -2 <= x <= 2 && -2 <= y <= 2
	def judge
		if(((-2 <= @x) && (@x <= 2)) && ((@y <= 2) && (@y >= -2)))
			return(1)
		else
			return(0)
		end
	end

end

# main

t = ARGV[0].to_i		# 原子の移動回数t
i = 0					# カウンタ

atom = Atom.new
# 原子をt回移動
while(i < t)
	atom.step		# 原子を移動
	i += 1
end
p atom.judge	# 原子が枠内にあるか判定
