require 'rspec'
require './lib/linked_list'
require './lib/node'
RSpec.describe LinkedList do
  it 'exists' do
  list = LinkedList.new
  expect(list).to be_instance_of(LinkedList)
  expect(list.head).to eq (nil)
  end

  it 'can append & keep count' do
  list = LinkedList.new
  expect(list.append("doop")).to eq("doop")
  expect(list.head).to be_instance_of(Node)
  expect(list.head.next_node).to eq(nil)
  expect(list.count).to eq(1)
  end

  it 'can list elements to string' do
  list = LinkedList.new
  list.append("doop")
  expect(list.to_string).to eq("doop")
  end

  it 'can add a second node'do
  list = LinkedList.new
  list.append("doop")
  list.append("deep")
  require 'pry'; binding.pry
  expect(list.count).to eq(2)
  expect(list.to_string).to eq("doop deep")
  end

  it 'can prepend' do
  list = LinkedList.new
  list.append("plop")
  list.append("suu")
  list.prepend("dop")
  expect(list.to_string).to eq("dop plop suu")
  end

  it 'can insert at specific position' do
  list = LinkedList.new
  list.append("plop")
  list.append("suu")
  list.prepend("dop")
  list.insert(1, "woo")
  require 'pry'; binding.pry
  end
end