require 'rails_helper'

RSpec.describe Lesson, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe '#validations' do
    let(:lesson) { build(:lesson) }

    # it 'tests lesson object' do
    #   expect(lesson).to be_valid
    # end

    it 'tests that factory is valid' do
      expect(lesson).to be_valid # lesson.valid? == true
      lesson.save!
      another_lesson = build(:lesson)
      expect(another_lesson).to be_valid
    end

    it 'has an invalid title' do
      lesson.title = ''
      expect(lesson).not_to be_valid
      expect(lesson.errors[:title]).to include("can't be blank")
    end

    it 'has an invalid description' do
      lesson.description = ''
      expect(lesson).not_to be_valid
      expect(lesson.errors[:description]).to include("can't be blank")
    end

    it 'has an invalid slug' do
      lesson.slug = ''
      expect(lesson).not_to be_valid
      expect(lesson.errors[:slug]).to include("can't be blank")
    end

    it 'validates the uniqueness of the slug' do
      lesson1 = create(:lesson)
      expect(lesson1).to be_valid
      lesson2 = build(:lesson, slug: lesson1.slug)
      expect(lesson2).not_to be_valid
      expect(lesson2.errors[:slug]).to include("has already been taken")
    end
  end
  # it 'tests lesson object' do
  #   lesson = create(:lesson)
  #   # expect(lesson.title).to eq("The Title")
  #   expect(lesson).to be_valid
  # end
  #
  # it 'has an invalid title' do
  #   lesson = build(:lesson, title: '')
  #   expect(lesson).not_to be_valid
  #   expect(lesson.errors[:title]).to include("can't be blank")
  # end
  # it "tests a number to be positive" do
  #   expect(1).to be_positive # be_positive => 1.positive? == true
  #   expect(5).to be > 3
  # end
end
