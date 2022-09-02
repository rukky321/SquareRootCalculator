#>square_root_calculator:loop
#
# @within square_root_calculator:**

scoreboard players operation $average SquareRootCalculator = $left SquareRootCalculator
scoreboard players operation $average SquareRootCalculator += $right SquareRootCalculator
scoreboard players operation $average SquareRootCalculator /= $2 SquareRootCalculator
scoreboard players operation $average_ SquareRootCalculator = $average SquareRootCalculator
scoreboard players operation $average SquareRootCalculator *= $average SquareRootCalculator

execute if score $average SquareRootCalculator < $input SquareRootCalculator run scoreboard players operation $left SquareRootCalculator = $average_ SquareRootCalculator
execute if score $average SquareRootCalculator > $input SquareRootCalculator run scoreboard players operation $right SquareRootCalculator = $average_ SquareRootCalculator

scoreboard players remove $count SquareRootCalculator 1

execute if score $count SquareRootCalculator matches 1.. run function square_root_calculator:loop