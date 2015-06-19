module Panel
  class BaseController < ApplicationController
    layout 'panel'

    helper_method :current_user

    def current_user
      @current_user ||= mocked_user
    end

    private

    def mocked_user
      user = User.find_by(name: 'Jackie Chan')
      return user unless user.nil?

      user = User.create(
        name: 'Jackie Chan',
        email: 'jackie@chan.com',
        status: 'enabled',
        sector: 'saas',
        schedule_status: 'enabled'
      )
    end
  end
end
