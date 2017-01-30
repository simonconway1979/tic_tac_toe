require 'pry'

class View

  attr_reader :view

  def update_model(model)
    @view = [model[:row_0], model[:row_1], model[:row_2]]
  end

  def format
    view.map!{ |row| row.map{ |cell| cell == nil ? (cell = " ") : (cell)}}
  end

  def show
    puts "       1     2     3  "
    puts "\n A     " + view[0][0] + "  |  " + view[0][1] + "  |  " + view[0][2]
    puts "     -----------------"
    puts " B     " + view[1][0] + "  |  " + view[1][1] + "  |  " + view[1][2]
    puts "     -----------------"
    puts " C     " + view[2][0] + "  |  " + view[2][1] + "  |  " + view[2][2] + "\n\n\n"
  end

end
