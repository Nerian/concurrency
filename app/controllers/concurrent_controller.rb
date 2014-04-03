class ConcurrentController < ApplicationController

  def index
    400000.times { JSON.parse('{}') }
    render text: 'hello'
  end
end