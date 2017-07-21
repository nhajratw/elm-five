module ElmFiveTests exposing (..)

import Test exposing (Test, describe, test)
import Expect as Expect
import ElmFive as ElmFive


suite : Test
suite =
    describe "The ElmFive Module"
        [ describe "Basics"
            [ test "gives five" <|
                \_ ->
                    Expect.equal ElmFive.five 5
            ]
        , describe "The Law of Fives"
            [ test "statement" <|
                \_ ->
                    Expect.equal ElmFive.law "The Law of Fives states simply that: All things happen in fives, or are divisible by or are multiples of five, or are somehow directly or indirectly appropriate to 5. The Law of Fives is never wrong."
            ]
        ]
