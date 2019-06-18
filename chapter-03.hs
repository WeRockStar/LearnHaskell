-- meaning that it maps from a string to a string
-- takes one string as a parameter and returns another as a result.
removeNoneUppercase :: [Char] -> [Char]
removeNoneUppercase st = [c | c <- st, elem c ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
-- Result can be LT, GT, EQ
compare' a b = a `compare` b

love a = a

a :: Int 
a = 10