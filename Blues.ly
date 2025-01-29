\version "2.24.1"

\header {
  title = "Blues en Bb para Saxofón"
  composer = "Tu nombre"
}

\score {
  \new Staff {
    \relative c' {
      \key bes \major
      \time 4/4
      \tempo "Moderato"
      
      % Compás 1
      bes8 d f bes d f bes4 |
      % Compás 2
      ees,8 g bes ees g bes ees4 |
      % Compás 3
      bes,8 d f bes d f bes4 |
      % Compás 4
      f8 a c f a c f4 |
    }
  }
  \layout {
    indent = 0  % Elimina la sangría del pentagrama
  }
  \midi {}
}