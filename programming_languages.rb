require 'pry'
def reformat_languages(languages)

  languages.keys.each { |key| langs[key].each {|sub_hsh| sub_hsh.last[:style] = key }}

end
