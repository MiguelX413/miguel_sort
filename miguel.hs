
update::[a] -> Int -> a -> [a]
update xs i j= first ++ [j] ++ second
               where first = take (i) xs 
                     second = drop (i+1) xs

set_true:: [Int] -> [Bool] -> [Bool]
set_true [x] y = update y x True
set_true (x:xs) y = set_true xs updated
                    where updated = update y x True

miguel_sort::[Int] -> [Int] 
miguel_sort xs = map (\x -> x-1) .fst . unzip . filter (\(x, y) -> y == True). zip [1..(length lol)] $ lol
                 where lol = set_true xs $ take 100 $ repeat False