class WelcomeController < ApplicationController

  def index

    @concerts = Concert.order 'created_at DESC'
    @books = Book.order 'created_at DESC'

  end

  def show

  end

  def search

    if !params[:search_params].nil? && !params[:search_params].to_s.strip.empty?
      @concert_results = Concert.search(params[:search_params])
      @book_results = Book.search(params[:search_params])
      @event_results = Event.search(params[:search_params])
      @search_results = @concert_results + @book_results + @event_results
    elsif params[:search_params].nil? || params[:search_params].to_s.strip.empty?
      redirect_back(fallback_location: root_path) and return
      flash[:alert] = "You must type something in the search bar."
    end

    if @search_results.nil? || @search_results.empty?
      redirect_back(fallback_location: root_path)
      flash[:alert] = "Sorry! There were no results matching your search."
    end
  end


  def about

  end

end
