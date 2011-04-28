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
    @mono_with_comment = Factory.build(:mono_with_comment)
    @mono_with_comment.save!
  end

  after(:each) do
    Mono.delete_all
    @mono_carrot = nil
    @mono_pine = nil
    @mono_juice = nil
    @mono_with_comment = nil
  end

  context "validations" do
    it "body, statusは必須" do
      error = Factory.build(:mono_error)
      error.should have(1).errors_on(:body)
      error.should have(1).errors_on(:status)
    end
  end

  context "default value" do
    it "body, statusは必須" do
      mono_def = Factory.build(:mono_def)
      mono_def.save.should == true
      m = Mono.find(mono_def.id)
      m.from.should == "Anonymous"
      m.to.should == "|:3ミ"
    end
  end

  context "class methods" do
    it "Mono.status_request は0" do
      Mono.status_request.should ==  0
    end

    it "Mono.status_will は1" do
      Mono.status_will.should ==  1
    end

    it "Mono.status_done は2" do
      Mono.status_done.should ==  2
    end

    it "Mono.status_deny は4" do
      Mono.status_deny.should == 99 
    end

    it "Mono.status_request_text は'買って'" do
      Mono.status_request_text.should == '買って'
    end

    it "Mono.status_will_text は'買ってくる'" do
      Mono.status_will_text.should == '買ってくる' 
    end

    it "Mono.status_done_text は'買ってきた'" do
      Mono.status_done_text.should == '買ってきた' 
    end

    it "Mono.status_deny_text は'ダメ'" do
      Mono.status_deny_text.should == 'ダメ' 
    end
  end

  context "embeds_many comments" do
    it "should embeds_many comments(Comment class)" do
      @mono_with_comment.comments.size.should == 3
      @mono_with_comment.comments[0].name.should == "usa"
      @mono_with_comment.comments[0].body.should == "no"
      @mono_with_comment.comments[1].name.should == "inu"
      @mono_with_comment.comments[1].body.should == "yes"
      @mono_with_comment.comments[2].name.should == "tiger"
      @mono_with_comment.comments[2].body.should == "aho"
    end
  end
end
