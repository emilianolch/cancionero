\include "headers.ly"

cifrado =  \chords {
  c1 | f:7 | c | 
  d:m9 | g:7 | d2:m g:7 |
  c1 | f:7 | g:7 | b2:m7.5- e:7 |
  
  a1:m | a:m | d | d |
  a:m | a:m | e:7 | d2:m g:7 | 
  c1 | c | f:7 | f:7 |
  g:7 | g2.:7 e4:7 | a1:m | d2:m7 g:7 |
  
}

melo = \relative c' {
  \mark \parteA
  
  c'4 d8 e r c r g' |
  r f~ f2 r8 g, |
  c8 c d d  e e r4 |
  \ocultar-clave
  \break
  
  r8 d r d e e r d |
  a2 r8 g a g~ |
  g2. r8 g |
  \break
  
  c4 d8 e r c r d |
  r g~ g2 r8 g, |
  \tuplet 3/2 { g'4 g g } \tuplet 3/2 { g g f } |
  e4. d8 r e r g |
  \break
  
  \mark \parteB
  
  a4 e2. |
  r a,8 a' |
  r fis~ fis2. |
  r2 r8 g r fis |
  \break
  
  e1 |
  r2 \tuplet 3/2 { e4 e gis } |
  b1 |
  r2 \tuplet 3/2 { g,4 c d } |
  \break
  
  e4 c2. |
  r8 c r d e4 c8 g' |
  r f~ f2. |
  r2 \tuplet 3/2 { a,4 c d } |
  \break
  
  e4 b2. |
  r8 b r b c4 b8 a~ |
  a1 |
  r |
  \fin
}


\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "For Dubiel" }
    composer = "Duba"
    poet = "Swing"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
}