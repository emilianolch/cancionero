\include "headers.ly"

cifrado =  \chords {
}

melo = \relative c' {
  \key c \minor
  
  \mark \parteA
  
  \repeat volta 2 {
    ees4^\markup { \italic \bold Prestissimo } g ees g | ees'2 d | c g | aes g | ees4 d c d | ees1 d |
    ees4 g ees g | ees'2 d | c g | aes g | g4 c2 g4 | 
  }
  \alternative {
    { c2 ees | f1 | ees | }
    { c2 d | c1~ c | }
  }
  \break
  
  \mark \parteB
  d,4. ees8 g4 aes | b c d ees | c4. aes8 g4 aes | g1 | aes |
  d,4( ees) g( aes) | b( c) d( ees) | b( c) g( aes) | g1~ | g1 |
  ees4 d c d | ees2 c | c'1~ | c |
  \break
  
  \mark \parteC
  c8^\markup { \italic \bold Presto } c4 ees4. c4 |
}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Sin agua no hay vida" }
    composer = "Roberto Rodríguez"
    poet = "Swing"
  }

  <<
    \cifrado
    \melo
  >>
}