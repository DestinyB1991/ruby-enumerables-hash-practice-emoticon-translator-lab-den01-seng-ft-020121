# require modules here
require 'pry'
require 'yaml'
def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
new_hash = {}

emoticons.each do |key,value|
  new_hash[key] = {}
  new_hash[key][:english] = value[0]
  new_hash[key][:japanese] = value[1]
end

new_hash
end



def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
    emoticon = library.keys.find do |key|
      library[key][:english] == emoticon
    end
    emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
emoticon = library.keys.find do |key|
  library[key][:japanese] == emoticon
end
emoticon ? emoticon : "Sorry, that emoticon was not found"
end
