require 'spec_helper'

describe RestaurantsController do
  describe '#index' do
    let(:restaurants) { double(:restaurants) }

    before do
      allow(Restaurant).to receive(:all) { restaurants }
      get :index
    end

    it 'assigns all restaurants' do
      expect(assigns(:restaurants)).to eq(restaurants)
    end
  end
end
