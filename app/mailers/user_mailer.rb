def registration_confirmation(user)
  recipients  user.email
  from        "localhost:3000"
  subject     "Thank you for Registering"
  body        :user => user
end


