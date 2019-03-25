class WelcomeController < ApplicationController

  def films

    @films = JSON.parse(HTTParty.get('https://swapi.co/api/films').body)["results"]

  end

  def show_film

    @films = JSON.parse(HTTParty.get(params['film_url']).body)

    @films['characters'].each do |film_characters|
      @film_characters = JSON.parse(HTTParty.get(film_characters).body)["results"]

    end

  end

end
