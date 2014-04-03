class ConcurrentController < ApplicationController

  def index
    5000000.times { JSON.parse('{}') }
    render text: 'hello'
  end
end