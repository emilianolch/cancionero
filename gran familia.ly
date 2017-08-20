\include "headers.ly"

cifrado =  \chords {
  \partial 2 r2 | 
  a1 | a2. fis4:7 | e2:7 b:m | e1:7 |
  b2:m7 e:7 | b:m7 e:7 | a1 | bes:7 |
  
  a1 | a2. fis4:7 | e2:7 b:m | e1:7 |
  b2:m7 e:7 | b:m7 e:7 | a1 | a:7 |
  
  cis:7 | cis:7 | fis:m | fis2:m fis:7 |
  f2:7 e:7 | a fis:7 | f:7 e:7 | a1 | bes:7

}

melo = \relative c'' {
  \key a \major
  
  \partial 2 a4 c | 
  \mark \parteA
  \dbar
  \ocultar-clave
  
  cis2 a4 c8 cis~ | cis2 cis4 fis | d1 | r2 d8 cis d b~ | 
  \break
  b d, dis e d' cis d b~ | b d, dis e d' c cis a~ | a1 | r2 a4 c |
  \break
  
  \mark \parteA
  cis2 a4 c8 cis~ | cis2 cis4 fis | d1 | r2 d8 cis d e~ | 
  \break
  e e, gis b d cis d e~ | e e, gis b c cis fis4 | a,1 | r2 e'8 f fis g |
  \break
  
  \mark \parteB
  gis b, d cis e8 f fis g | gis b, d cis fis f fis gis | a1 | r2 fis8 f e ees |
  \break
  d cis c cis e d c gis   
  
  \repeat volta 3 {
    a^\markup { \italic "Repite 3 veces sólo en la última vuelta." }
    c cis d fis8 f e ees \noBreak |  d cis c cis e d c gis
  }
  
  a1| 
  r2
  \fin
  \break
}

\bookpart {
  
  \header {
  title = \markup { \abs-fontsize #32 "Gran Familia" }
  composer = "Miguel Pérez"
  poet = "Swing"
  }
  
  <<
    \cifrado
    \melo
  >>
}