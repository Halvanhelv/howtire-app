# frozen_string_literal: true

# 5.times do
#   Image.create title: FFaker::CheesyLingo.word, url: FFaker::Image.url
# end

5.times do
  Folder.create title: FFaker::CheesyLingo.word,
    description: FFaker::Lorem.sentence
end
