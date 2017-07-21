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
        ]
