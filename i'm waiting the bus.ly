\include "headers.ly"

cifrado =  \chords {
  \partial 8 { r8 } |   
  ees1:maj7 | e:m7.5- | aes:6 | g:7 |
  c:m7 | d:m7.5- | aes:6 | g:7.5+ |
  aes:6 | f:m | g:7 | c2 ees:7 |
  aes1:6 | f:m | bes:7 | ees2:7 bes:7 |
}

melo = \relative c' {
  \key ees \major
  
  \partial 8 { ees8 } |
  
  \mark \parteA
  d f aes ees'4 d d,8 |
  c f aes d4 c c,8 |
  bes f' aes  c4 b8 aes  g |
  b2.. ees,8 |
  \break
  
  \ocultar-clave
  d8 f aes ees'4 d d,8 |
  c8 f aes d4 c c,8 |
  bes f' aes c4 b8 aes g |
  b1 |
  \break
  
  \mark \parteB
  aes8 g aes g ees d~ d4 |
  r8 aes'4 g8 ees d r4 |
  bes'4 bes4. b4 b8 |
  g g fis g~ g4 r |
  \break
  
  aes8 g aes g ees d d4 |
  r8 aes'4 g8 ees d r4 |
  bes' bes4. c4 ees8\staccato |
  r1
  \fin  
}


\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "I'm waiting the bus" }
    composer = "Elso Cáner"
    poet = "Swing"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
}