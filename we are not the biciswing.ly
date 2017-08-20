\include "headers.ly"

cifrado =  \chords {
  %intro
  \repeat unfold 2  {
    c2:min ees:maj7 | d:m7.5- g:7 |
  }
  
  %A
  c1:min | ees:maj7 | d:m7.5- | g2:7 aes:dim |
  c1:min | ees:maj7 | d:m7.5- | g:7 |
  
  %B
  f:min | c:min | fis:dim | c:min |
  f:min | c:min | fis2:dim g:7 | c:min g:7 |
  
  %A
  c1:min | ees:maj7 | d:m7.5- | g2:7 aes:dim |
  c1:min | ees:maj7 | d:m7.5- | g:7 |
}

melo = \relative c' {
  \key c \minor

  \mark \intro
  \repeat unfold 4 { r1 }
  \break
  \ocultar-clave
  
  \mark \parteA
  ees8 g c ees4 d d,8 | ees g bes aes4 g g8 | 
  aes c f d4 b ees8 | d c b g4 gis4. |
  \break
  ees8 g c ees4 d d,8 | ees g bes aes4 g g8 | 
  aes c f d4 b ees8 | d c b c4 fis,8 g bes |
  \break
  
  \mark \parteB
  aes c aes ees'4 d c8 | g c g d'4 c c8 | 
  fis, c' fis, c'4 b b8  | c d ees c4 fis,8 g bes |
  \break
  aes c aes ees'4 d c8 | g c g d'4 c c8 | 
  fis, c' fis, c'4 b b8 | c g ees c~ c2 |
  \break
  
  \mark \parteA
  ees8 g c ees4 d d,8 | ees g bes aes4 g g8 | 
  aes c f d4 b ees8 | d c b g4 gis4. |
  \break
  ees8 g c ees4 d d,8 | ees g bes aes4 g g8 | 
  aes c f d4 b ees8 | d c b c~ c2 |
  \fin  
}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "We are not the Biciswing" }
    subtitle = "(Nosotros no somos los Biciswing)"
    composer = "Giorgio Salinas"
    poet = "Gipsy Bossa"
  }

  <<
    \cifrado
    \melo
  >>
}