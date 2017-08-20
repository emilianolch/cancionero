\include "headers.ly"

cifrado =  \chords {
  g1:m7.5- | f:m | g:m7.5- |  c:7 |
  f:m | g:m7.5- | bes2:m7.5- c:7.5- |
  
  f1:m | c2:m c:7 | cis1:7 | f:m |
  cis2:dim  c4:7 b:7 |  
  
  e1:dim | e1:dim | f:dim | f:dim |
  ges:dim | 
}

melo = \relative c''' {
  \key f \minor
  
  \repeat volta 2 {
    r4. f8 e f c aes~ | aes4. f'8 e f des bes | 
    \ocultar-clave
    \tuplet 3/2 { g ges f } e des c'2 | bes  r8 f' e f |
    c aes2  f'8 e f | des bes g e des c' bes e, |
    bes' aes d, aes' ges c, c' e,~ |
  }
  \break
  
  e r2. c8 | f aes c4 e c8 des~ | des8 aes4 c des8  bes des | 
  \break
  c aes e c e g e des~ | des4 c r4. des8 |
  \break

}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Duba Swing" }
    composer = "Lucho Splif"
    poet = "Swing"
  }
  
  \score {
    <<
      \cifrado
      \melo
    >>
  }
}