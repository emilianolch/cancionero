\include "headers.ly"

\header {
  title = "Ganyiruli Swing"
  composer = "Miguel Pérez"
  poet = "Swing"
}

cifrado =  \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""
}

melo = \relative c' {
  \key ees \major
  
  \mark \parteA
  \repeat volta 2 {
    \repeat unfold 3 {
      bes4 ees c8 ees4. | d8 ees e f~ f2 
    }
    r8 g g4 g bes
    g8 f4 es8~ es2 |
  }
  
  \break
  \mark \parteB
  fis4 g fis8 g4 fis8 | g fis4 c'8~ c2 |
  f,4 fis f8 fis4 f8 | fis f4 bes8~ bes2 |
  d,8 es e f fis g aes a | bes4 f ees2 |
  
  bes4 ees c8 ees4. | d8 ees e f~ f2 |
  bes,4 ees c8 cis d ees | f4 g ees2
  
  \fin
}

<<
  \cifrado
  \melo
>>