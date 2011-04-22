#coding: utf-8
require 'spec_helper'

describe Mono do
  before(:all) do
    Mono.delete_all
  end

  before(:each) do
    @mono_carrot = Factory.build(:mono001)
    @mono_carrot.save!
    @mono_pine = Factory.build(:mono002)
    @mono_pine.save!
    @mono_juice = Factory.build(:mono003)
    @mono_juice.save!
  end

  after(:each) do
    Mono.delete_all
    @mono_carrot = nil
    @mono_pine = nil
    @mono_juice = nil
  end

  context "validations" do
    it "from, to, body, statusは必須" do
      error = Factory.build(:mono_error)
      error.should have(1).errors_on(:from)
      error.should have(1).errors_on(:to)
      error.should have(1).errors_on(:body)
      error.should have(1).errors_on(:status)
    end
  end
end
