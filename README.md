# ruby-design-patterns

## Steps:
* Create a `Gemfile` with a gem inside
* Run `bundler`
* Run `rspec --init`
* Run `bundle install --binstubs`

Ref:
* https://bundler.io/v1.12


# Design Patterns:

## Classes:
* When building a class, you should not reach into the inside of the class and grab values out. Ideally, you will have a static method that returns an object. All the values that you need from the class will delivered via the instance that gets instantiated from the static method on the class. You can have more than one static method on the class that instantiates an instance of itself in different ways, but all the the data you grab from the class should come out of an instantiated version of this class.