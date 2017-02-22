class WelcomeController < ApplicationController

  def index

    @concerts = Concert.order 'created_at DESC'
    @books = Book.order 'created_at DESC'

  end




  def show
    
  end



  def about
    
  end

end
