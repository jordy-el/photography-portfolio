require 'test_helper'

class KrissiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @krissi = Krissi.new(linkedin: "asd", instagram: "asd", facebook: "asd", contact_body: "asd", bio_body: "asd")
  end

  test 'saves valid model' do
    assert @krissi.save!
  end

  test 'rejects invalid linkedin' do
    @krissi.linkedin = ''
    assert_not @krissi.save
  end

  test 'rejects invalid instagram' do
    @krissi.instagram = ''
    assert_not @krissi.save
  end

  test 'rejects invalid facebook' do
    @krissi.facebook = ''
    assert_not @krissi.save
  end

  test 'rejects invalid contact body' do
    @krissi.contact_body = ''
    assert_not @krissi.save
  end

  test 'rejects invalid bio body' do
    @krissi.bio_body = ''
    assert_not @krissi.save
  end
end
