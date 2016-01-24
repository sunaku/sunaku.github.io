\header {
  % http://www.last.fm/music/Nanase+Hikaru/_/Honoka+na+Omoi
  title = "Honoka na Omoi"
  subsubtitle = "Thoughts about Honoka"
  subsubtitle = "(Kimi Kiss: Pure Rouge)"
  composer = "Nanase Hikaru"
  copyright = "Interpreted by Suraj N. Kurapati and engraved with LilyPond."
  tagline = "http://snk.tuxfamily.org/log/nanase-hikaru-honoka-na-omoi.html"
}

\score {
  <<
    \new PianoStaff {
      \time 4/4
      \tempo 4 = 150
      <<
        \context Staff = "Right Hand" {
          \key c \major
          \clef treble
          {
            r2
            e'4 g'4 d''4\accent
            e'4 g'4 c''2 r4
            b'2 ~ b'4
            c''2 ~ c''4

            d''2\accent g'4 c''2 r4
            b'2 g'4 c''2

            a'4 g''2\accent
            a'4 f''2
            a'4 e''2 ~ e''4 c''2

            a'4 c''1 r4
            b'8 a'8
            b'2 ~ b'4
            g'2 r4
          }
        }

        \context Staff = "Left Hand" {
          \key c \major
          \clef bass
          {
            r1
            c4 (<c e>4 g4 c'4 e'2)
            c4 (<c e>4 g4 d'4 e'2)

            a,4 (<a, c>4 e4 a4 c'2)
            a,4 (<a, c>4 e4 b4 c'2)

            d4 (<d f>4 a4 d'4 f'2)
            d4 (<d f>4 a4 e'4 f'2)

            g,4 (<g, b,>4 d4 g4 b2)
            g,4 (<g, b,>4 d4 a4 b2)
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
