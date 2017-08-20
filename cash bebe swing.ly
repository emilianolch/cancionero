\include "headers.ly"


cifrado =  \chords {
}

melo = \relative c' {
  \partial 8 { d''8 }
  \ocultar-clave
  
  d c fis, g a fis c d | b2. r8 c'8 | c g e f g e b c | a g' e fis2 b8 |
  \break
  b g f d b gis f gis | g8 g4 g2 g8 | gis c d dis g b bes a | gis e4 e2  e,8 |
  \break
  gis a c e gis b d b | c fis,4 fis4. \tuplet 3/2 { b8 bes a } |
  gis f d e c gis b gis | <e e'> <e e'>4 <e e'>2 c''8 |
  \break
  c g e f g e b c | a g' e fis2  b8 | 
  b g f d b gis f gis | g8 g4 g2  g8 |
  \break
  gis c d dis g b bes a | gis  <e e,>4 <e e,>4.  \tuplet 3/2 { b'8 bes a } |
  gis f d e c gis  b gis | <e e'> <e e'>4 <e e'>4. \tuplet 3/2 { b''8 bes a } |
  \break
  gis f d e c gis  b gis | <e e'> <e e'>4 <e e'>4. \tuplet 3/2 { b''8 bes a } |
  gis f d e c gis  b gis | <e e'> <e e'>4 <e e'>4.~ <e e'>4 |
  \fin  
}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Cash Bebe Swing" }
    subtitle = "(Swing para Cayetano Indio)"
    composer = "Lucho Splif"
    poet = "Swing"
  }
  
  \score {
    <<
      \cifrado
      \melo
    >>
  }
}