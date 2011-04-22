require 'spec_helper'

describe :routes do
  describe 'GET "index"' do
    it { {get: '/'}.should route_to(:controller => 'top', :action => 'index') }
  end
end
