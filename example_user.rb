class User
  attr_accessor :first_name, :last_name, :email

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def formatted_email
    "#{full_name} #{@email}"
  end

  def alphabetical_name
    "#{@first_name}, #{@last_name}"
  end
end

p example_user = User.new
p example_user.first_name = "Masa"
p example_user.last_name = "Masa"
p example_user.email = "Naga"
p example_user.formatted_email
p example_user.full_name.split == example_user.alphabetical_name.split(', ')
