# #encoding: UTF-8
# xml.instruct! :xml, :version => "1.0"
# xml.rss :version => "2.0" do
#   xml.channel do
#     xml.ttl 30
#     @update_items.each do |update_item|
#       xml.item do
#         xml.title update_item.titleText
#         xml.description update_item.mainText
#         xml.guid update_item.id
#         xml.pubDate update_item.updateDate
#         xml.link update_item_url(update_item)
#       end
#     end
#   end
# end


#encoding: UTF-8
xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.ttl 30
    @mundo.each do |article|
      xml.item do
        xml.title article['title']
        xml.description article['promotional_description']
        xml.guid SecureRandom.uuid
        xml.pubDate article['original_pubdate']
        xml.link request.host
      end
    end
  end
end
