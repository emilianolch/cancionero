\version "2.18.2"

\layout {
  \context {
    \ChordNames
    \override ChordName.font-size = #6
    %\override ChordName.font-name = "FreeSans"
    \override ChordName.font-series = #'bold
  }
  \context {
      \Score
      %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      defaultBarType = "."
  }
  \set chordChanges = ##t
  \set noChordSymbol = ""
  \set minorChordModifier = \markup { "-" }
  \set majorSevenSymbol = \markup { 
    \override #'(thickness . 0.25)
    \override #'(baseline-skip . 2)    
    \triangle ##f
  }
  
  %\set Score.markFormatter = #format-mark-box-alphabet
  
}

\paper {
  page-breaking = #ly:minimal-breaking
  markup-system-spacing = #'((basic-distance . 30)
                             (minimum-distance . 20))
  system-system-spacing = #'((minimum-distance . 15)
                             (basic-distance . 20))
  score-system-spacing = #'((basic-distance . 28)
                            (minimum-distance . 22))
  top-margin = 10
  bottom-margin = 15
  left-margin = 15
  right-margin = 15
  
  indent = 0
  ragged-right = ##f 	% los pentagramas ocupan todo el ancho de la hoja
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
%ocultar-clave = \override Staff.Clef.break-visibility = #all-invisible

fin = \bar "|."
dbar = \bar "||"

show-chord = \once \set chordChanges = ##f

coda = { 
  \ocultar-clave
  \override Staff.TimeSignature #'stencil = ##f
  \mark \markup { \abs-fontsize #18 \musicglyph #"scripts.coda" }
}


coda-markup = \markup { 
  \hspace #4
  \abs-fontsize #18 
  \musicglyph #"scripts.coda" 
}

segno-markup = \markup {
  %\hspace #4
  %\abs-fontsize #18
  \musicglyph #"scripts.segno"
}

break-tag = \markup { \italic \large \text "break" }

break-in = {
  \ottava #1
  \set Staff.ottavation = #"break"
}
  
break-out = \ottava #0


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
     