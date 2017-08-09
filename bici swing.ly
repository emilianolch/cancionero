\include "headers.ly"

\header {
  title = \markup { \abs-fontsize #32 "Bici Swing" }
  composer = "Lucho Splif"
  poet = "Swing"
}

cifrado =  \chords {
  \partial 8 { r8 }
  d1:m | g:m6  | c2:7 cis:dim | d1:m |
  d:dim | bes | g:m6 | cis2:dim c:7 |
  f4 d:m g:m cis:dim | d1:m | d:m | a:7 |
  f:6 | d:m6 | des2:aug7 cis:dim | a1:7 
  d:m | d:m6 |
}

melo = \relative c' {
  \key d \minor
  
  \repeat volta 2 {
    \partial 8 { c8 }
  
    \mark \parteA
    cis bes' a g f g d' cis | d f cis e  d a \tuplet 3/2 { gis a d } |
    e f4  cis8 e d bes4 | g8 e  cis4  d4. a'8 |
  
    gis' a g d c r a a | gis' a g d c a gis4 |
    gis'8 a g d c a ges ees | \tuplet 3/2 { a, c ees } \tuplet 3/2 { a c ees } d4 gis,8 a |
  
    a4~ a8 r2 aes,8 | 
    \break
  
    \mark \parteB
    d ees f ges a bes \tuplet 3/2 { c cis d } |
    d4 gis, a8 e  cis d | d d d4 d r8 aes |
    \break
  
    d ees f ges a bes \tuplet 3/2 { c cis d } | d4 gis, a8 e  cis d |
    \tuplet 3/2 { r a c } \tuplet 3/2 { ees a c }  ees8. d16 gis,4 |
    dis'8 e16 d b8 gis  \tuplet 3/2 { a aes g } \tuplet 3/2 { ges f e } |
    \tuplet 3/2 { ees d cis } a' cis  d4  d' |  
  }
  
  <d,, a' f' b>1 
  \fin
}

<<
  \cifrado
  \melo
>>