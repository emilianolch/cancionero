\include "headers.ly"

\header {
  title = "Vidala"
  composer = "Cocho López"
  poet = "Swing"
}

cifrado =  \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""

  r2 a1:m a:m a:m g:7 g:7 c c
  \repeat volta 2 { c d c d c e:7 a:m }
  \alternative { { a:m } { a:m } }

  g:7 g:7 c c
  g:7 g:7 c c
  c d c d c e:7 a:m
}

respFlauta = \relative c'' {
  e4. e8~ e2
  r2 fis4 a
  e4. e8~ e2
  fis2. a4
  e4. e8~ e2
  r4 e d2
  c1
}

respClarinete = \relative c'' {
  c4. c8~ c2
  r2 d4 f
  c4. c8~ c2
  d2. f4
  c4. c8~ c2
  r4 c b2
  a1
}
  

flauta = {
  \relative c'' {
    \partial 2  c4 d |
    \bar "||"
    \mark \parteA
    e2 e4 e
    a1~
    a2 a8 gis a b
    c4. b8~ b2
    r2 a8 gis a4
    e1
    r2 c4 d

    \repeat volta 2 {
      \respFlauta
    }
    \alternative {
      { r2 c4 d }
      { r2 a'8 gis a b }
    }

    \break
    \mark \parteB
    c4. b8~ b2
    r2 a8 gis a4
    e1
    r1 r r r
    r2 c4 d
    \respFlauta
    \fin
  }
}

clarinete = \relative c'' {
  \partial 2 a b |
  c2 c4 c 
  f1~
  f2 f8 e f g
  a4. g8~ g2
  r2
  f8 e f4
  c1
  r2 a4 b
  \repeat volta 2 \respClarinete
  \alternative {
    { r2 a4 b }
    { r1 }
  }
  
  r r r
  r2 f'8 e f g
  a4. g8~ g2
  r2 f8 e f4
  c1
  r2 a4 b
  \respClarinete
  \bar "|."
}

<<
  \cifrado
  \new Staff \flauta
  \new Staff \clarinete
>>