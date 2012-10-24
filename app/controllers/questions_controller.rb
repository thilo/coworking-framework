class QuestionsController < ApplicationController
  def new
    @sections = Section.all
  end
end