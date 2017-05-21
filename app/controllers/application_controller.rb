class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def users
    @users ||= [
      {
        name: 'John Smith',
        email: 'siava-pk@mail.ru'
      },
      {
        name: 'Jeki Chan',
        email: '2@mail.com'
      }
    ]
  end
  helper_method :users
end
