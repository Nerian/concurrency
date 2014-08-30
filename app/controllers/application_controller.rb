class ApplicationController < ActionController::Base

  def normal
    sleep 5
    render plain: 'Hello'
  end

  def async
    EM.defer do
      sleep 5
      request.env['async.callback'].call response
    end

    throw :async
  end

  def async_with_cookies
    EM.defer do
      sleep 5
      cookies[:message] = 'hello'
      cookies.write(headers)
      request.env['async.callback'].call response
    end

    throw :async
  end
end
