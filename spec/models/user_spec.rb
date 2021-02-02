require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'name,email,password,password_confirmation,first_name,last_name,last_name_f,first_name_f,birthdayが存在すれば登録できる' do
        @user.valid?
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'nameが空では登録できないとき' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
    end
    
    it "emailが空では登録できない" do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "passwordが空では登録できない" do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "passwordとpassword_confirmationが同じでなければ登録できない" do
      @user.password = "000000"
      @user.password_confirmation = "000000"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password には英字と数字の両方を含めて設定してください")
    end
    
    it "passwordが英語のみでは登録できないこと" do
      @user.password = "mizuide"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "passwordが数字のみでは登録できないこと" do
      @user.password = "000000"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "birthdayが空では登録できない" do
      @user.birthday = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end

    it "first_nameが空では登録できない" do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end

    it "first_nameが全角（漢字・ひらがな・カタカナ)以外で登録できない" do
      @user.first_name = 'yamada'
      @user.valid?
      expect(@user.errors.full_messages).to include("First name 全角文字を使用してください")
    end


    it "last_nameが空では登録できない" do
      @user.last_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end

    it "last_nameが全角（漢字・ひらがな・カタカナ)以外で登録できない" do
      @user.last_name = 'yamada'
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name 全角文字を使用してください") 
    end

    it "first_nameが空では登録できない" do
      @user.first_name_f = ''
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("First name f can't be blank")
    end
    
    it "first_name_fが全角（カタカナ)以外で登録できない" do
      @user.first_name_f = '山田,やまだ,yamada'
      @user.valid?
      expect(@user.errors.full_messages).to include("First name f 全角文字を使用してください")
    end

    it "last_name_fが空では登録できない" do
      @user.last_name_f = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name f can't be blank")
    end

    it "last_name_fが全角（カタカナ)以外で登録できない" do
      @user.last_name_f = '山田,やまだ,yamada'
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name f 全角文字を使用してください")
    end
  end
end