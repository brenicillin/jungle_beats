require 'rspec'
require './lib/node'


RSpec.describe Node do
it 'exists' do
  node = Node.new("boop", nil)
require 'pry'; binding.pry
  expect(node).to be_instance_of(Node)
  expect(node.data).to eq ("boop")
  expect(node.next_node).to eq (nil)
  end
end