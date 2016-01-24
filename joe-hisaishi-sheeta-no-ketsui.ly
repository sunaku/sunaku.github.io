\header {
  title = "Sheeta no Ketsui"
  subtitle = "Sheeta's Decision"
  subsubtitle = "(Laputa: Castle in the Sky)"
  composer = "Joe Hisaishi"
  copyright = "Interpreted by Suraj N. Kurapati and engraved with LilyPond."
  tagline = "http://snk.tuxfamily.org/log/joe-hisaishi-sheeta-no-ketsui.html"
}

\include "english.ly"

\score {
  <<
    \new PianoStaff {
      \time 2/4
      \tempo Andante 4 = 90
      <<
        \context Staff = "Right Hand" {
          \key c \major
          \clef treble
          {
            a'8 c''8 e''2.
            d''8 g''2. r8
            a''8 e''2. r8

            r2 r2

            a'8 c''8 e''2.
            d''8 g''2. fs''8
            g''8 a''8 e''4

            r2 r2

            r4 r8
            e''8 d''8 c''8
            b'8. a'16 e''2 r8
            a'8 b'8. a'16 e''2 r8
            c''8 d''4 g''2
            r2

            \repeat unfold 2 {
              r4 g''4 a''4 b''2 r4
              r2
              r8 e''8 d'''8. c'''8. b''8 b''8. a''16
            }
            \alternative {
              { a''2 r2 }
              { a''4. }
            }

            c'''8 b''8 a''8 g''4.
            c''8 g''4 f''8 e''8 f''4.
            a'8 f''4 e''8 d''8 e''4.
            r8 r4
            r2
            r2 d''4
            <e'' a'>2.
          }
        }

        \context Staff = "Left Hand" {
          \key c \major
          \clef bass
          {
            \repeat unfold 2 {
              \repeat unfold 2 {
                r4 a,,8 e,8 a,8 b,8 c4
              }

              \repeat unfold 2 {
                r4 a,,8 e,8 c4 b,8 a,8
              }
            }

            \repeat unfold 2 {
              r4 f,,8 c,8 a,2
            }

            \repeat unfold 2 {
              r4 g,,8 d,8 b,2
            }

            \repeat unfold 2 {
              r4 a8 e'8 b'2
            }

            \repeat unfold 2 {
              r4 f8 c'8 a'2
            }

            \repeat unfold 2 {
              r4 a8 e'8 b'2
            }

            r4 f8 c'8 a'2
            r4 e8 b8 g'2

            r4 d8 a8 f'2
            r4 a,8 e8 c'2
            r4 a,8 e8 b4

            c'2. r2
          }
        }
      >>
    }
  >>

  \midi {
  }

  \layout {
  }
}
