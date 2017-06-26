\include "headers.ly"

\header {
  title = "Le Tangska Swing"
  composer = "Miguel Pérez"
  poet = "Swing"
  meter = "Solos en A. Tocar B-INTRO entre solos."
}

cifrado =  \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""
  
  g2:min bes | a1:7 | g2:min bes | a1:7 |
  
  d1:min | f:dim | a:7 | a:7 | 
  d1:min | f:dim | a:7 | a:7 |
  \set chordChanges = ##f 
  a:7 |
  \set chordChanges = ##t
  a:7 |
  
  bes:7 | d:min | a:7 | d:min |
  bes:7 | d:min | a:7 | d:min |
  bes:7 | d:min | a:7 | d:min |
  a:7 | d:min | a:7 | d:min |
  
  g2:min bes | a1:7
}

melo = \relative c'' {
  \key d \minor
  \mark \intro
  g2 bes | a1 | g2 d' a2. a4 |
  \dbar
  \break
  
  \mark \parteA
  \repeat volta 2 {
    d cis d e | f e f g | a1~ | a2. a,4 |
    d cis d e | f e f g |
  }
  \alternative {
    { e1~ | e2. a,4 }
    { e'1~ | e2. d4 }
  }
  \break
  
  \mark \parteB
  f2 e4 d | e2 d4 cis | a2 b8 cis4 d8~ | d2. d4 |
  f2 e4 d | e2 d4 cis | r4 a b8 cis4 d8~ | d2. d4 |
  f2 g4 f | e2 f4 e | 
  \repeat unfold 3 {
    r4 a, b8 cis4 d8~ | d1 
  }
 
  \dbar
  \break
  
  \mark \outro
  g,2 bes | a1\fermata
  \fin
}

<<
  \cifrado
  \melo
>>