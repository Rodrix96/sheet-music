\version "2.24.1"
\header {
  title = "Blues en C para Saxofón"
  composer = "Ejercicio Completo"
}

\score {
  \relative c' {
    \key c \major
    \time 4/4
    \tempo "Shuffle" 4 = 90

    % Compases 1-4 (C7)
    c8\mf ees g c~ c ees d c | g4 ees8 c~ c4 r | 
    c8 ees g c ees d c g | ees c g ees c4 r8 g' |

    % Compases 5-6 (F7)
    \key f \major
    f8\f a c f~ f a g f | c4 a8 f~ f4 r8 c' |

    % Compases 7-8 (C7)
    \key c \major
    c,8 ees g c ees d c g | ees c g' ees c4 r8 ees |

    % Compases 9-12 (G7 - F7 - C7 - G7)
    \key g \major
    g8 b d g~ g b a g | 
    \key f \major
    f8 a c f~ f a g f |
    \key c \major
    c,8 ees g c ees-> d-> c-> g-> |
    \key g \major
    g4\fermata r8 b\staccato g4 r \bar "|."
  }
  \layout {
    indent = 0
    \context {
      \Staff
      \override DynamicTextSpanner.style = #'none
    }
  }
  \midi {}
}