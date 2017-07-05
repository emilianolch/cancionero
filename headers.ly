\version "2.18.2"

\layout {
  \context {
    \ChordNames
    \override ChordName.font-size = #7
    %\override ChordName.font-name = "FreeSans"
    \override ChordName.font-series = #'bold
  }
  \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      defaultBarType = "."
  }
  \set chordChanges = ##t
  \set noChordSymbol = ""
  \set minorChordModifier = \markup { "-" }
  
  
  %\set Score.markFormatter = #format-mark-box-alphabet
  
}



\paper {
  page-breaking = #ly:minimal-breaking
  markup-system-spacing = #'((basic-distance . 30)
                             (minimum-distance . 20))
  system-system-spacing = #'((minimum-distance . 15)
                             (basic-distance . 20))
  top-margin = 10
  bottom-margin = 15
  left-margin = 15
  right-margin = 15
}

\header {
  tagline = ##f
}

intro = \markup { \box INTRO }
outro = \markup { \box OUTRO }
parteA = \markup { \box A }
parteB = \markup { \box B }
parteC = \markup { \box C }

ocultar-clave = \override Staff.Clef #'stencil = ##f 

fin = \bar "|."
dbar = \bar "||"

coda = \mark \markup { \abs-fontsize #20 \musicglyph #"scripts.coda" }

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
