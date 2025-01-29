\version "2.24.1"
\header {
  title = "Blues en C para Saxofón Alto (Eb)"
  composer = "Tu nombre"
  instrument = "Saxofón Alto"
}

\score {
  \new Staff {
    \relative c' {
      \key c \minor % Blues en C menor (equivalente a la escala de blues)
      \time 4/4
      \tempo "Shuffle" 4 = 90
      \set Score.rehearsalMarkFormatter = #format-mark-alphabet
      \clef treble

      % === Escala de blues con articulaciones ===
      \mark \default
      c4\mf^\markup { \bold "1. Escala con staccato" } ees f g |
      gis8( a bes4) g f8 ees |
      c4 ees f g |
      bes8( c d4) c2 \breathe |

      % === Lick 1: Síncopas y bends sugeridos ===
      \mark \default
      \break
      c8^\markup { \bold "2. Lick rítmico" } ees f g~ g f ees c |
      ees8 f g bes~ bes4 r8 g |
      f8 ees c ees f g bes c |
      d8 c bes g f4 r4 \breathe |

      % === Solo sobre progresión de 12 compases ===
      \mark \default
      \break
      \repeat volta 2 {
        % Compases 1-4 (C7)
        c8^\markup { \bold "3. Solo de blues" } ees f g a bes c d |
        ees4 d8 c bes a g f |
        ees8 d c bes a g f ees |
        d8 c bes a g4 r4 \breathe |

        % Compases 5-8 (F7)
        f8 a c ees g bes d f |
        ees8 d c bes a g f ees |
        c8 ees g bes a g f ees |
        d8 c bes a g4 r4 \breathe |

        % Compases 9-12 (G7 -> C7)
        bes8 d f a g f ees d |
        c8 ees g bes a g f ees |
        d8 f a c bes a g f |
        ees8 d c bes c4 r4 |
      }
    }
  }
  \layout {
    indent = 0
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
  \midi {}
}