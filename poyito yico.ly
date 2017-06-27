\include "headers.ly"

\header {
  title = "Poyito Yico"
  subtitle = "(El swing del pollo)"
  composer = "Miguel Pérez"
  poet = "Swing"
}

cifrado =  \chords {
  \partial 2 r2 |
  %A
  bes1 | bes | g:min | g:min |
  c:min7 | c:min7 | f:7 | f:7 |
    
  %B
  aes | g:min | f:7 | f:7 |
  aes | g:min | c:min7 | f:7 |
  
  %A
  bes1 | bes | g:min | g:min |
  c:min7 | c:min7 | f:7 | f:7 |
  
  %CODA
  r | d:min7 | c:min7 | f:7 | bes | bes
}

melo = \relative c'' {
  \key bes \major
  
  \repeat volta 2 {
    \partial 2 bes8 bes c d~
    \mark \parteA
    d4 f2.~ | f2 d8 c cis d~ | d4 g2.~ | g2 d8 cis d4 |
    d bes bes g8 bes~ | bes2 d8 cis d d~ | d4 bes f'8 e ees d~ | d2 
  }
  
  g4 bes |
  \break
  
  \mark \parteB
  aes4. g8 f ees4 d8~ | d8 bes4 bes2 bes8 | 
  d d cis d4 f f8~ | f2 g4 bes |
  aes4. g8 f ees4 d8~ | d8 bes4 bes2 bes8 | 
  d d ees ees e e f bes | \break-in r2 bes,8 bes c d~ \break-out
  \break

  \mark \parteA
  d4 f2.~ | f2 d8 c cis d~ | d4 g2.~ | g2 d8 cis d4 |
  d bes bes g8 bes~ | bes2 d8 cis d d~ | d4 bes f'8 e ees d~ | \coda d2 r2 |
  \fin
  \break
  
  % Coda. Esto es para la ligadura inicial.
  \hideNotes 
  d1~ \coda |  
  \unHideNotes
  
  
  d2 d8 cis d d~ | d4 bes bes'8 a g f~ | f4 f g8 f g bes~ | bes1~ | bes
   
  \fin
}

<<
  \cifrado
  \melo
>>