\include "headers.ly"

\header {
  title = "Gran Familia"
  composer = "Miguel Pérez"
  poet = "Swing"
}

cifrado =  \chords {
  \partial 2 r2 | 
  a1 | a2 bes:dim | b:min7 e:7 | b:min7 e:7 |
  b:min7 e:7 | b:min7 e:7 | a1 | bes:7 |
  
  a1 | a2 bes:dim | b:min7 e:7 | b:min7 e:7 |
  b:min7 e:7 | b:min7 e:7 | a1 | a:7 |
  
  cis:7 | cis:7 | fis:min | fis:min |
  f2:7 e:7 | a fis:min7 | f:7 e:7 | a1 | bes:7

}

melo = \relative c'' {
  \key a \major
  
  \partial 2 a4 c | 
   \mark \parteA
   \dbar
  
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
  d cis c cis e d c gis | a c cis d fis8 f e ees | d cis c cis e d c gis | a1 |
  r1
  \fin
}

<<
  \cifrado
  \melo
>>