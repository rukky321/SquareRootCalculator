#>square_root_calculator:calculate
#
#	@input score $input SquareRootCalculator 
#		The value you want to find square root of (up to 5 digits) / 平方根を求める値(最大5桁の数字)
#
# @output score $answer SquareRootCalculator
#		The Value obtained by multiplying square root of the input value by 100 / 入力値の平方根を100倍した値
#
# @public

# initialize scores / スコアの初期化を行う。
scoreboard players set $2 SquareRootCalculator 2
scoreboard players set $10000 SquareRootCalculator 10000
scoreboard players operation $input SquareRootCalculator *= $10000 SquareRootCalculator
scoreboard players set $count SquareRootCalculator 16
scoreboard players set $left SquareRootCalculator 0
scoreboard players set $right SquareRootCalculator 31623

# find square root by bisection method / 2分法を用いて平方根を求める。
function square_root_calculator:loop

scoreboard players operation $answer SquareRootCalculator = $average_ SquareRootCalculator
scoreboard players operation $input SquareRootCalculator /= $10000 SquareRootCalculator

# reset scores / スコアをリセットする。
scoreboard players reset $count SquareRootCalculator
scoreboard players reset $left SquareRootCalculator
scoreboard players reset $right SquareRootCalculator
scoreboard players reset $average SquareRootCalculator
scoreboard players reset $average_ SquareRootCalculator
scoreboard players reset $2 SquareRootCalculator
scoreboard players reset $10000 SquareRootCalculator
