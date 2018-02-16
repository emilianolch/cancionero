\include "headers.ly"


cifrado =  \chords {
  \repeat unfold 4 {
    f2:min ees:7 | des:7 c:7 | 
  }
  g1:min | bes | b:dim | c:7 |
  
  f1 | des2:7 c:7 | f1 | des2:7 c:7 |
  f1 | des2:7 c:7 | f1 | f1 |
  
  a1:min | f2:7 e:7 | a1:min | f2:7 e:7 |
  a1:min | f2:7 e:7 | a1:min | a:min
  
  c1:7 c:7 | f | f |
  a:min | a:min | g:min | c:7 |
    
  f1 | des2:7 c:7 | f1 | des2:7 c:7 |
  f1 | des2:7 c:7 | f1 | des2:7 c:7 |
  
  bes1 | bes | bes | bes |
  f:7 | f:7 | f:7 | f:7 |
  c:m | c:m | f:7 | f:7 |
  bes | bes | bes | bes
  bes:7 | bes:7 | bes:7 | bes:7 |
  ees | ees | ees:m | ees:m |
  bes | bes | f:7 | f:7 |
  bes | bes | \show-chord bes2 c:7 |
}

melo = \relative c' {
  \key bes \major
  \mark \intro
  \repeat unfold 4 \comp #4
  \ocultar-clave
  \break
  
  f8 d4 f8~ f2 | r8 c'8~ c8[ aes] c aes c4 |
  f,8 d4 f8~ f2 | r8 c'8~ c8[ aes] c aes c4 |
  g2 a | bes2. a4 | g f e8 d4 c8~ | c4^\break-tag r2. |
  
  
  \break
  
  \mark \parteA
  f4^\st-tag r2. | r2 c'2 | f,4 r2. | r2. c'4 |
  f, f f8 f4 f8~ | f4 g e c | f r2. | r2  f8 fis g gis |
  \break
  
  \mark \parteB
  a4 r2. | r2 e'2 | a,4 r2. | r2. e'4 |
  \break
  a, a a8 a4 a8~ | a4 b gis e | a r2. | r4. g8 gis a bes b |
  \break
  
  \mark \parteC
  c1~ | c4 bes a g | a1~ | a2 e' | 
  \break
  e1~ | e4 d c b | c1~ | c2 bes8 a g a |
  \break
  
  \mark \parteA
  f1~ | f2 c'2 | f,1~ | f2. c'4 |
  \break
  f, f f8 f4 f8~ | f4 g e c | f1~ | f2  d' |
  \break
  
  \mark \parteD
  c4 bes2.~ | bes1 | r4 f g8 bes4 g8~ | g4 f g bes | 
  g a2.~ | a1~ | a1 | r2 ees' |
  \break
  
  d4 c2.~ | c1 | r4 f, g8 bes4 g8~ | g4 f g bes |
  g bes2.~ | bes1~ | bes1 | r2 f' |
  \break
  
  ees4 d2.~ | d1 | r4 bes c8 d4 c8~ | c4 bes c d |
  f ees2.~ | ees1~ | ees1 | r2 d |
  \break
  
  c4 bes2.~ | bes1 | r4 f g8 f4 g8~ | g4 f g f |
  bes1~ | bes^\coda-markup | r |
  \fin
}

cifrado-coda = \chords {
   b1 | b | c | c | des:7 | \show-chord des2:7 f:7 |
   \repeat unfold 3 { bes1 | des2:7 f:7 } |
   bes1
}

melo-coda = \relative c'' {
  \key bes \major
  \coda
  | b1 | b2 b | c1 | c2 c |
  \break
  des1 | r2 f | bes1~ | bes~ |
  \break
  bes~ | bes~ | bes~ | bes~ |
  bes4 r2. |
  \fin               
}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Swing vendimial" }
    subtitle = "(Canto a Mendoza o Marcha de la Vendimia)"
    composer = "Egidio Pittaluga, 1946"
    poet = "Swing"
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  }
  
  \score {
    <<
      \cifrado-coda
      \melo-coda
    >>
  }
}
