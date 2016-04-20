class ApplicationMailer < ActionMailer::Base
  #devise.rb is actually taking precedence.
  default from: "notifications@FreshCabbage.net"
  layout 'mailer'
end
