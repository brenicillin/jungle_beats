 require './lib/node'
 require './lib/linked_list'
 require './lib/jungle_beats'
 require 'rspec'

 RSpec.describe JungleBeat do
  it 'exists' do
    jb = JungleBeat.new
    require 'pry'; binding.pry
    expect(jb).to be_instance_of(JungleBeat)
    expect(jb.list).to be_instance_of(LinkedList)
    expect(jb.list.head).to eq (nil)
  end
  it 'can append multiple sounds' do
  jb = JungleBeat.new
  expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
  end

  it 'can keep count of each node' do
  jb = JungleBeat.new
  jb.append("deep doo ditt")
  jb.append("woo hoo shu")
  expect(jb.count).to eq (6)
  end
 end