\include "headers.ly"

cifrado =  \chords {
  \repeat unfold 4 { ees2 c:min | bes1:7 }
  d:7 | g:7 | c:7 | f | bes:7 | bes2:7 ees |
  ees2 c:min | bes1:7 | ees2 e:dim | f4:7 bes:7 ees2 |
}

melo = \relative c' {
  \key ees \major
  
  \mark \parteA
  \repeat volta 2 {
    \repeat unfold 3 {
      bes4 ees c8 ees4. | d8 ees e f~ f2 \ocultar-clave
    }
    r8 g g4 g bes
    g8 f4 es8~ es2 |
  }
  
  \break
  
  \mark \parteB
  fis4 g fis8 g4 fis8 | g fis4 c'8~ c2 |
  f,4 ges f8 ges4 f8 | ges f4 bes8~ bes2 |
  \break
  d,8 es e f fis g aes a | bes4 f ees2^\break-tag |
  \break  
  bes4 ees c8 ees4. | d8 ees e f~ f2 |
  bes,4 ees c8 cis d ees | f4 g ees2
  
  \fin
}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Ganyiruli Swing" }
    composer = "Miguel Pérez"
    poet = "Swing"
  }

  \score {


    <<
      \cifrado
      \melo
    >>
  }
}