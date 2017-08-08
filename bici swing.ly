\include "headers.ly"

\header {
  title = \markup { \abs-fontsize #32 "Bici Swing" }
  composer = "Lucho Splif"
  poet = "Swing"
}

cifrado =  \chords {
  \partial 8 { r8 }
  d1:m | g:m6  | c2:7 cis:dim | 
}

melo = \relative c'' {
  \key d \minor
  \partial 8 { c8 }
  
  \mark \parteA
  des bes' a g f g d' des | d f des e  d a \tuplet 3/2 { gis a d } |
  e f4  des8 e d bes4 | g8 e  cis4  d4. a'8 |
  gis' a g d c r a a | 
}

<<
  \cifrado
  \melo
>>