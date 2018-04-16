class NewsController < ApplicationController
  def index
    #AddNews()
    @news = New.all
  end

  def AddNews
    New.delete_all
    news = Cryptocompare::News.all
    news.map{|t|
      noticia = Hashie::Mash.new(t)
        New.create(
          id: noticia.id,
          source: noticia.source_info.name,
          source_img: noticia.source_info.img,
          language: noticia.source_info.lang,
          title: noticia.title,
          url: noticia.url,
          body: noticia.body,
          published_on: noticia.published_on,
          image_url: noticia.imageurl,
          categories: noticia.categories,
          tags: noticia.tags
          )
    }
  end
end
