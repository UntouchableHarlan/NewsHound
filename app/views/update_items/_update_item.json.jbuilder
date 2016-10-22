json.extract! update_item, :id, :uid, :updateDate, :titleText, :mainText, :redirectionUrl, :created_at, :updated_at
json.url update_item_url(update_item, format: :json)