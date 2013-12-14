class Straya < Flower::Command
  listen_to /straya|australia/i

  STRAYA = %w[
    http://sphotos-b.ak.fbcdn.net/hphotos-ak-ash3/643913_358178277603215_239658601_n.jpg
    http://i.imgur.com/1RNVR7k.jpg
    http://www.cartographersguild.com/attachments/finished-maps/48055d1347022550-straya-whats-left-map-straya-bleed-flat.jpg
    https://i3.sndcdn.com/artworks-000039122469-fviok4-t500x500.jpg?d53bf9f
    http://ih1.redbubble.net/image.13105561.6888/poster,375x360,ffffff.jpg
    http://i.imgur.com/0XSV2TS.jpg
    http://d24w6bsrhbeh9d.cloudfront.net/photo/5896368_700b.jpg
    http://www.strayacunt.com.au/wp-content/gallery/straya-pictures/kookaburra_turnin_sausages_straya.jpg?i=1571075229
    http://i.imgur.com/IJ8vJtU.jpg
    http://www.shockmansion.com/wp-content/myimages/2013/11/tn_Posted-On-Shock-Mansion-291.jpg
    http://image.hotrod.com/f/eventcoverage/hrdp_1304_straya_google_it_727ci_of_australian_mayhem/42174170/hrdp-1304-18%2Bstraya-google-it-727ci-of-australian-mayhem%2Bblue-car-burnout.jpg
    http://static2.fjcdn.com/comments/I+have+so+many+different+Straya+pictures+they+re+all++_aee26c55ed7a274d4838cb0650712351.jpg
    http://memecrunch.com/meme/EGA6/straya/image.png
    http://images.cdn.bigcartel.com/bigcartel/product_images/89885786/max_h-1000+max_w-1000/StrayaBack_700.jpg
    https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-frc3/p480x480/1471887_204969193024593_1198559900_n.jpg
    http://images.smh.com.au/2013/03/20/4124148/giantcroc-620x349.jpg
    http://resources1.news.com.au/images/2013/11/23/1226766/938517-mauricio-ruiz-barroso.jpg
    http://4.bp.blogspot.com/-DIVKHSSv2pg/Uih38K2VL3I/AAAAAAAAABs/X7fNs6gTzTE/s400/NT+News+5-9-13+page+1.jpg
    http://resources1.news.com.au/images/2013/11/27/1226769/393333-santa-fun-run.jpg
  ]

  def self.description
    "Straya, mate!"
  end

  def self.listen(message)
      message.say STRAYA.sample
  end
end