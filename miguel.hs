update :: [a] -> Int -> a -> [a]
update xs i j = first ++ [j] ++ second
               where first = take i xs
                     second = drop (i + 1) xs

setTrue :: [Bool] -> [Int] -> [Bool]
setTrue ys [x] = update ys x True
setTrue ys (x:xs) = setTrue updated xs
                   where updated = update ys x True

miguelSort :: [Int] -> [Int]
miguelSort = map (\(x,_) -> x) . filter (\(_,y) -> y) . zip [0..4294967296] . setTrue (take 4294967296 $ repeat False) 
