\include "headers.ly"

cifrado =  \chords {
  aes1:7 | des:7 | aes:7 | aes:7 |
  des:7 | d:dim | aes:7 | f:7 |
  bes:m7 | ees:7 | aes2:7 f:7 | bes:m ees:7 |
  
}

melo = \relative c' {
  \key aes \major
  
  f8 des' c ges es e f c'8 |
  bes aes r2. |
  f8 des' c ges ees e fis bes~ |
  bes2 r |
  \break
  
  \ocultar-clave
  bes8 ges' f des c ees,~ ees4 |
  bes'8 ges' f des c ees,~ ees4 |
  f8 des' c ges ees e f c' |
  bes a g a a4 r8 f'8 |
  \break
  
  ees des  c bes bes4 r8 ees |
  des c bes b b c des4 | 
  aes4 r2. |
  r1 |
  \fin  
}


\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Ya Chao" }
    composer = "Elso Cáner"
    poet = "Blues"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
}