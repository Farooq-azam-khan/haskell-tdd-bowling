module BowlingTest where 

import Bowling

import Test.Hspec
import Text.Printf (printf) 


test_game :: String -> Int -> [Int] -> Spec
test_game game_type expected_score game = 
    it (printf game_type) $ get_game_score game `shouldBe` expected_score

main :: IO ()
main = hspec $ do
  describe "Prelude.head" $ do
    test_game "Gutter Balls" 0 [0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0]
    test_game "Knock down 1 pin" 1 [1,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0]
    test_game "Knock down 3 pins and then 3 pins" 6 [3,3, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0]
    test_game "1 Spare" 10 [5,5, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0]
    test_game "1 Spare followed by 3" 16 [5,5, 3,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0]
    test_game "All Spares" 150 [5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5,5, 5]
    test_game "1 Strike followed by 3" 16 [10, 3,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0]
    test_game "All strikes" 300 [10,10,10,10,10,10,10,10,10,10,10, 10]
    
    
    