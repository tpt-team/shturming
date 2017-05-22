class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def users
    @users ||= [
      {
        name: 'John Smith',
        email: 'john_smith@mail.ru'
      },
      {
        name: 'Jeki Chan',
        email: 'jeki_chan@mail.com'
      },
      {
        name: 'chuck norris',
        email: 'chuck_norris@mail.com'
      }
    ]
  end
  helper_method :users
end
