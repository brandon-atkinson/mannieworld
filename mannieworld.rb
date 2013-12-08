require 'gosu'
require_relative 'mannie'

class MannieWorld < Gosu::Window
   def initialize 
      super 1024, 768, false
      self.caption = "Mannie World"

      @mannie = Mannie.new(self)
      @mannie.warp(512, 384)
   end

   def update
      if button_down? Gosu::KbLeft or button_down? Gosu::GpLeft then 
         @mannie.turn_left
      end
      if button_down? Gosu::KbRight or button_down? Gosu::GpRight then
         @mannie.turn_right
      end
      if button_down? Gosu::KbUp or button_down? Gosu::GpButton0 then
         @mannie.accelerate
      end

      @mannie.move
   end

   def draw
      @mannie.draw
   end
end

def button_down(id)
   if id == Gosu::KbEscape
      close
   end
end

window = MannieWorld.new
window.show
