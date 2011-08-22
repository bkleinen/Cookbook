class PagesController < ApplicationController

  def contact
    @title = "Recipes | Contact"
    @header = "Contact"
  end

  def imprint
    @title = "Recipes | Imprint"
    @header = "Imprint"
  end

end
