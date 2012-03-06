class Phrases < Array

  def initialize
    replace YAML.load_file(File.dirname(__FILE__) + "/../db/phrases.yml")
    @drawn = []
  end

  def select
    result = candidates.draw.first
    @drawn << result
    result
  end
  
  def dados
    linha = select
    linha = linha.split('|')
    autor = "anonimo"
    autor = linha[1] unless linha[1].nil? or linha[1].empty?
    {"texto" => linha[0], "autor" => autor}
  end

  def candidates
    self - @drawn
  end

end
