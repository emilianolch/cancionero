\include "headers.ly"

\header {
  title = \markup { \abs-fontsize #32 "Ni un mango" }
  composer = "Lucho Splif"
  poet = "Swing"
}

cifrado =  \chords {
  \partial 4. r4.
  c2 a:m7 | d:m7 g:7 | e:7 a:m7 | d:7 g:7 |
  e:7 ees:7 | d:7 des:7 | c1 | g:7 | bes |
  
}

melo = \relative c'' {
  \partial 4. g8 \tuplet 3/2 { a ais b }
  \mark \parteA
  
  \repeat volta 2 {
    c g a c4 c8 d f | e ees d c4 g8 \tuplet 3/2 { a ais b } |
    \break
    c g a c4 c8 d f | e ees d c4 g8 \tuplet 3/2 { a ais b } |
    \break
    c g a c4 c8 d f | e ees d c4 g8 a c~ | 
    \break
    c4^\markup { \italic "Fine" } r2. |
  }
  \alternative {
    { r2 r8 g8 \tuplet 3/2 { a ais b } }
    { r1 }
  }
  \break
  
  \mark \parteB
  d4 d c8 d c4 | c c b8 c b4 | b b a8 b4 e,8 | g1 |
  \break
  d'4 d c8 d c4 | c c b8 c b4 | b b a8 b4 e,8 | 
  g8 b2g8 \tuplet 3/2 { a ais b_\markup { \center-align \italic "D.C. al Fine" } }  |
  \fin
                        
}

<<
  \cifrado
  \melo
>>