\include "headers.ly"

\header {
  title = \markup { \abs-fontsize #32 "Ana Clara Swing" }
  composer = "Duba"
  poet = "Swing"
}

cifrado =  \chords {
}

melo = \relative c' {
  \key bes \major
  
  \mark \parteA
  
  bes8 c g f cis' d a g | ees' e f d r g g,4 | \ocultar-clave
  f8 g bes ees cis d bes g~ | g2. r4 |
  \break
  
  bes8 c g f cis' d a g | ees' e f d r g d4 |
  \tuplet 3/2 { g,8 bes d } ees f  fis bes  des f~ | f1 |
  \break
  
  \mark \parteB
  
  g8 c, d ees~ ees4 ees8 f | fis4 fis \tuplet 3/2 { g8 d b } g4 |
  d8 fis, g a~ a4 g8 a | bes4 bes \tuplet 3/2 { a8 bes a } f4 |
  \break
  
  f'8 des' c fis,~ fis des' c g~ | g des' c gis~ gis des' c f, |
  bes f, g ees' cis d  bes bes | r1
  
  \fin  
}

<<
  \cifrado
  \melo
>>