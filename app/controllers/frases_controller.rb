require "open-uri"
require "nokogiri"
require 'json'

class FrasesController < ApplicationController
  def index
    frases = Frase.all
    render json: { quotes: frases }
  end
  
  # def show
  #   frase = Frase.friendly.find(params[:id])
  #   render json: { quotes: frase }
  # end

  def show
    # tem que ser recursivo!
    if !Frase.friendly.find(params[:id])
      url = "http://quotes.toscrape.com/tag/#{params[:id]}/"
      
      html_file = open(url).read
      html_doc = Nokogiri::HTML(html_file)
      # frase = JSON.generate(html_doc)
      
      render json: { 
                      "quotes": [
                        {
                          "quote": html_doc.search('.quote .text').first.text,
                          "author": html_doc.search('.quote .author').first.text,
                          "author-about": html_doc.search('.quote span a').first,
                          "tags": html_doc.search('.quote .tags a').text.split
                        }
                      ]
                    }
    else

    end
  end
end


# {
  # "quotes": [
    # {
      # "quote": "frase",
      # "author": "nome do autor",
# "author_about": "link para o perfil do autor",
# "tags": ["tag1", "tag2"]
# }
# ]
# }


# p html_doc.search('.quote .text').first.text
# p html_doc.search('.quote .author').first.text
# p html_doc.search('.quote span a').first.attr(value)
# p html_doc.search('.quote .tags').text
        



# render json: { 
        #                 "quotes": [
        #                   {
        #                     "quote": html_doc.search('.quote .text').first.text,
        #                     "author": html_doc.search('.quote .author').first.text,
        #                     "author-about": html_doc.search('.quote span a').first,
        #                     "tags": html_doc.search('.quote .tags').text
        #                   }
        #                 ]
        #               }