\include "headers.ly"

\header {
  title = "Gypsy Vals"
  composer = "Lucho Splif"
  poet = "Vals"
}

cifrado =  \chords {
}

melo = \relative c'' {
  \time 3/4
  \key e \minor
  
  \mark \parteA
  \repeat volta 2 {
    e8 dis dis e dis e | c2 dis4 | b2 c4 | fis,2. | 
    e'8 dis dis e dis e | c2 dis4 | b4. c8 b dis | e2. |
  }
  \break
  
  \mark \parteB
  a,8 c dis fis a c | b a, c dis fis a | fis dis c b b4 |
  \break
  \tuplet 3/2 { e,8 g b } \tuplet 3/2 { e8 g b} c4 |
  \tuplet 3/2 { b,,8 dis fis } \tuplet 3/2 { a c dis } \tuplet 3/2 { fis a c } |
  b4 e, b | fis'8 e c4 a |
  \tuplet 3/2 { b,8 d f} \tuplet 3/2 { gis b d } fis dis | c a fis dis e4 |
  e'2.
  
  \fin
  
}

<<
  \cifrado
  \melo
>>