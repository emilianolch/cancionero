\include "headers.ly"

cifrado =  \chords {
  c1 | c | a:7 | a:7 |
  d:m7 | d:m7 | g:7 | c2 g:7 |
  
  c1 | c | a:7 | a:7 |
  d:m7 | d:m7 | g:7 | c |
  
  e:7 | e:7 | a:7 | a:7 |
  d:7 | d:7 | g:7 | g:7 |
  
  c1 | c | a:7 | a:7 |
  d:m7 | d:m7 | g:7 | c2 g:7 |
  
  c1 | c | a:7 | a:7 |
  d:m7 | d:m7 | g:7 | c2 g:7 |
}

melo = \relative c' {
  \mark \parteA
  c8 e4 g8 b4 bes8 a~ |
  \ocultar-clave
  a1 |
  r8 a g f e4 d8 g~ |
  g1 |
  \break
  c,8 e4 g8 b4 bes8 a~ |
  a1 |
  r8 a \tuplet 3/2 { g f e } ees4 d8 c~ |
  c1
  \break
  
  \mark \parteA
  c8 e4 g8 b4 bes8 a~ |
  \ocultar-clave
  a1 |
  r8 a g f e4 d8 g~ |
  g1 |
  \break
  c,8 d4 f8 a4 c8 d~ |
  d1 |
  r8 a \tuplet 3/2 { g f e } ees4 d8 c~ |
  c1
  \break
  
  \mark \parteB
  \repeat unfold 4 \comp #4
  \break
  \repeat unfold 4 \comp #4
  \break
  
  \mark \parteA
  c8 e4 g8 b4 bes8 a~ |
  \ocultar-clave
  a1 |
  r8 a g f e4 d8 g~ |
  g1 |
  \break
  c,8 e4 g8 b4 bes8 a~ |
  a1 |
  r8 a \tuplet 3/2 { g f e } ees4 d8 c~ |
  c1
  \break
  
  \mark \parteC
  r4 c c cis8 d~ |
  d1 |
  r4 d d dis8 e~ |
  e1 |
  \break
  r8 e f g f4 e8 a~ |
  a1 |
  r8 a \tuplet 3/2 { g gis a } bes4 b8 c~ |
  c2 r-"Solos: A-A-B-A" |
  \fin
  
}


\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Abraswing" }
    composer = "Brasta"
    poet = "Swing"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
}