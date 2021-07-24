
confracPhi :: Int -> Double
confracPhi p
--  | p  < 1    = error
    | p == 1    = 1.5
    | otherwise = 1 + ( 1 / confracPhi (p-1) )

confracSqRoot :: Int -> Double -> Double
confracSqRoot p x
--  | p  < 1    = error
    | p == 1    = 1
    | otherwise = 1 + ( (x-1) / ( 1 + (confracSqRoot (p-1) x) ) ) --need to clean this up somehow

    
