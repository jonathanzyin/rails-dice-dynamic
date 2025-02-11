class DiceController < ApplicationController

def roll
    @num_rolls = params[:num_rolls].to_i
    @num_dice = params[:num_dice].to_i
    
    @dice_rolls = Array.new
    @num_rolls.times do
      new_roll = rand(1..@num_dice)
      @dice_rolls.push(new_roll)
    end
    
    render({ :template => "dice_templates/roll" })
  end

  def home
    render({ :template => "dice_templates/home"})

  end
end
