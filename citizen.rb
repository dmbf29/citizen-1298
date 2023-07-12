class Citizen
  attr_reader :age, :first_name, :last_name
  # the reader is creating a method called: age
  # def age
  #   @age
  # end

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def can_vote?
    age >= 18
  end

  def full_name
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end

end
# yann = Citizen.new('Yann', 'Klein', 15)
# yann.full_name
# yann.can_vote?
