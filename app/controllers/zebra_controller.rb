class ZebraController < ApplicationController
  def giraffe
    # render is similar to the ERB method but its much more flexible. 
    # in order for it to use ERB files we use :template and then the path of our erb file as a string
    
    #render({ :plain => "Howdy"})
    render({:template => "game_templates/play_rock.html.erb"})
  end 
end
