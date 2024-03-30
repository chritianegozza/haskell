-- a- [1,11,121,1331,14641,161051,1771561]
genListA :: [Int]
genListA = take 7 $ iterate (* 11) 1
