class OrderMailer < ApplicationMailer

  default from: "Depot App <admin@depot.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, cc: "bilen@localhost", subject: "Pragmatic Store Order Confirmation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order
    mail to: order.email, cc: "bilen@localhost", subject: "Pragmatic Store Order Shipped"
  end

  def check_error(err)
    @err = err
    mail(to: 'bilen@localhost', subject: 'Check Error!')
  end
end
