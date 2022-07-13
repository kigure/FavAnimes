Rails.application.routes.draw do
  ##管理者
  devise_for :admin,skip: [:passwords,:registrations], controllers: {
  sessions: "admin/sessions"
}

  ##会員
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

scope module: :public do
  root to: "animes#top"
end

end
