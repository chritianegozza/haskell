-- c- ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB", "AgBB"]
genListC :: [String]
genListC = ["A" ++ [c] ++ "BB" | c <- ['a'..'g']]
