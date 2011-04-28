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

  describe 'GET "new_comment(:mono_id)"' do
    it { {get: '/mono/test_id/comment/new'}.should route_to(:controller => 'mono', :action => 'new_comment', :id => 'test_id') }
  end

  describe 'POST "create_comment(:mono_id)"' do
    it { {post: '/mono/test_id/comment/create'}.should route_to(:controller => 'mono', :action => 'create_comment', :id => 'test_id') }
  end
end
