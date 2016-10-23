#encoding: UTF-8
xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    @update_items.each do |update_item|
      xml.item do
        xml.ttl 30
        xml.title update_item.titleText
        xml.description update_item.mainText
        xml.guid update_item.id
        xml.pubDate update_item.updateDate
        xml.link update_item_url(update_item)
      end
    end
  end
end
