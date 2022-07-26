require 'rails_helper'

describe User do
  describe 'model validations' do
    it { should validate_presence_of :name}
    it { should validate_presence_of :email}
    it { should validate_uniqueness_of :email}
    it { should validate_presence_of :password}
  end
end
