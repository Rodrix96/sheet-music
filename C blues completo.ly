\version "2.24.1"
\header {
  title = "Blues en C para Saxofón Alto"
  composer = "Ejercicio por ChatGPT"
  instrument = "Saxofón Alto (en Mi♭)"
}

\score {
  \new Staff {
    \relative c'' {
      \key c \major
      \time 4/4
      \tempo "Moderato" 4 = 100

      % Compases 1-4 (C7)
      c8\accent( ees) f g~ g f ees d | c4 r8 ees8\staccato f\staccato g\staccato f\staccato ees\staccato |
      c8\accent( ees) f g~ g f ees d | c4 r8 g'8\tenuto( f ees d c) |

      % Compases 5-8 (F7 - C7)
      f8\accent( a) bes c~ c bes a g | f4 r8 a8\staccato bes\staccato c\staccato bes\staccato a\staccato |
      c,8\accent( ees) f g~ g f ees d | c4 r8 ees8\staccato( d c bes a) |

      % Compases 9-12 (G7 - F7 - C7 - G7)
      bes8\accent( d) ees f~ f ees d c | bes4 r8 d8\staccato ees\staccato f\staccato ees\staccato d\staccato |
      c8\accent( ees) f g~ g f ees d | c4 r8 g'8\staccato( f ees d c) |
    }
  }
  \layout {
    indent = 0
    \context {
      \Staff
      \override TimeSignature.style = #'numbered
    }
  }
  \midi {}
}