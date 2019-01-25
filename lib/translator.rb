# require modules here
require "yaml"
require "pry"

def load_library(path)
  # code goes here

  hash = YAML.load_file(path)
  new_hash = {"get_emoticon" => {}, "get_meaning" => {}}

  hash.each do |emotion, symbols|
    new_hash["get_emoticon"][symbols[0]] ||= symbols[1]
    new_hash["get_meaning"][symbols[1]] ||= emotion
  end

  new_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  library = load_library(path)


  library["get_emoticon"].each do |english_symbol, japanese_symbol|
    if emoticon == english_symbol
      return japanese_symbol
    end
  end

  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  # code goes here

  library = load_library(path)
  library["get_meaning"].each do |japanese_symbol, meaning|

    if japanese_symbol == emoticon
      return meaning
    end
  end

  return "Sorry, that emoticon was not found"
end

#library = {"get_emoticon"=>
#  {"O:)"=>"☜(⌒▽⌒)☞",
#   ">:("=>"ヽ(ｏ`皿′ｏ)ﾉ",
#   "%)"=>"(゜.゜)",
#   ":$"=>"(#^.^#)",
#   "><>"=>">゜))))彡",
#   "8D"=>"(^0_0^)",
#   "=D"=>"(￣ー￣)",
#   ":)"=>"(＾ｖ＾)",
#   ":'("=>"(Ｔ▽Ｔ)",
#   ":o"=>"o_O",
#   ";)"=>"(^_-)"},
# "get_meaning"=>
#  {"☜(⌒▽⌒)☞"=>"angel",
#   "ヽ(ｏ`皿′ｏ)ﾉ"=>"angry",
#   "(ΘεΘ;)"=>"bored",
#   "(゜.゜)"=>"confused",
#   "(#^.^#)"=>"embarrased",
#   ">゜))))彡"=>"fish",
#   "(^0_0^)"=>"glasses",
#   "(￣ー￣)"=>"grinning",
#   "(＾ｖ＾)"=>"happy",
#   "(*^3^)/~☆"=>"kiss",
#   "(Ｔ▽Ｔ)"=>"sad",
#   "o_O"=>"surprised",
#   "(^_-)"=>"wink"}}
















#
