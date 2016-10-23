class Telemundo

  def self.fetch(category='deportes')
    endpoint = "http://stage-api.nbcuni.com/telemundo/v1/content/article/"

    headers = {
      "api_key" => "3skg7sqckwerht69jufrqjus",
    }

    params = {
      "limit": 5,
      "category": category
    }

    HTTParty.get( endpoint, :query => params, :headers => headers)
  end

end
