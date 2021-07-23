
confracPhi :: Int -> Double
confracPhi p
--  |    p  < 1 = error
  |    p == 1 = 1.5
  | otherwise = 1 + ( 1 / confracPhi (p-1) )

