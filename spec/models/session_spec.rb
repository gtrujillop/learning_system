require 'rails_helper'

describe Session do

  describe "validations" do
  end

  describe "presence validations" do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }

  end

  describe "relations" do
    it { should have_many(:user_sessions) }
    it { should have_many(:session_resources) }
    it { should have_many(:users).through(:user_sessions) }
    it { should belong_to(:subject) }
  end

  describe 'callbacks' do
    # it 'sets is_active value before saving the user' do
    #   user = User.new({ username: "user_1", first_name: "Juan",
    #                     last_name: "Perez", birth_date: '11-09-1988',
    #                     email:'my_email@email.com',
    #                     password: 'password_1',
    #                     password_confirmation: 'password_1'})
    #   user.save
    #   expect(User.last.active).to be_truthy
    # end

    # it 'sets format to users birth date before validation' do
    #   user = User.new( username: "user_1", first_name: "Juan",
    #                    last_name: "Perez", birth_date: "06/09/2014",
    #                    email:'my_email@email.com',
    #                    password: 'password_1',
    #                    password_confirmation: 'password_1')
    #   user.save
    #   expect(User.last.birth_date).to be_a(Date)
    # end
  end
end

