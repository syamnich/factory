# FactoryGem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/factory_gem`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'factory_gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install factory_gem

## Usage

```ruby
Customer = Factory.new(:name, :address, :zip)

 
joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
 
puts joe.name
puts joe["name"]
puts joe[:address]
puts joe[2]


Customer1 = Factory.new(:name, :address) do
  def greeting
    "Hello, #{name}!"
  end
end
puts Customer1.new("Dave", "123 Main").greeting
```