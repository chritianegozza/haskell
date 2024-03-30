-- h- ['@','A','C','D','E','G','J','L']
genListH :: String
genListH = filter (`notElem` "BFHIKMNO") ['@'..'L']
