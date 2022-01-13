require 'rails_helper'

RSpec.describe Lesson, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "tests lesson object" do
    lesson = create(:lesson)
    expect(lesson.title).to eq("The Title")
  end
  # it "tests a number to be positive" do
  #   expect(1).to be_positive # be_positive => 1.positive? == true
  #   expect(5).to be > 3
  # end
end
