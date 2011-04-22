require 'spec_helper'

describe :routes do
  describe 'GET "root"' do
    it { {get: '/'}.should route_to(:controller => 'top', :action => 'index') }
  end

  describe 'GET "new_mono"' do
    it { {get: '/mono/new'}.should route_to(:controller => 'mono', :action => 'new') }
  end

  describe 'GET "create_mono"' do
    it { {get: '/mono/create'}.should route_to(:controller => 'mono', :action => 'create') }
  end

  describe 'GET "new_mono"' do
    it { {get: '/mono/delete'}.should route_to(:controller => 'mono', :action => 'destroy') }
  end
end
