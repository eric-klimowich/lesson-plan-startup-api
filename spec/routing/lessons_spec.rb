require 'rails_helper'

RSpec.describe '/lessons routes' do
  it 'routes to lessons#index' do
    # expect(get '/lessons').to route_to(controller: 'lessons', action: 'index')
    expect(get '/lessons').to route_to('lessons#index')
  end

  it 'routes to lessons#show' do
    expect(get('/lessons/1')).to route_to('lessons#show', id: '1')
  end
end
