module ElmFiveTests exposing (..)

import Test exposing (Test, describe, test)
import Expect as Expect
import ElmFive exposing (..)


suite : Test
suite =
    describe "The ElmFive Module"
        [ describe "Basics"
            [ test "gives five" <|
                \_ -> Expect.equal five 5
            ]
        , describe "The Law of Fives"
            [ test "statement" <|
                \_ -> Expect.equal law "The Law of Fives states simply that: All things happen in fives, or are divisible by or are multiples of five, or are somehow directly or indirectly appropriate to 5. The Law of Fives is never wrong."
            , test "addition" <|
                \_ -> Expect.equal (five + five) 10
            , test "multiplication" <|
                \_ -> Expect.equal (five * five) 25
            , test "division" <|
                \_ -> Expect.equal (five // five) 1
            ]
        , describe "Alternative Forms of Five"
            [ test "up high" <|
                \_ -> Expect.equal upHigh "⁵"
            , test "down low" <|
                \_ -> Expect.equal downLow "₅"
            , test "roman" <|
                \_ -> Expect.equal roman "V"
            , test "morse code" <|
                \_ -> Expect.equal morseCode "....."
            , test "negative" <|
                \_ -> Expect.equal negative -5
            , test "loud" <|
                \_ -> Expect.equal (loud Nothing) "FIVE"
            , test "loud in pig latin" <|
                \_ -> Expect.equal (loud (Just "piglatin")) "IVEFAY"
            , test "smooth" <|
                \_ -> Expect.equal smooth "S"
            ]
        ]
