require 'rails_helper'

RSpec.describe(Aim::Core::UsersController, type: :routing) do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/aim/core/users').to(route_to('aim/core/users#index'))
    end

    it 'routes to #new' do
      expect(get: '/aim/core/users/new').to(route_to('aim/core/users#new'))
    end

    it 'routes to #show' do
      expect(get: '/aim/core/users/1').to(route_to('aim/core/users#show', id: '1'))
    end

    it 'routes to #edit' do
      expect(get: '/aim/core/users/1/edit').to(route_to('aim/core/users#edit', id: '1'))
    end

    it 'routes to #create' do
      expect(post: '/aim/core/users').to(route_to('aim/core/users#create'))
    end

    it 'routes to #update via PUT' do
      expect(put: '/aim/core/users/1').to(route_to('aim/core/users#update', id: '1'))
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/aim/core/users/1').to(route_to('aim/core/users#update', id: '1'))
    end

    it 'routes to #destroy' do
      expect(delete: '/aim/core/users/1').to(route_to('aim/core/users#destroy', id: '1'))
    end
  end
end
