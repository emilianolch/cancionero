\include "headers.ly"

\header {
  title = "Tío Swing"
  composer = "Lucho Splif"
  poet = "Swing"
}

cifrado =  \chords {
  g2 g:m | fis:m b:7 | e:m a:7 | d d:7 |
  g2 g:m | fis:m b:7 | e:m a:7 | d4 a:7 d2 |
  
  b1:m | b:m | fis | fis | a:m | a:m | e:m | a:7 |
  
  g2 g:m | fis:m b:7 | e:m a:7 | d d:7 |
  g2 g:m | fis:m b:7 | e:m a:7 | d4 a:7 d2 |
}

A = \relative c'' {
  \mark \parteA
  \repeat volta 2 {
    b8 d b g fis f e a~ | a cis a fis f4 d |
    d8 e fis a b fis a b | d cis c cis4 e4. |
    b8 d b g fis f e a~ | a cis a fis f4 d |
    d8 e fis a b fis a d | cis fis, cis e d2 |
  }
}

melo = {
  \key d \major
  \A
  \break
  
  \mark \parteB
  \repeat unfold 8 \comp #4
  \dbar
  \break
  
  \A
  \fin
}

<<
  \cifrado
  \melo
>>