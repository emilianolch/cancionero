\include "headers.ly"

cifrado =  \chords {
}

melo = \relative c' {
  \key e \minor
  \time 3/4
  
  \mark \parteA
  \tuplet 3/2 { b'8 c b } ais b e, fis |
  \ocultar-clave
  g b e g fis4 |
  e2. |
  r |
  \tuplet 3/2 { b8 c b } ais b e, fis |
  g b e g fis4 |
  a,2. |
  r2 \tuplet 3/2 { fis'8 g gis } |
  a g g fis fis e |
  e dis b ais ais ais |
  \repeat unfold 4 { c4 b a | }
  g8 b cis dis e fis |
  g e b e g e |
  fis dis b dis fis dis |
  r2. |
  
  \tuplet 3/2 { b8 c b } ais b e, fis |
  g b e g fis4 |
  e2. |
  r |
}


\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "El Rengo" }
    composer = "Gamal Darián"
    poet = "Swing"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
}