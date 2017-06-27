\version "2.18.2"

\layout {
  \context {
    \ChordNames
    \override ChordName.font-size = #5
    \override ChordName.font-name = "Nimbus Roman No9 L"
  }
  \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
  \set chordChanges = ##t
  \set noChordSymbol = ""
  %\set Score.markFormatter = #format-mark-box-alphabet
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

coda = \mark \markup { \musicglyph #"scripts.coda" }

break-tag = \markup { \italic \bold \large \text "break" }

break-in = \set Score.repeatCommands = 
  #(list(list 'volta break-tag))
  
break-out = \set Score.repeatCommands = #'((volta #f))


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
