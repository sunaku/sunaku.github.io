\header {
  % http://www.last.fm/music/%E5%9D%82%E6%9C%AC%E9%BE%8D%E4%B8%80/_/Solitude
  title = "Solitude"
  subsubtitle = "(from the Tony Takitani soundtrack)"
  composer = "Ryuichi Sakamoto"
  copyright = "Interpreted by Suraj N. Kurapati and engraved with LilyPond."
  tagline = "http://snk.tuxfamily.org/log/ryuichi-sakamoto-solitude.html"
}

\include "english.ly"

\score {
  <<
    \new PianoStaff {
      \time 4/4
      \tempo Moderato 4 = 110
      <<
        \context Staff = "Right Hand" {
          \key c \major
          \clef treble
          {
            \repeat unfold 2 {
              r1
              r1
              r1
              r1
              r1
              r1
              r1
              r1
            }

            \repeat unfold 2 {
              gs'1
              g'1
              ds'1
              g'1

              gs'1
              as'1
              gs'1
              g'1
            }
          }
        }

        \context Staff = "Left Hand" {
          \key c \major
          \clef bass
          {
            \repeat unfold 2 {
              f4 gs4 c'4 gs4
              f4 gs4 c'4 gs4
              c4 g4 gs4 g4
              c4 g4 gs4 g4
              cs4 gs4 c'4 gs4
              cs4 gs4 c'4 gs4
              ds4 as4 cs'4 as4
              e4 as4 cs'4 as4

              f4 gs4 c'4 gs4
              f4 gs4 c'4 gs4
              c4 gs4 as4 gs4
              c4 gs4 as4 gs4
              cs4 gs4 c'4 gs4
              cs4 gs4 c'4 gs4
              ds4 gs4 as4 gs4
              ds4 g4 as4 g4
            }
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
