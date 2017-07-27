module ElmFive exposing (five, law, upHigh, downLow, roman, morseCode, negative, loud, smooth, mdFive, golden, binary, octal, hex, base, translate, isFive, filter, map, reduce, factorial, bucks, rotate, oclock, oclocksomewhere, guys)

import Dict exposing (Dict, values)
import Char


five : Int
five =
    5


negative : Int
negative =
    -five


factorial : Int
factorial =
    factorial_ five


factorial_ : Int -> Int
factorial_ value =
    case value of
        1 ->
            1

        _ ->
            value - 1 |> factorial_ |> (*) value


pointFive : Float
pointFive =
    toFloat five / 10


golden : Float
golden =
    toFloat five ^ pointFive * pointFive + pointFive


binary : String
binary =
    base_ 2 five


octal : String
octal =
    base_ 8 five


hex : String
hex =
    base_ 16 five


base : Int -> String
base radix =
    base_ radix five


base_ : Int -> Int -> String
base_ radix value =
    if (value < radix) then
        toString value
    else
        (base_ radix (value // radix)) ++ toString (value % radix)


rotate : String -> String
rotate value =
    String.map (\c -> Char.toCode c |> (+) five |> Char.fromCode) value


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


oclock : Char
oclock =
    '🕔'


oclocksomewhere : Char
oclocksomewhere =
    '🍺'


guys : Char
guys =
    '🍔'


bucks : String
bucks =
    "$" ++ toString five ++ ".00"


morseCode : String
morseCode =
    String.repeat five "."


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


translations : Dict String String
translations =
    Dict.fromList
        [ ( "arabic", "خمسة" )
        , ( "azerbaijani", "beş" )
        , ( "basque", "bost" )
        , ( "belarusian", "пяць" )
        , ( "bosnian", "pet" )
        , ( "bulgarian", "пет" )
        , ( "catalan", "cinc" )
        , ( "chinese", "五" )
        , ( "chinese-pinyin", "wǔ" )
        , ( "chinese-financial", "伍" )
        , ( "choctaw", "tahlapi" )
        , ( "croatian", "pet" )
        , ( "czech", "pět" )
        , ( "dothraki", "mek" )
        , ( "dovah", "hen" )
        , ( "dutch", "vijf" )
        , ( "elvish", "lempë" )
        , ( "elvish-quenya", "lempë" )
        , ( "elvish-sindarin", "leben" )
        , ( "english", "five" )
        , ( "esperanto", "kvin" )
        , ( "estonian", "viis" )
        , ( "finnish", "viisi" )
        , ( "french", "cinq" )
        , ( "german", "fünf" )
        , ( "greek", "πέντε" )
        , ( "hebrew", "חמש" )
        , ( "hindi", "पांच" )
        , ( "hungarian", "öt" )
        , ( "icelandic", "fimm" )
        , ( "indonesian", "lima" )
        , ( "irish", "cúig" )
        , ( "italian", "cinque" )
        , ( "japanese", "五" )
        , ( "kannada", "ಐದು" )
        , ( "klingon", "vagh" )
        , ( "korean", "오" )
        , ( "latin", "quinque" )
        , ( "latvian", "pieci" )
        , ( "lithuanian", "penki" )
        , ( "maltese", "ħamsa" )
        , ( "mongolian", "таван" )
        , ( "nepali", "पाँच" )
        , ( "norwegian", "fem" )
        , ( "persian", "پنج" )
        , ( "piglatin", "ivefay" )
        , ( "polish", "pięć" )
        , ( "portuguese", "cinco" )
        , ( "punjabi", "ਪੰਜ" )
        , ( "romanian", "cinci" )
        , ( "russian", "пять" )
        , ( "serbian", "pet" )
        , ( "sinhala", "පහ" )
        , ( "slovakian", "päť" )
        , ( "slovenian", "pet" )
        , ( "spanish", "cinco" )
        , ( "swedish", "fem" )
        , ( "tamil", "ஐந்து" )
        , ( "telugu", "ఐదు" )
        , ( "thai", "ห้า" )
        , ( "turkish", "beş" )
        , ( "ukrainian", "п’ять" )
        , ( "welsh", "pump" )
        ]


translate : String -> String
translate language =
    Dict.get language translations
        |> Maybe.withDefault "five"


isFive : Int -> Bool
isFive value =
    value == five


filter : List Int -> List Int
filter values =
    List.filter (\value -> isFive value) values


map : List Int -> List Int
map values =
    List.map (\value -> five) values


reduce : List Int -> Int
reduce values =
    five
