\include "headers.ly"

cifrado =  \chords {
  g1:maj7 | a:m7 | ees:7 | g:maj7 |
  c:7 | a:7 | g:maj7 | e:m7 |
  g1:maj7 | a:m7 | ees:7 | g:maj7 |
  c:7 | f:7 | b:7 | e:m |
  a:m | f:7 | e:m | e:7 |
  a:7 | e:m | a:m6 | d:7 |
  g1:maj7 | a:m7 | ees:7 | g:maj7 |
  c:7 | a2:7 d:7 | g:maj7 c:7 | g1:maj7 |
}

frasea = \relative c'' { 
  d8 b a g fis e dis e |
  b' a g e a4. b,8 |
  fis' g a g fis e r ais,16 b |
  e8 d~ d2 r8 g |
}
 
melo = \relative c' {
  \key g \major
  
  \mark \parteA
  \frasea
  \ocultar-clave
  \break
  
  \repeat unfold 3 { \grace gis'16( a8)[ g] } r g | 
  bes bes a g fis g r4 |
  g8 e d bes g4 \tuplet 3/2 { e8 g e } |
  d' bes a16 fis e8 r2 |
  \break
  
  \mark \parteAA
  \frasea
  \break

  \repeat unfold 3 { \grace gis'16( a8)[ g] } r g | 
  ees' c bes a f g r4 |
  \repeat unfold 4 \tuplet 3/2 { a8 aes g } |
  <g b>2. r8 b |
  \break
  
  \mark \parteB
  d b a g fis g r4 |
  \tuplet 3/2 { b8 a fis } \tuplet 3/2 { ees c fis } 
  \tuplet 3/2 { ees a fis } \tuplet 3/2 { b a fis } |
  <g b>1 | r |
  \break
  
  b8 a g16 e a8 r4 \tuplet 3/2 { e8 g a } |
  b a g16 a d8 r2 |
  \tuplet 3/2 { g8 fis e } \tuplet 3/2 { g fis e }
  \tuplet 3/2 { g e d } \tuplet 3/2 { g e d } |
  <g b> <g b> r a16 g <fis a>4\staccato r |
  \break
  
  \mark \parteAAA
  \frasea
  \break
  
  \repeat unfold 6 { \grace gis,16( a8)[ g] } a a~ a g~ |
  g2 \tuplet 3/2 { bes8 a g } g16 fis g8 | 
  g1 |
  \fin
}


\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "El Sol" }
    composer = "Luci A."
    poet = "Balada"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
}