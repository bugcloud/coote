# coding: utf-8
require 'spec_helper'

describe Comment do
  before(:each) do
  end

  after(:each) do
  end

  context "validations" do
    it "name, bodyは必須" do
      error_comment = Factory.build(:error_comment)
      error_comment.should have(1).errors_on(:name)
      error_comment.should have(1).errors_on(:body)
    end
  end
end
