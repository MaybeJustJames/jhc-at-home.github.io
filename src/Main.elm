module Main exposing (main)

import Css exposing (height, hex, pct, px, width)
import Html.Styled exposing (div, h1, img, text)
import Html.Styled.Attributes exposing (css, src)
import Slides exposing (Model, Msg, Slide, app, html, md, slidesDefaultOptions)
import Slides.Styles exposing (elmMinimalist)


main : Program () Model Msg
main =
    Slides.app
        { slidesDefaultOptions
            | title = "Unipept Visualisation Toolkit"
            , style = elmMinimalist (hex "#fff") (hex "#ccc") (px 16) (hex "#000")
        }
        [ slide1
        , slide2
        , slide3
        , slide4
        , slide5
        , slide6
        ]


slide1 : Slide
slide1 =
    md
        """
         # Unipept Visualisation Toolkit

         ## An update with Typescript and D3js v5
         """


slide2 : Slide
slide2 =
    md
        """
         # Requirements:

         * Rewrite / port plain javascript to `Typescript`.
         * Depend on newest version (v5) of `D3.js` for visualisations and remove `jQuery`.
         * Add extensive testing and documentation and developer tools.
         * Add new features and visualisations (Heatmap, phylogenetic tree, search, highlighting, ...).
         * Create a project website with explorable examples.
         * Create tools for manipulating data into the correct format.
         """


slide3 : Slide
slide3 =
    md
        """
         # What exists now?
         """


slide4 : Slide
slide4 =
    md
        """
         # Treeview

         ![treeview](./images/treeview.png "Treeview")
         """


slide5 : Slide
slide5 =
    html <|
        div
            []
            [ h1 [] [ text "Treemap" ]
            , img
                [ src "./images/treemap.png"
                , css
                    [ width (pct 80) ]
                ]
                []
            ]


slide6 : Slide
slide6 =
    html <|
        div
            []
            [ h1 [] [ text "Sunburst" ]
            , img
                [ src "./images/sunburst.png"
                , css
                    [ width (pct 70) ]
                ]
                []
            ]
