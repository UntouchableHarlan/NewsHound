#encoding: UTF-8
xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.item do
      xml.ttl 30
      xml.title "Amazon Developer Blog – Week in Review May 23rd"
      xml.description "Meet Exhosim.io—a new online community tool for developers that simulates the look and feel of an Amazon Echo. With 3D JavaScript animations and Alexa Voice Service (AVS) integration, Echosim.io gives users the ability to experience a realistic interaction with Alexa capabilities and skills. Echosim.io lives in your browser, so anyone, anywhere can access it and test their Alexa skills.
        You no longer need an Alexa-enabled device to test your skills. Developers worldwide can use Echosim.io to experience Alexa."
      xml.guid "urn:uuid:1335c695-cfb8-4ebb-abbd-80da344efa6b"
      xml.pubDate "2016-05-23T00:00:00.0Z"
      xml.link "https://developer.amazon.com/public/community/blog"
    end
  end
end
