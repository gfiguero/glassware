require 'rails_helper'

RSpec.describe(Aim::Core::ProfilesController, type: :routing) do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/aim/core/profiles').to(route_to('aim/core/profiles#index'))
    end

    it 'routes to #new' do
      expect(get: '/aim/core/profiles/new').to(route_to('aim/core/profiles#new'))
    end

    it 'routes to #show' do
      expect(get: '/aim/core/profiles/1').to(route_to('aim/core/profiles#show', id: '1'))
    end

    it 'routes to #edit' do
      expect(get: '/aim/core/profiles/1/edit').to(route_to('aim/core/profiles#edit', id: '1'))
    end

    it 'routes to #create' do
      expect(post: '/aim/core/profiles').to(route_to('aim/core/profiles#create'))
    end

    it 'routes to #update via PUT' do
      expect(put: '/aim/core/profiles/1').to(route_to('aim/core/profiles#update', id: '1'))
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/aim/core/profiles/1').to(route_to('aim/core/profiles#update', id: '1'))
    end

    it 'routes to #destroy' do
      expect(delete: '/aim/core/profiles/1').to(route_to('aim/core/profiles#destroy', id: '1'))
    end
  end
end
