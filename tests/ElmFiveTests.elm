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
            , test "factorial" <|
                \_ -> 120 |> Expect.equal factorial
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
            , test "bucks" <|
                \_ -> "$5.00" |> Expect.equal bucks
            ]
        , describe "Cryptography"
            [ test "md5 hash" <|
                \_ ->
                    "30056e1cab7a61d256fc8edd970d14f5" |> Expect.equal mdFive
            , test "golden rule or Phive" <|
                \_ -> 1.618033988749895 |> Expect.equal golden
            ]
        , describe "Different Radices"
            [ test "binary" <|
                \_ -> "101" |> Expect.equal binary
            , test "octal" <|
                \_ -> "5" |> Expect.equal octal
            , test "hex" <|
                \_ -> "5" |> Expect.equal hex
            , test "base 3" <|
                \_ -> "12" |> Expect.equal (base 3)
            , test "base 4" <|
                \_ -> "11" |> Expect.equal (base 4)
            ]
        , describe "Multilingual Abilities"
            [ test "defaults to english" <|
                \_ -> "five" |> Expect.equal (translate "non-existent-language")
            , test "english" <|
                \_ -> "five" |> Expect.equal (translate "english")
            , test "arabic" <|
                \_ -> "خمسة" |> Expect.equal (translate "arabic")
            , test "serbian" <|
                \_ -> "pet" |> Expect.equal (translate "serbian")
            ]
        , describe "Assertions"
            [ test "is not five as a number" <|
                \_ -> isFive 10 |> Expect.equal False
            , test "is five as a number" <|
                \_ -> isFive 5 |> Expect.equal True
            ]
        , describe "Higher Order Functions"
            [ test "filter" <|
                \_ -> filter [ 5, 6, 5 ] |> Expect.equal [ 5, 5 ]
            , test "map" <|
                \_ -> map [ 1, 2, 3 ] |> Expect.equal [ 5, 5, 5 ]
            , test "reduce" <|
                \_ -> reduce [ 1, 2, 3 ] |> Expect.equal 5
            ]
        , describe "Rotation"
            [ test "rotate by five" <|
                \_ -> "kn{j3jqr" |> Expect.equal (rotate "five.elm")
            ]
        , describe "Unicode"
            [ test "o'clock" <|
                \_ -> '🕔' |> Expect.equal oclock
            , test "o'clock somewhere" <|
                \_ -> '🍺' |> Expect.equal oclocksomewhere
            , test "guys" <|
                \_ -> '🍔' |> Expect.equal guys
            ]
        ]
