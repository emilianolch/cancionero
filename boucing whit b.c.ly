\include "headers.ly"

cifrado =  \chords {
  \partial 8 { r8 }
  
  ees2 d:m7.5- | g:7 c:m | f:7 bes:7 | ees bes:7 |
  ees2 d:m7.5- | g:7 c:m | f:7 bes:7 | ees g:7 |
  
  c1:m | d2:m7.5- g:7 | c1:m | f:m |
  c:m | d2:m7.5- g:7 | c1:m | g:7 |
  c:m | d2:m7.5- g:7 | c1:m | f2:m bes:7 |
    
  ees2 d:m7.5- | g:7 c:m | f:7 bes:7 | ees bes:7 |
  ees2 d:m7.5- | g:7 c:m | f:7 bes:7 | ees bes:7 |
}

melo = \relative c' {
  \key ees \major
  \partial 8 { fis'8 }
  \ocultar-clave
  \mark \parteA
  
  g ees bes4 f' bes,8 fis' |
  g ees bes4 f' r8 fis |
  g ees bes4 f' bes,8 fis' |
  g bes fis4 ees r8 fis |
  \break
  
  g ees bes4 f' bes,8 fis' |
  g ees bes4 f' r8 fis |
  g ees bes4 fis' fis8 ees~ |
  ees4 r8 g, aes g fis g |
  \break
  
  \mark \parteB
  \repeat volta 2 {
    c4 r d8 c r4 |
    f\staccato f8 ees  b g r4 |
    d' \tuplet 3/2 { c8 g ees } d4 r |
    r8 aes'4 bes8 c  bes aes4 |
    \break
  }
  \alternative {
    {
      r4. g8 aes g d4 |
      f4. g8 aes bes4 g8~ |
      g4. ees8 d c r4 |
      r4. g'8 aes g fis g |
      \break
    }
    {
      r4. g8 aes g fis g |
      f4. ees8 f g ees c~ |
      c2 r |
      aes'8 bes c ees  d ees f fis |
    }
  }
  
  \mark \parteA
  g ees bes4 f' bes,8 fis' |
  g ees bes4 f' r8 fis |
  g ees bes4 f' bes,8 fis' |
  g bes fis4 ees r8 fis |
  \break
  
  g ees bes4 f' bes,8 fis' |
  g ees bes4 f' r8 fis |
  g ees bes4 fis' fis8 ees~ |
  ees1
  \fin
}


\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Bouncing with B.C." }
    composer = "Sebastián Kusselman"
    poet = "Swing"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
}