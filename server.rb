require "sinatra"
require 'sinatra/base'
require "recaptcha"

# The following site_key and secret_key are defined by Google for testing purposes.
# https://developers.google.com/recaptcha/docs/faq
Recaptcha.configure do |config|
  config.site_key = "6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"
  config.secret_key = "6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe"
end

class Server < Sinatra::Base
  include Recaptcha::Adapters::ControllerMethods
  include Recaptcha::Adapters::ViewMethods

  get "/" do
    <<-HTML
      <h1>Demo for reCAPTCHA V2 automated testing</h1>
      <form action="/verify">
        #{recaptcha_tags}
        <button type="submit">Submit</button>
      </form>
  HTML
  end

  get "/verify" do
    if verify_recaptcha
      "success"
    else
      "fail"
    end
  end
end
