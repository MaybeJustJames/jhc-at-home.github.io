module Main exposing (main)

import Css exposing (hex, pct, px, width)
import Html.Styled exposing (div, h1, img, text)
import Html.Styled.Attributes exposing (css, src)
import Slides exposing (Model, Msg, Slide, app, html, md, mdFragments, slidesDefaultOptions)
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
        , slide7
        , slide8
        , slide9
        , slide10
        , slide11
        , slide12
        , slide13
        , questions
        , note
        ]


slide1 : Slide
slide1 =
    md
        """
         # Unipept Visualisation Toolkit

         ## An update with Typescript and D3js v5

         Project Contact: Bart Mesuere
         """


slide2 : Slide
slide2 =
    md
        """
         # Requirements:

         * Rewrite / port plain javascript to `Typescript`.
         * Depend on newest version (v5) of `D3.js` for visualisations and remove `jQuery`.
         * Add extensive testing and documentation.
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


slide7 : Slide
slide7 =
    md
        """
         # Set up

         * Project is well defined so can be described in Github tickets.
         * Progress on tickets can be tracked in a Github project (https://github.com/unipept/unipept-visualizations/projects/1).
         * Standard tools for build (npm or yarn), bundling (webpack), test (jest) selected by Bart.

         ![project](./images/project.png "Project")
         """


slide8 : Slide
slide8 =
    md
        """
         # Infrastructure

         * A JQuery plugin was used to attach visualisation to a DOM node. This is removed in favour of an opaque option CSS selector.
         * A generic settings class is used from which visualisation specific settings are inherited.
         * An Optional / Maybe type is implemented to make dealing with JS weirdness easier.
         * Compiler is set up to be as strict as possible to catch errors earlier.
         """


slide9 : Slide
slide9 =
    mdFragments
        [ "# Aside: Utility of Optional"
        , """

          ```
          function foo(arg: number | undefined): number {
            if (arg === undefined) {
              return 0;
            }

            return computation_on_arg;
          }
          ```
           """
        , """
         ```
         function foo(arg: Optional<number>): number {
           return arg.map(computation_on_arg).withDefault(0);
         }
         ```
         """
        ]


slide10 : Slide
slide10 =
    md
        """
         # Sunburst porting is complete (under review)

         [demo](./sunburst-flare-v2.html)
         """


slide11 : Slide
slide11 =
    md
        """
         * Breadcrumbs and tooltips are extracted to reusable "components".

         * These components have predictable (e.g. ${prefix}-crumb, where ${prefix} is either
         set in the options or defaults to "unipept-${visualisation-name}") class names so
         the style can easily be customised by the user.

         * Typechecks with Typescripts strictest settings and passes with
         most reasonable linter settings.

         * Most functions are documented for their meaning/intention, input arguments, and expected outputs. Missing enforced invariants... but expect Typescript compiler to help.
         """


slide12 : Slide
slide12 =
    md
        """
         # Heatmap

         * Currently in progress.

         * Is in seperate git tree.

         * In order to keep history, merge remote branch with `--allow-unrelated-histories`.

         * As with all other visualisations it defined its own tooltip so majority of
         remaining work is harmonising with the existing infrastructure.
         """


slide13 : Slide
slide13 =
    md
        """
         # Still to be done...

         * Treemap, Treeview (started by Bart), and phylogenetic tree visualisations.

         * Higher level documentation.

         * Search and highlighting of data nodes.

         * Example website (merely tying in already existing examples).

         * Creation of data manipulation tools.
         """


questions : Slide
questions =
    md
        """
         # Questions?
         """


note : Slide
note =
    md
        """
         This slideshow was created with Elm (using the "Slides" library).
         It has embedded markdown and also HTML and CSS.
         The transitions and formatting are configurable.

         Source can be found on [my github](https://github.com/jhc-at-home/jhc-at-home.github.io).
         """
