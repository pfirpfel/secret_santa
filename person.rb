class Person
  attr_accessor :name, :exclude, :email, :santa

  def initialize(attrs)
    self.name  = attrs["name"]
    self.exclude = attrs["exclude"]
    self.email = attrs["email"]
  end

  def can_be_santa_of?(other)
    name != other.name && !exclude.include?(other.name)
  end

  def can_swap_santas_with?(other)
    santa.can_be_santa_of?(other) && other.santa.can_be_santa_of?(self)
  end

  def to_s
    "#{name} (#{exclude})"
  end

  def with_santa
    "#{self} - santa: #{santa}"
  end

end
