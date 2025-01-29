\version "2.24.1"
\score {
  \relative c' {
    \key c \major
    \time 4/4
    \tempo "Shuffle"
    \override NoteHead.style = #'slash % Para un estilo más "blues"

    c4 ees8 f~ f g f ees | c4 ees8 f g4 f8 ees | 
  }
  \layout {
    \omit Staff.TimeSignature % Opcional: Ocultar la armadura de tiempo
  }
}