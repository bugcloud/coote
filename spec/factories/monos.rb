# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :mono001, :class => Mono do |m|
  m.from "uma"
  m.to "neco"
  m.body "I want some carrots."
  m.status 0
end

Factory.define :mono002, :class => Mono do |m|
  m.from "uma"
  m.to "neco"
  m.body "I want some pines."
  m.status 0
end

Factory.define :mono003, :class => Mono do |m|
  m.from "uma"
  m.to "neco"
  m.body "I want some juices."
  m.status 0
end

Factory.define :mono_error, :class => Mono do |m|
  m.from ""
  m.to ""
  m.body ""
  m.status nil 
end
