require_relative 'produto'

class Ebook

  include Produto

  def matches?(query)
    ['ebook', 'digital'].include?(query)
  end

  def possui_reimpressao?
    @possui_reimpressao
  end

end

