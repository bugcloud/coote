# Read about factories at http://github.com/thoughtbot/factory_girl
require "#{File.expand_path('../', __FILE__)}/comments.rb"

comment001 = Factory.build(:comment001)
comment002 = Factory.build(:comment002)
comment003 = Factory.build(:comment003)

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

Factory.define :mono_with_comment, :class => Mono do |m|
  m.from "uma"
  m.to "neco"
  m.body "I have some comments."
  m.status 0
  m.comments [comment001, comment002, comment003]
end

Factory.define :mono_error, :class => Mono do |m|
  m.from ""
  m.to ""
  m.body ""
  m.status nil 
end

Factory.define :mono_def, :class => Mono do |m|
  m.from nil
  m.to ""
  m.body "aa"
  m.status 0 
end
