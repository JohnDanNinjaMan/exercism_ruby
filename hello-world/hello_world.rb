#Program to take in name of user, then output "hello <name>"
#or "hello world" if no name is given.
class HelloWorld
  # Uses a default string "World" if no argument is passed to method.
  def self.hello(name="World")
    return "Hello, #{name}!"
  end
end
