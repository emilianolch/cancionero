\include "headers.ly"

cifrado =  \chords {
  \partial 8 { r8 }
  bes1:m | f:m | aes:maj7 | c:m |
  aes:maj7 | b2:dim c:7 | f1:m | b2:dim c:7 |
  
  aes1:maj7 | c:m | f:m | g2:m7.5- c:7 |
  f1:m | c:7 | g2:m7.5- c:7 | g:m7.5- c:7 |
 
}

indicacionFinal = \markup {
  \halign #0.5 {
    \column {
      \line { "Primera vuelta: D.C. al Fine" }
      \line { "Ultima vuelta: D.C. al" \raise #1 \musicglyph #"scripts.coda" }
    }
  }
}

meloUno = \relative c'' {
  \key f \minor
  
  \partial 8 { g8 }
  \mark \parteA
  \ocultar-clave
  
  aes1 | r8 aes c ees des4 c8 ees~ | 
  ees2. \tuplet 3/2 { aes8 g aes } | f ees \tuplet 3/2 { des ees c~ } c4 aes8 c~ |
  \break
  c2 r8 aes c des | \tuplet 3/2 { ees f f } \tuplet 3/2 { ees des des } \tuplet 3/2 { c bes bes } aes4\staccato^\coda-markup |
  aes'1~ | aes2..^Fine aes,8 | 
  \break
  
  \mark \parteB
  c des4 ees4. des8 c~ | c aes f aes~ aes4 r8 f |
  c' des4 ees4. des8 c~ | c aes' ges  f ees f c bes |
  \break
  c des4 ees4. des8 c~ | c aes f aes~ aes4 r8 f |
  c' des4 ees4. des8 c~ | c aes' ges  f ees ces bes g |  
  \fin
}

meloDos = \relative c' {
  \key f \minor
  \partial 8 { ees8 }
  \ocultar-clave
  
  f1 | r8 f aes des bes4 aes8 c~ | 
  c2. \tuplet 3/2 { f8 ees f } | c bes \tuplet 3/2 { aes bes g~ } g4 f8 aes~ |
  aes2 r8 f aes bes | \tuplet 3/2 { b c c } \tuplet 3/2 { b bes bes } \tuplet 3/2 { aes g g } f4\staccato |
  f'1~ | f2.. e8 |
  
  aes bes4 c4. bes8 aes~ | aes ees c ees~ ees4 r8 c |
  aes' bes4 c4. bes8 aes~ | aes c ces bes aes bes f ees |
  aes bes4 c4. bes8 aes~ | aes ees c ees~ ees4 r8 c |
  aes' bes4 c4. bes8 aes~ | aes c ces bes aes f ees ees,_\indicacionFinal |
  \fin
}

codaUno = \relative c' {
  \coda
  \key f \minor
  \tuplet 3/2 { ees'8 fes fes } \tuplet 3/2 { ees c c } \tuplet 3/2 { bes aes aes } g4\staccato |
  \tuplet 3/2 { c8 bes c } \tuplet 3/2 { ees c ees } \tuplet 3/2 { f ees f } \tuplet 3/2 { aes f aes } |
  \tuplet 3/2 { f4 ees c } f2\staccato
  \fin
}

codaDos = \relative c' {
  \coda
  \key f \minor
  \tuplet 3/2 { b'8 c c } \tuplet 3/2 { b aes aes } \tuplet 3/2 { g f f } ees4\staccato |
  \tuplet 3/2 { f8 ees f } \tuplet 3/2 { aes f aes } \tuplet 3/2 { bes aes bes } \tuplet 3/2 { c bes b } |
  \tuplet 3/2 { ces4 bes aes } f'2\staccato
  \fin
}

\bookpart {
  \header {
    title = \markup { \abs-fontsize #32 "Kali" }
    composer = "Duba"
    poet = "Balada"
    meter = "Forma: A-B-A (Solo: B-A-B)"
  }	

  \score {
    <<
      \cifrado
      \new Staff \meloUno
      \new Staff \meloDos
    >>
  }

  \score {
    <<
      \chords {
        b2:dim c:7 | g:m7.5- c:7 | \tuplet 3/2 { des4:7 ges:6 c:7 } f2:m |
      }
      \new Staff \codaUno
      \new Staff \codaDos
    >>
  }
}