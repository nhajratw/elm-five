module ElmFiveTests exposing (..)

import Test exposing (Test, describe, test)
import Expect as Expect
import ElmFive exposing (..)


suite : Test
suite =
    describe "The ElmFive Module"
        [ describe "Basics"
            [ test "gives five" <|
                \_ -> 5 |> Expect.equal five
            ]
        , describe "The Law of Fives"
            [ test "statement" <|
                \_ -> "The Law of Fives states simply that: All things happen in fives, or are divisible by or are multiples of five, or are somehow directly or indirectly appropriate to 5. The Law of Fives is never wrong." |> Expect.equal law
            , test "addition" <|
                \_ -> 10 |> Expect.equal (five + five)
            , test "multiplication" <|
                \_ -> 25 |> Expect.equal (five * five)
            , test "division" <|
                \_ -> 1 |> Expect.equal (five // five)
            ]
        , describe "Alternative Forms of Five"
            [ test "up high" <|
                \_ -> '⁵' |> Expect.equal upHigh
            , test "down low" <|
                \_ -> '₅' |> Expect.equal downLow
            , test "roman" <|
                \_ -> 'V' |> Expect.equal roman
            , test "morse code" <|
                \_ -> "....." |> Expect.equal morseCode
            , test "negative" <|
                \_ -> -5 |> Expect.equal negative
            , test "loud" <|
                \_ -> "FIVE" |> Expect.equal (loud Nothing)
            , test "loud in pig latin" <|
                \_ -> "IVEFAY" |> Expect.equal (loud (Just "piglatin"))
            , test "smooth" <|
                \_ -> 'S' |> Expect.equal smooth
            ]
        , describe "Cryptography"
            [ test "md5 hash" <|
                \_ ->
                    "30056e1cab7a61d256fc8edd970d14f5" |> Expect.equal mdFive
            , test "golden rule or Phive" <|
                \_ -> 1.618033988749895 |> Expect.equal golden
            ]
        ]
