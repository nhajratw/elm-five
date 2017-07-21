module ElmFive exposing (five, law, upHigh, downLow, roman, morseCode, negative, loud, smooth, mdFive, golden)


five : Int
five =
    5


negative : Int
negative =
    -five


pointFive : Float
pointFive =
    toFloat five / 10


golden : Float
golden =
    toFloat five ^ pointFive * pointFive + pointFive


law : String
law =
    "The Law of Fives states simply that: All things happen in fives, or are divisible by or are multiples of five, or are somehow directly or indirectly appropriate to 5. The Law of Fives is never wrong."


upHigh : Char
upHigh =
    '⁵'


downLow : Char
downLow =
    '₅'


tooSlow : String
tooSlow =
    "TODO"


roman : Char
roman =
    'V'


smooth : Char
smooth =
    'S'


morseCode : String
morseCode =
    "....."


loud : Maybe String -> String
loud style =
    case style of
        Just "piglatin" ->
            loud Nothing |> pigLatin

        _ ->
            "FIVE"


pigLatin : String -> String
pigLatin original =
    String.concat
        [ String.dropLeft 1 original
        , String.left 1 original
        , "AY"
        ]


mdFive : String
mdFive =
    "30056e1cab7a61d256fc8edd970d14f5"
