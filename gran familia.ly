\include "headers.ly"

\header {
  title = "Gran Familia"
  composer = "Miguel Pérez"
  poet = "Swing"
}

cifrado =  \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""

}

melo = \relative c' {
  \key a \major
  
  \mark \parteA
  \partial 2 a4 c | cis2 a4 c8 cis~ | cis2 cis4 fis | d1 |
  \break
  r2 d'8 cis d b~ | b d, dis e d' cis d b~ | b d, dis e d' c cis a~ | a1
  \break
  r2 a,4 c | cis2 a4 c8 cis~ | cis2 cis4 fis | d1 |
  \break
  r2 d'8 cis d e~ | e e, gis b d cis d e~ | e e, gis b c cis fis4 | a,1
  \break
  
  \mark \parteB
  r2 e8 f fis g | gis b, d cis e8 f fis g | gis b, d cis fis f fis gis | a1
  \break

  r2 fis8 f e ees | d cis c cis e d c gis | 
  a c cis d fis8 f e ees | d cis c cis e d c gis | a1
  
  \fin
}

<<
  \cifrado
  \melo
>>