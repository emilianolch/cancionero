\include "headers.ly"

\header {
  title = \markup { \abs-fontsize #32 "A lo Django" }
  composer = "Giorgio Salinas"
  poet = "Swing"
}

cifrado =  \chords {
  r8 | a1:m | b:m7.5- | e:7 | a2:m e:7 |
  a1:m | b:m7.5- | e:7 | a:m |
  d:m | c | b:m7.5- | a:m |
  d:m | c | b2:m7.5- e:7 | a:m e:7 |
}

melo = \relative c''' {
  \partial 8 { gis8 }
  \mark \parteA
  a4 f e d8 cis | d e4 f2 f8 | e4 d c b | c8[ d] dis e2 gis8 |
  \ocultar-clave
  \break
  a4 f e d8 cis | d e4 f2 e8 | d4 c b gis | c8[ b] gis a2 gis'8 |
  \break
  
  \mark \parteB
  a4 a8 a2 e8 | g4 g8 g2 e8 | f4 f f8 g f4 | e4. e2 b8 |
  \break
  d4 d8 f2 a,8 | c4 dis8 e2 e8 | ees4 d c b | b8[ a] gis a2 r8^\coda-markup |
  \fin
}

\score {
  <<
    \cifrado
    \melo
  >>
}

\score {
  <<
    \chords {
      r8 | b2:m7.5- e:7 | a1:m | b2:m7.5- e:7 | a1:m |
    }
    \relative c'' {
      \coda
      \partial 8 { e8 } |
      ees4 d c b | b8[ a] gis a2 e'8 | ees4 d c b\fermata | a1\fermata |
      \fin
    }
  >>
}