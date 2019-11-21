# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

$EMAIL_REGEX = %r{\A([a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)?\z}
$PHONE_REGEX = %r{\A(^\+?((?:[0-9]●?){0,6}-?){0,5})?\z}
$URL_REGEX = %r{\A(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z}