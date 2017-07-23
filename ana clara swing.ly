\include "headers.ly"

\header {
  title = \markup { \abs-fontsize #32 "Ana Clara Swing" }
  composer = "Duba & Gamal Darián"
  poet = "Swing"
}

cifrado =  \chords {
  bes2 c:m7 | des:m7 d:m7 | des:m7 c:m7 | bes1 |
  bes2 c:m7 | des:m7 d:m7 | des:m7 c:m7 | bes1:7
  ees1 | ees2:m g:7 | a1:m7.5- | g4:m fis:7 c:7 f:sus4 |
  c2:m7 d:7 | ees:maj7 c:aug7/e | f1:sus4 | r |
  
  %coda
  b4 g:7 c:7 f:sus4 | d:m7 des:7 c:m7 ces8:7 bes

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
  bes^\break-tag f, g ees' cis d  bes bes^\coda-markup | r1 
  \fin
  \break
  
  \coda
  r8 f' g ees' cis d  bes bes | \ottava #1 r8 f' g ees' cis d  bes bes'
  \fin
}

<<
  \cifrado
  \melo
>>