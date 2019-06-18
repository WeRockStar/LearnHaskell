doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else x * 2

-- String are list, That is syntatic sugar, ['W', 'e', 'R', 'o', 'c', 'k', 'S', 't', 'a', 'r']
name = "WeRockStar"
lname = " and the "
space' = ' '
name' = ['W', 'e', 'R', 'o', 'c', 'k', 'S', 't', 'a', 'r']

-- concat [char]:[list]
compose = space':lname
-- list
lostNumbers = [4,8,15,16,23,42]
-- head lostNumbers, take the first element
-- tail lostNumbers, take at second element and the rest of element in list
-- init lostNumbers, take all elements except its last element
-- last [1,2,3,4,5], take the last element
-- length [1,2,3,4], return length of list as number
-- null [1,2,3], return Boolean, True is empty list, False is have an elements
-- take 2 [1,2,3], return it extracts that many elements from the begining of the list
-- drop 1 [1,2,3], drop number of elements
-- mininum [1,2,3]
-- maximum [1,2,3]
-- sum [1,2,3]
-- product [1,2,3]
-- cycle [1,2], return repeating list into infinite
-- repeat 5, return repeating number, In this case repeat 5 into inifinite
-- replicate 3 10, return 10, three time [10,10,10]

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- [1..10]
-- ['a'..'z']
-- [2,4..20]

-- take 2 (cycle [1,2]), take 2 elements from result of cycle function


-- List comprehension
-- [x*2 | x <- [1..10]], the result is [2,4,6,8,10,12,14,16,18,20]
-- [x*2 | x <- [1..20], x*2 >= 12], the result is [12,14,16,18,20,22,24,26,28,30,32,34,36,38,40]
-- [x | x <- [1..10], mod x 2 == 0], the result is [2,4,6,8,10]
-- or [x | x <- [1..10], x `mod` 2 == 0], the result is [2,4,6,8,10]
-- [x | x <- [1..10], x /= 10, x /= 5, x /= 1], the result is [2,3,4,6,7,8,9]
-- [x*y | x <- [2,5,10], y <- [8,10,11]], the result is [16,20,22,40,50,55,80,100,110]
-- [x*y | x <- [2,5,10], y <- [8,10,11], x /= 5, x*y > 50]
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]


nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
composeSentense = [noun ++ " " ++ adjective | noun <- nouns, adjective <- adjectives]
length' xs = sum[1 | _ <- xs]
removeNonUpdateCase st = [c | c <- st, c `elem` ['A'..'Z']]
findOdd xs = [x | x <- xs, odd x]
findEven xs = [x | x <- xs, even x]
zip' = zip [1,2,3,4,5] [1,2,3,4,5]
first' = fst (8,11)
second' = snd (8,11)


triangles = [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]
rightTriangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]