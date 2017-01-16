require_relative 'produto'

class Ebook < Produto

  def matches?(query)
    ['ebook', 'digital'].include?(query)
  end

end

