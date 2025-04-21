Rails.application.routes.draw do

  get("/", {:controller => "zebra", :action => "home"}) do
  end

  get("/rock", {:controller => "zebra", :action => "rock"}) do
  end

  get("/paper", {:controller => "zebra", :action => "paper"}) do
  end

  get("/scissors", {:controller => "zebra", :action => "scissors"}) do
  end

end
