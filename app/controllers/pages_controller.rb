class PagesController < ApplicationController
  def login
    @title = "Recipes | Login"
    @header = "Login"
  end

  def contact
    @title = "Recipes | Contact"
    @header = "Contact"
  end

  def imprint
    @title = "Recipes | Imprint"
    @header = "Imprint"
  end

end
