class Article < ApplicationRecord
    attr_accessor :body, :title
    translates :title, :body
end
