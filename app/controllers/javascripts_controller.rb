class JavascriptsController < ApplicationController
  layout nil
  def dynamic_drivers
    @drivers = Driver.find(:all)
    @cars    = Car.find(:all)
  end
end
