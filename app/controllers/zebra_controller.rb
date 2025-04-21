class ZebraController < ApplicationController
  def rock
    @comp_move = ["rock","paper","scissors"].sample
    if @comp_move=="rock"
      @outcome = "tied"
    elsif @comp_move=="paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({:template =>"game_templates/play_rock"})
  end
  def paper
    @comp_move = ["rock","paper","scissors"].sample
    if @comp_move=="rock"
      @outcome = "lost"
    elsif @comp_move=="paper"
      @outcome = "tied"
    else
      @outcome = "won"
    end
    render({:template =>"game_templates/play_paper"})
  end
  def scissors
    @comp_move = ["rock","paper","scissors"].sample
    if @comp_move=="rock"
      @outcome = "lost"
    elsif @comp_move=="paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    render({:template =>"game_templates/play_scissors"})
  end

  def rules
    @comp_move = ["rock","paper","scissors"].sample
    render({:template =>"game_templates/rules"})
  end
end
