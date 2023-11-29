update :: [a] -> Int -> a -> [a]
update xs i j = first ++ [j] ++ second
               where first = take i xs
                     second = drop (i + 1) xs

setTrue :: [Int] -> [Bool] -> [Bool]
setTrue [x] y = update y x True
setTrue (x:xs) y = setTrue xs updated
                   where updated = update y x True

miguelSort :: [Int] -> [Int]
miguelSort xs = map (\(x,y) -> x) $ filter (\(x, y) -> y) $ zip [0..length lol] lol
                 where lol = setTrue xs $ take 4294967296 $ repeat False
