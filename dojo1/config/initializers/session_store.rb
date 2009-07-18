# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dojo_session',
  :secret      => 'b9d67585c072b9d9a424f1d273e00ac4fb8e5cd3f199d733fbfd9ceec5bf55173388a722702c54389f8603dc092034db1cd0b72f55acbb9a6a225f88bbbeec41'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
