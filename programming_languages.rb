require 'pry-byebug'
def reformat_languages(languages)
  languages.each_with_object({}) do |(key,value), hsh|
    languages[key].keys.each do |lang|
      if !hsh[lang]
        hsh[lang] = {
          :type => languages[key][lang][:type],
          :style => [key]
        }
      else
        hsh[lang][:style] << key
      end
    end
  end
end
