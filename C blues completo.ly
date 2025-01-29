\version "2.24.1"
\header {
  title = "Blues en C (Concert) para Saxofón Alto"
  composer = "Tu nombre"
  instrument = "Saxofón Alto en Eb"
}

\score {
  \new Staff {
    \relative c' {
      \key a \major
      \time 4/4
      \tempo "Shuffle" 4 = 90
      \set Score.currentBarNumber = #1

      % Compases 1-4 (I)
      a8\mf c e a c e a4 | g,8 bes e g bes e g4 |
      a,,8 c e a c e a4 | f8 a d f a d f4 |

      % Compases 5-8 (IV)
      d,8\f f a d f a d4 | c,8 e a c e a c4 |
      a,,8\p c e a c e a4 | g8 bes e g bes e g4 |

      % Compases 9-12 (V-I)
      e,8\ff g bes e g bes e4 | d,8 f a d f a d4 |
      a,,8\> c e a c e a4\! | r2 \tuplet 3/2 { a,8\mp c e } a4\fermata |
    }
  }
  \layout {
    indent = 0
    \context {
      \Score
      \override BarNumber.padding = #3
    }
  }
  \midi {}
}