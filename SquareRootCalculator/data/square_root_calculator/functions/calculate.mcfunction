#>square_root_calculator:calculate
#
#	@input score $input SquareRootCalculator 2乗根を取りたい数値(最大100000)
#
# @output score $answer SquareRootCalculator 2乗根の値の100倍
#
# @public

#パラメータの初期設定
scoreboard players set $2 SquareRootCalculator 2
scoreboard players set $10000 SquareRootCalculator 10000
scoreboard players operation $input SquareRootCalculator *= $10000 SquareRootCalculator
scoreboard players set $count SquareRootCalculator 16
scoreboard players set $left SquareRootCalculator 0
scoreboard players set $right SquareRootCalculator 31623

#2分法により、反復計算を行う。
function root_calculator:loop

scoreboard players operation $answer SquareRootCalculator = $average_ SquareRootCalculator
scoreboard players operation $input SquareRootCalculator /= $10000 SquareRootCalculator

#パラメータのリセット
scoreboard players reset $count SquareRootCalculator
scoreboard players reset $left SquareRootCalculator
scoreboard players reset $right SquareRootCalculator
scoreboard players reset $average SquareRootCalculator
scoreboard players reset $average_ SquareRootCalculator
scoreboard players reset $2 SquareRootCalculator
scoreboard players reset $10000 SquareRootCalculator
