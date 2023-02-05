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
  expect(list.count).to eq(1)
  list.append("deep")
  expect(list.count).to eq(2)
  expect(list.to_string).to eq("doop deep")
  end

  it 'can prepend' do
  list = LinkedList.new
  list.append("plop")
  list.append("suu")
  list.prepend("dop")
  expect(list.head.data).to eq("dop")
  expect(list.count).to eq(3)
  expect(list.to_string).to eq("dop plop suu")
  end

  it 'can insert at specific position' do
  list = LinkedList.new
  list.append("plop")
  list.append("suu")
  list.prepend("dop")
  list.insert(1, "woo")
  expect(list.head.next_node.data).to eq("woo")
  expect(list.count).to eq (4)
  expect(list.to_string).to eq("dop woo plop suu")
  end

  it 'can find and return specific node data' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("blop")
    list.insert(2, "shi")
    list.insert(3, "shu")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it 'can determine if list includes specific data' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("blop")
    list.insert(2, "shi")
    list.insert(3, "shu")
    expect(list.includes?("deep")).to eq true
    expect(list.includes?("dep")).to eq false
  end

  it 'can use pop method to delete last node' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("blop")
    list.insert(2, "shi")
    list.insert(3, "shu")
    expect(list.count).to eq(5)
    list.pop
    expect(list.count).to eq(4)
    expect(list.to_string).to eq("deep woo shi shu")
    list.pop
    expect(list.count).to eq (3)
    expect(list.to_string).to eq("deep woo shi")
  end
end