require_relative 'produto'

class Ebook

  include Produto

  def matches?(query)
    ['ebook', 'digital'].include?(query)
  end

end

