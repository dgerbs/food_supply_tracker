require 'spec_helper'

describe Inventory do  
  it { should have_valid(:title).when('Food') }

  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:description).when('My description') }

  it { should_not have_valid(:description).when(nil, '') }

  it { should have_valid(:quantity).when(0, 20) }

  it { should_not have_valid(:quantity).when(nil, '') }  
end