require 'spec_helper'

describe TopController do
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

  describe "GET 'index'" do
    it "should gets all Mono" do
      monos = Mono.all
      Mono.should_receive(:all).and_return(monos)
      monos.should_receive(:order_by).with(:created_at.desc).and_return([@mono_carrot, @mono_pine, @mono_juice])
      get 'index'
      assigns[:monos].size.should == 3
      assigns[:monos].include?(@mono_carrot).should == true
      assigns[:monos].include?(@mono_pine).should == true
      assigns[:monos].include?(@mono_juice).should == true
      response.should be_success
    end
  end

end
