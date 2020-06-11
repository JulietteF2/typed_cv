require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "confirm" do
    mail = MessageMailer.confirm
    assert_equal "Confirm", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "forward" do
    mail = MessageMailer.forward
    assert_equal "Forward", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
