class Converter
  def initialize(from, to, &block)
    @from = from
    @to = to
    self.class.send(:define_method, :convert, &block)
  end
end