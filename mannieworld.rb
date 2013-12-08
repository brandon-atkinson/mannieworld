require 'gosu'

class MannieWorld < Gosu::Window
   def initialize 
      super 1024, 768, false
      self.caption = "Mannie World"
   end

   def update
   end

   def draw
   end
end

window = GameWindow.new
window.show
