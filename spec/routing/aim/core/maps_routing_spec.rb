require 'rails_helper'

RSpec.describe(Aim::Core::MapsController, type: :routing) do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/aim/core/maps').to(route_to('aim/core/maps#index'))
    end

    it 'routes to #new' do
      expect(get: '/aim/core/maps/new').to(route_to('aim/core/maps#new'))
    end

    it 'routes to #show' do
      expect(get: '/aim/core/maps/1').to(route_to('aim/core/maps#show', id: '1'))
    end

    it 'routes to #edit' do
      expect(get: '/aim/core/maps/1/edit').to(route_to('aim/core/maps#edit', id: '1'))
    end

    it 'routes to #create' do
      expect(post: '/aim/core/maps').to(route_to('aim/core/maps#create'))
    end

    it 'routes to #update via PUT' do
      expect(put: '/aim/core/maps/1').to(route_to('aim/core/maps#update', id: '1'))
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/aim/core/maps/1').to(route_to('aim/core/maps#update', id: '1'))
    end

    it 'routes to #destroy' do
      expect(delete: '/aim/core/maps/1').to(route_to('aim/core/maps#destroy', id: '1'))
    end
  end
end
