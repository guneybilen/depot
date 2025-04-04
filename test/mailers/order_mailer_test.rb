require "test_helper"

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal [ "dave@example.org" ], mail.to
    assert_equal [ "admin@depot.com" ], mail.from
    assert_match /1 x The Pragmatic Programmer/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    #puts mail.body.encoded
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    assert_equal [ "dave@example.org" ], mail.to
    assert_equal [ "admin@depot.com" ], mail.from
    assert_match /1 x The Pragmatic Programmer/, mail.body.encoded
  end
end
