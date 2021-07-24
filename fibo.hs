
-- computes phi to a specified precision.
confracPhi :: Int -> Double
confracPhi p
 -- | p  < 1    = error
    | p == 1    = 1.5
    | otherwise = 1 + ( 1 / confracPhi (p-1) )

-- computes the square root of a real number to a specified precision.
confracSqRoot :: Int -> Double -> Double 
confracSqRoot p x
 -- | p  < 1    = error
    | p == 1    = 1
    | otherwise = 1 + ( (x-1) / ( 1 + (confracSqRoot (p-1) x) ) ) --need to clean this up

-- implementation of the closed-form equation for fibonacci numbers. 
-- p should be at least greater than a high number for well-off precision; 
-- need to include cases that account for this.
-- This is also a preliminary result before rounding to the actual integer result.
fiboImplement_v0 :: Int -> Int -> Double
fiboImplement_v0 n p = ( phi_pow - (1/phi_pow) ) / (confracSqRoot p 5) 
                       where phi_pow = (confracPhi p)^n
                                           
 -- | n  < 1    = error
 -- | otherwise = {inline definition goes here}     
