require 'spec_helper'

describe ApplicationHelper do
  it "#hbr should change linebreak -> <br/>" do
    expectString = "&lt;a<br />\nb"
    helper.hbr("<a\nb").should == expectString
  end
end
