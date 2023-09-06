require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
      title: 'Harry Potter',
      author: 'J.K. Rowling',
      price: 19.99,
      published_date: Date.new(2001, 7, 8)
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid with a negative price' do
    subject.price = -10.0
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
