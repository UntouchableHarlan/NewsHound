class Telemundo

  def self.fetch
    endpoint = "http://stage-api.nbcuni.com/telemundo/v1/content/article/?limit=5&category=deportes"

    headers = {
      "api_key" => "3skg7sqckwerht69jufrqjus",
    }

    params = {
      "limit": 5,
      "category": "deportes"
    }

    HTTParty.get( endpoint, :query => params, :headers => headers)
  end

end
