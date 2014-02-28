# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_new_session',
  :secret      => '24f99bb2e10bfb05204b53942206b21cdf3010d191249ee8aee5fbbe44d59eac05c3b1e51a55a751827752ecf0a0ca24b37c6434905b584dd7dfa1fb7cbef577'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
