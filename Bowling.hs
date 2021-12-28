module Bowling where  
import Debug.Trace 

get_game_score :: [Int] -> Int
get_game_score game_state = get_game_scoreH 0 game_state 0
isSpare x y = x+y == 10 
isStrike x = x == 10 

get_game_scoreH :: Int -> [Int] -> Int -> Int 
get_game_scoreH 9 xs score = score + sum xs
get_game_scoreH frames (x:y:xs) score
    | isSpare x y =  
        get_game_scoreH (frames+1) xs (score + x+y + head xs)
    | isStrike x = get_game_scoreH (frames+1) (y:xs) (score + x + y + head xs)
    | otherwise = get_game_scoreH (frames+1) xs (score+x+y)

