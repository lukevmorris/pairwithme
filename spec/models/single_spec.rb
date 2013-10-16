require 'spec_helper'

describe Single do
  it 'is not seeking a pair by default' do
    single = Single.new
    expect(single.seeking).to eq false
  end

  it 'wants to pair on a "General" topic by default' do
    single = Single.new
    expect(single.pair_topic).to eq 'General'
  end
end

describe Single, '#toggle_seeking_status' do
  it 'flips an individual\'s seeking status from true to false' do
    single = Single.new(seeking: true)
    single.toggle_seeking_status
    expect(single.seeking).to be_false
  end

  it 'flips an individual\'s seeking status from false to true' do
    single = Single.new(seeking: false)
    single.toggle_seeking_status
    expect(single.seeking).to be_true
  end
end