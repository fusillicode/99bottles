class Bottles
  def verse bottles
    if bottles == 2
      "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles - 1} bottle of beer on the wall.
"
    elsif bottles == 1
      "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"
    elsif bottles == 0
      "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"
    else
      "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.
"
    end
  end

  def verses from, to
    from.downto(to).map { |bottles| verse bottles }.join "\n"
  end

  def song
    verses 99, 0
  end
end
