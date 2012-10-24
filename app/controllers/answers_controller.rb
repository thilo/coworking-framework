class AnswersController < ApplicationController
  
  def create
    
    results = params[:answers].map do |section, section_results|
       section_results.values.map(&:to_i).sum
    end
    @answer = Answer.create! results: results
    
  end
  
  def show
    @answer = Answer.where(secret: params[:id]).first
  end
  
end