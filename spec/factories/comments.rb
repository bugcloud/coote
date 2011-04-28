# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :comment001, :class => Comment do |c|
  c.name "usa"
  c.body "no"
end

Factory.define :comment002, :class => Comment do |c|
  c.name "inu"
  c.body "yes"
end

Factory.define :comment003, :class => Comment do |c|
  c.name "tiger"
  c.body "aho"
end

Factory.define :error_comment, :class => Comment do |c|
  c.name ""
  c.body ""
end  
