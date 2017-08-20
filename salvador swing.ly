\include "headers.ly"


cifrado =  \chords {
  \repeat unfold 4 { 
    bes2 bes:7 | g:7 c:7 | ees:7 e:dim | f f:7 |
  }
  c c:7 | cis1:dim1 | f2 f:7 | fis1:dim | 
  bes2 bes:7 | g:7 ees:7 | e:dim f:7 | ees ees:7 |
  
  fis1:dim | bes2 bes:7 | cis1:dim | f2 f:7 | gis1:dim |
  ees2 e:dim | d:aug fis4 f:7 | bes1 | bes |
  
  b:dim | ees2. e4:dim | e1:dim |
  d:7 | g2:7 f:7 | bes1 |
}

melo = \relative c' {
  \key bes \major
  
  \mark \parteA
  
  bes4. bes8 c4 d8 bes~ | bes4 g' f8  g4. |
  f4 g gis8 a bes4 | d cis d f | 
  \ocultar-clave
  \break
  
  d cis d f | bes, \tuplet 3/2 { ees,8 f fis } \tuplet 3/2 { g gis a } \tuplet 3/2 { bes c cis } |
  d4 bes8 a g ees' f, fes | ees d~ d a'~ a d a4 |
  \break
  
  bes,4. bes8 c4 d8 bes~ | bes4 g' f8  g4. |
  f4 g gis8 a bes4 | d cis d f | 
  \break
  
  d cis d f | bes,2 ees,4 d |
  d' cis d f | r8 f, g a d a d a |
  \break
  
  bes4 r2. | bes4. bes 4 bes g8 |
  c4 ees, r2 | ees4 ees8 g d bes' f4 |
  \break
  
  bes,4. bes8 c4 d8 bes~ | bes4 g' f8  g4. |
  f4 g gis8 a bes4 | g fis  g bes |
  \break
  
  r8 f g a d a d a | ees'1 |
  d,2 d |  des2. des8 des |
  
  f2 f | aes aes4. aes8 |
  c d g, a d f, r4 | c'04 d8 g, a d  f,4 |
  bes4 r2.
  \dbar
  \break
  
  \mark \parteB
  r4. a8 gis4 a | ees'2 ees8 d e4 |
  \tuplet 3/2 { bes, d ges } \tuplet 3/2 { d' des c } | a4. a g8 f |
  r f g a d a d a | bes4 r2. 
  
  \fin
}

\bookpart {
  \paper {
    system-system-spacing = #'((minimum-distance . 10)
                               (basic-distance . 20))
  }

  \header {
    title = \markup { \abs-fontsize #32 "Salvador Swing" }
    composer = "Lucho Splif"
    poet = "Swing"
    meter = "En los solos tocar sólo la parte A."
  }

  \score {
    <<
      \cifrado
      \melo
    >>
  
    \layout {
      \override ChordNames.ChordName.font-size = #4
    }
  }
}