\version "2.18.2"

\layout {
  \context {
    \ChordNames
    \override ChordName.font-size = #5
    \override ChordName.font-name = "Nimbus Roman No9 L"
  }
}
\paper {
  system-system-spacing = #'((basic-distance . 0.1) (padding . 7))
  top-margin = 20
  bottom-margin = 15
  left-margin = 10
  right-margin = 10
}

\header {
  tagline = ##f
}

intro = \markup { \box INTRO }
outro = \markup { \box OUTRO }
parteA = \markup { \box A }
parteB = \markup { \box B }
parteC = \markup { \box C }

fin = \bar "|."
dbar = \bar "||"


% Function to print a specified number of slashes
comp = #(define-music-function (parser location count) ( integer?)
          #{
            \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
            \override Rest #'thickness = #0.48
            \override Rest #'slope = #1.7
            \repeat unfold $count { r4 }
            \revert Rest #'stencil
          #}
          )
