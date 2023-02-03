require 'rspec'
require './lib/linked_list'

RSpec.describe LinkedList do
  it 'exists' do
  list = LinkedList.new
  require 'pry'; binding.pry
  expect(list).to be_instance_of(LinkedList)
  expect(list.head).to eq (nil)
  end
end