\include "headers.ly"

\header {
  title = "Tío Swing"
  composer = "Lucho Splif"
  poet = "Swing"
}

cifrado =  \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""
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