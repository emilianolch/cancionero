\include "headers.ly"

cifrado =  \chords {
  c1:min | ees | d:m7.5- | g:7 |
  c:min | aes:7 | g:7 |
  c1:min | ees | d:m7.5- | g:7 |
  d:7 | cis:7 | c:m | g:7 |
  c:m | aes2:7 g:7 | c1:m | c:m |
  
  ees | ees | d:7 | d:7 | d:7 |
  ees | ees | d:7 | d:7 | d:7 |
  c:m | d:7 | aes:7 | g:7 |
  
  c:m | ees | d:7 | c:m | aes:7 |
  c:m | b:m7.5- | ees | aes:7 | g:7 | c:m | g:7
}

melo = \relative c' {
  \key c \minor
  
  \mark \parteA
  
  \repeat volta 2 {
    ees4^Swing g ees g | ees'2 d | c g | aes g | ees4 d c d | ees1 d |
    \ocultar-clave
    \break
    ees4 g ees g | ees'2 d | c g | aes g | 
  }
  \alternative {
    { g4 c2 g4 | c2 ees | f1 | ees |}
    { g,4 c2 g4 | c2 d | c1~ c | }
  }
  \break
  
  \mark \parteB
  d,4. ees8 g4 aes | b c d ees | c4. aes8 g4 aes | g1 | aes |
  \break
  d,4( ees) g( aes) | b( c) d( ees) | b( c) g( aes) | g1~ | g1 |
  \break
  ees4 d c d | ees2 c | c'1~ | c^Fine |
  \fin
  \break
  
  \mark \parteC
  \repeat volta 2 {
    c8^Rumba c4 ees4. c4 | d4. c g'8( fis~) | fis1 |
    c8 c4 ees4. c4 | d4. fis8( g2) |
    \break
    c,8 c4 ees4. c4 | d4. c8~ c2 |
    aes'4. g8~ g2 | ees4. d8~ d2 |
    c4. g4. ees'4 | c1 |
  }
  r1^"D.C. al Fine"
  \fin
}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Sin agua no hay vida" }
    composer = "Roberto Rodríguez"
    poet = "Swing / Rumba"
  }

  <<
    \cifrado
    \melo
  >>
}