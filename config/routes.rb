Rails.application.routes.draw do

  get("/dice/:num_rolls/:num_dice", { :controller => "dice", :action => "roll"})
  get("/", { :controller => "dice", :action => "home"})

end
