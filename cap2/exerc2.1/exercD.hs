-- d- [5,8,11,17,20,26,29,32,38,41]
genListD :: [Int]
genListD = [x | x <- [5,8..41], x `mod` 3 == 2]
