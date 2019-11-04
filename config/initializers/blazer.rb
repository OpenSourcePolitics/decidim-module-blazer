db = Rails.configuration.database_configuration[Rails.env]

credentials = ""
if db["username"].present?
  credentials += "#{db["username"]}"
  if db["password"].present?
    credentials += ":#{db["password"]}"
  end
  credentials += "@"
end

ENV["BLAZER_DATABASE_URL"] = "#{db["adapter"]}://#{credentials}#{db["host"]||"127.0.0.1"}:#{db["port"]||"5432"}/#{db["database"]}"
