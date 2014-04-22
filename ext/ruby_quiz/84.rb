# Written in 2006 by Suraj N. Kurapati
=begin
  pp Pascal (#84)

  by Dirk Meijer

  I recently showed a friend what an amazing language Ruby was, by quickly
  programming up a script to calculate Fibonacci's Sequence, and his first
  response was: "Can you do Pascal's Triangle?"  So I did, which proved harder
  than expected.

  For those not familiar with Pascal's Triangle, it is very similar to Fibonacci's
  Sequence. It's a pyramid of numbers. The outside of the pyramid is all ones, the
  other numbers are the sum of the two numbers above, like this:

        1
       1 1
      1 2 1
     1 3 3 1
    1 4 6 4 1

  The input and output should be as follows:

    $ ruby pp_pascal.rb 10
                                1
                             1     1
                          1     2     1
                       1     3     3     1
                    1     4     6     4     1
                 1     5    10    10     5     1
              1     6    15    20    15     6     1
           1     7    21    35    35    21     7     1
        1     8    28    56    70    56    28     8     1
     1     9    36    84    126   126   84    36     9     1

  A number should be given as command-line argument.  This is the amount of rows
  the triangle has. For the output, there should be spacing between the numbers
  based on the size of the numbers with the most digits, so it will look like a
  proper triangle.

  Good luck!

  [Editor's Note:  If you are working through Chris Pine's Learn to Program, you
  can do this problem using only things you learned in the first eight chapters.
  Since he doesn't teach how to grab the row count in those pages though, just add
  this as the first line of your program:  `rows = ARGV[0].to_i]`.  After that,
  the rows variable will hold the number of rows to print.  --JEG2]
=end

class PascalTriangle
  # Creates a triangle with the given height.
  def initialize aHeight
    src = @tri = []

    aHeight.times do
      dst = [1]

      src.each_index do |i|
        dst << src[i] + (src[i.next] || 0)
      end

      @tri << dst
      src = dst
    end
  end

  def to_a
    @tri
  end

  def to_s
    if base = @tri.last
      itemWidth = base.max.to_s.length * 2
      baseWidth = base.length * itemWidth

      itemFmt = "%-#{itemWidth}i"
      rowFmt = ''

      @tri.inject('') do |triStr, row|
        rowFmt << itemFmt
        rowStr = rowFmt % row

        triStr << rowStr.center(baseWidth) << "\n"
      end
    end
  end
end


puts PascalTriangle.new(ARGV.first.to_i) if $0 == __FILE__
