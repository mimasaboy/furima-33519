require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it "nameとemail、passwordとpassword_confirmationが存在すれば登録できる" do
      expect(@user).to be_valid
    end
    it "nameが6文字以下であれば登録できる" do
      @user.name = "aaaaaa"
      expect(@user).to be_valid
    end
    it "passwordとpassword_confirmationが6文字以上であれば登録できる" do
      @user.password = "000000"
      @user.password_confirmation = "000000"
      expect(@user).to be_valid
    end
    it "nameが空では登録できない" do
    end
    it "emailが空では登録できない" do
    end
    it "passwordが空では登録できない" do
    end
    it "passwordが存在してもpassword_confirmationが空では登録できない" do
    end
    it "nicknameが7文字以上では登録できない" do
    end
    it "重複したemailが存在する場合登録できない" do
    end
    it "passwordが5文字以下では登録できない" do
    end
  end
end