-- Syntax in Functions chapter
-- Pattern matching consists of specifying patterns to which some data should conform and then checking to see if it does and deconstructing the data according to those patterns.
-- pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "You is lucky people"
lucky _ = "Sorry, you're out of lucky"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe x = "Not between 1 and 5"
-- sayMe _ = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1) 

-- Implementing first function it own code
-- _ means the same thing as it does in list comprehension. It mean that we really don't care
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

-- [a+b| (a,b) <- xs]
xs = [(1,2), (2,1), (1,1)]

head' :: [a] -> a
head' (x:_) = x

length' :: (Num a) => [a] -> a
length' [] = 0
length' (x:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"  
grade :: Int -> [Char]
grade score
    | score > 50 = "You're Pass"
    | otherwise = "Given F"

main = do
    print ""