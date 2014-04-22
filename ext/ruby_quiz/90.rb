#!/usr/bin/ruby -w
# @param  . width of square
# @param  . starting row
# @param  . starting column
# Written in 2006 by Suraj N. Kurapati

=begin
  by Eric DUMINIL

  Some classmates and I used to play a lot of pen and paper games while sitting
  in the last row of the classroom.  My favorite game was this one.

  We had to fill a 5x5 board as fast as possible with numbers from 1 to 25,
  beginning at a random position and then going from one square to another:

    - jumping over 2 squares when traveling horizontally or vertically
    - jumping over 1 square when traveling diagonally.

  Here is an example with numbers from 1 to 14 (it would be impossible to keep on
  filling the board, since 1, 13, and 8 are blocking the way):

     -------------------
    |  .   1   4   .  14|
    | 10   .   .  11   6|
    |  3   .   8   2   .|
    |  .  12   5   .  13|
    |  9   .   .   .   7|
     -------------------

  Here is a completed 5x5 board:

     -------------------
    | 14   1   8  25   2|
    |  6  23  16   5  22|
    | 18  10  13  19   9|
    | 15   4   7  24   3|
    | 12  20  17  11  21|
     -------------------

  Though this game is impossible with 2x2, 3x3 or 4x4 boards, it appears that NxN
  boards can be filled when N>4 (or n=1). For example, 6x6:

     -----------------------
    | 33  21  10  32  35  11|
    | 16  26   5  13  25   6|
    |  9  31  34  22  30   1|
    |  4  20  17  27  36  12|
    | 15  23   8  14  24   7|
    | 18  28   3  19  29   2|
     -----------------------

  7x7:

     ---------------------------
    | 46  33  26   8  32  35   9|
    | 17  14   5  37  15   6  38|
    | 27  22  47  34  25  48  31|
    | 45  42  16   7  43  36  10|
    | 18  13   4  21  12   3  39|
    | 28  23  44  29  24  49  30|
    |  1  41  19   2  40  20  11|
     ---------------------------

  Here comes the quiz!

    - Write a ruby script that fills a board (with a given NxN size)
      as fast as possible
    - Try to fill the biggest board you can with this script, in a
      reasonable amount of time (let's say 48 hours minus scripting time)

  You get extra points for:

    - Finding more about this game (name, origin, related articles)
    - Filling a 5x5 board with only pen and paper
    - Filling a bigger board with only pen and paper
    - Finding the worst attempt possible for a given size. For example,
      getting stuck after 10 steps on a 5x5 board is pretty bad:

      -------------------
     |  .   6   3   .   7|
     |  .   .   9   .   .|
     |  4   1   .   5   2|
     |  .   .   .   .   8|
     |  .   .  10   .   .|
      -------------------

    - Filling a board with a cycle pattern, i.e. where you can jump from
      the last square to the first square:

       -------------------
      | 22  10   7  23  11|
      | 14  19   4   1  16|
      |  8  24  12   9   6|
      | 21   2  15  20   3|
      | 13  18   5  25  17|
       -------------------

       -----------------------
      | 16   9  27  17   8  28|
      | 35  12   6  30  13  23|
      | 26  18  15  10  19   2|
      |  5  31  34  22   7  29|
      | 36  11  25   1  14  24|
      | 33  21   4  32  20   3|
       -----------------------

  I can't wait to look at your solutions!

  I daresay that brute-forcing won't help you much (it took me 98,268,583 attempts
  and 4 days on a decent computer to fill a 10x10 board) but I don't know many
  other ways to fill a board.

  Have fun with this quiz.
=end

class Square < Array
  def initialize aWidth
    super(aWidth) { Array.new aWidth }
    @mark = 0
    @size = aWidth ** 2
  end

  # Walks this square, from the given position,
  # while marking unmarked (nil) cells.
  def walk row, col
    # skip invalid positions and marked cells
      return false if
        row < 0 or row >= length or
        col < 0 or col >= length or
        self[row][col]

    # mark the current cell
      self[row][col] = @mark += 1

    # explore adjacent paths
      if @mark >= @size or
         walk(row + 3, col    ) or # east
         walk(row + 2, col - 2) or # north east
         walk(row,     col - 3) or # north
         walk(row - 2, col - 2) or # north west
         walk(row - 3, col    ) or # west
         walk(row - 2, col + 2) or # south west
         walk(row,     col + 3) or # south
         walk(row + 2, col + 2)    # south east

        true
      else
        # unmark the current cell
          @mark -= 1
          self[row][col] = nil

        false
      end
  end

  # Pretty-prints this square.
  def to_s
    # pretty-print each row
      fmt = '|' << "%#{length.to_s.length * 2}d " * length << '|'

      lines = inject([]) do |memo, row|
        memo << fmt % row
      end

    # add a border to top & bottom
      border = '-' * lines.first.length

      lines.unshift border
      lines << border

    lines.join("\n")
  end
end

if $0 == __FILE__
  # create a square with user's parameters
    width = (ARGV.shift || 5).to_i
    square = Square.new(width)

  # walk the square from random position
    origin = Array.new(2) { (ARGV.shift || rand(width)).to_i }
    square.walk(*origin)

  # pretty-print the walked square
    puts square.to_s
end
