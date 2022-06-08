class Person
  def initialize(hash)
    hash.each do |k,v| 
      self.class.attr_accessor(k)
      self.send("#{k}=", v)
    end
  end
end