class Mannie
   def initialize(window)
      @image = Gosu::Image.new(window, "C:\Users\brandon\Desktop\mannie-head.png", false)
      @x = @y = @vel_x = @vel_y = @angle = 0.0
      @score = 0
   end

   def turn_left
      @angle -= 4.5
   end

   def turn_right
      @angle += 4.5
   end

   def accelerate
      @vel_x += Gosu::offset_x(@angle, 0.5)
      @vel_y += Gosu::offset_y(@angle, 0.5)
   end

   def move
      @x += @vel_x
      @y += @vel_y
      @x %= 1024
      @y %= 768

      @vel_x *= 0.95
      @vel_y *= 0.95
   end

   def draw
      @image.draw_rot(@x, @y, 1, @angle)
   end
   
end
