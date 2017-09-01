def reformat_languages(languages)
  new_hash = languages[:oo].merge(languages[:functional])
  new_hash.each do |language, properties|
    new_hash[language][:style] = []
  end

  languages.each do |style, examples|
    examples.each do |language, properties|
      new_hash[language][:style] << style
    end
  end

  new_hash
end
