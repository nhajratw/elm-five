module ElmFiveTests exposing (..)

import Test exposing (Test, describe, test)
import Expect as Expect
import ElmFive as ElmFive


suite : Test
suite =
    describe "elm five"
        [ test "gives five" <|
            \_ ->
                Expect.equal ElmFive.five 5
        , test "has a law" <|
            \_ ->
                Expect.equal ElmFive.law "The Law of Fives states simply that: All things happen in fives, or are divisible by or are multiples of five, or are somehow directly or indirectly appropriate to 5. The Law of Fives is never wrong."
        ]
