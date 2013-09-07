class DemosController < ApplicationController
  # Demos work just like pages, except they render full
  # screen with no wrapper etc.
  def show
    render :template => template_name, :layout => 'empty'
  end

  def template_name
    "demos/#{params[:id]}"
  end
end
