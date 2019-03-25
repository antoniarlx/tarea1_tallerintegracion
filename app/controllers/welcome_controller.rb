class WelcomeController < ApplicationController

  def films

    @films = JSON.parse(HTTParty.get('https://swapi.co/api/films').body)["results"]

  end

end
