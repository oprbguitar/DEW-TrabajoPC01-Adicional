OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :lastfm, "f1b00bf5bbadbb971bef374c5a1beeb6", "0f24e86dcf4af086564dc7a2f8ca407e"
end