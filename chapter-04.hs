-- Syntax in Functions chapter

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

main = do
    print ""