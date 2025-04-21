class ZebraController < ApplicationController

  def home
    render({:template => "game_templates/home"})
  end

  def rock
    @rps = rand(1..3)
    # rock = 1, paper=2, scissors = 3
    if @rps==1
      @outcome = "tied"
      @theyplayed = "rock"
    elsif @rps==2
      @outcome = "lost"
      @theyplayed = "paper"
    else
      @outcome = "won"
      @theyplayed = "scissors"
    end

    # render is similar to the ERB method but its much more flexible. 
    # in order for it to use ERB files we use :template and then the path of our erb file as a string
    render({:template => "game_templates/play_rock"})
  end 

  def paper
    @rps = rand(1..3)
    # rock = 1, paper=2, scissors = 3
    if @rps==1
      @outcome = "won"
      @theyplayed ='rock'
    elsif @rps==2
      @outcome = "tied"
      @theyplayed = 'paper'
    else
      @outcome = "lost"
      @theyplayed = "scissors"
    end
    
    render({:template => "game_templates/play_paper"})
  end

  def scissors
    @rps = rand(1..3)
    # rock = 1, paper=2, scissors = 3
    if @rps==1
      @outcome = "lost"
      @theyplayed ='rock'
    elsif @rps==2
      @outcome = "won"
      @theyplayed = 'paper'
    else
      @outcome = "tied"
      @theyplayed = "scissors"
    end

    render({:template => "game_templates/play_scissors"})
  end

end
