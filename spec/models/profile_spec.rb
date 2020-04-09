require 'rails_helper'

describe "profile" do
  describe '#create' do
    it "first_nameがない場合は登録できないこと" do
      profile = build(:profile, first_name: nil)
      profile.valid?
      expect(profile.errors[:first_name]).to include("を入力してください")
    end

    it "first_name_kanaがない場合は登録できないこと" do
      profile = build(:profile, first_name_kana: nil)
      profile.valid?
      expect(profile.errors[:first_name_kana]).to include("を入力してください")
    end

    it "family_nameがない場合は登録できないこと" do
      profile = build(:profile, family_name: nil)
      profile.valid?
      expect(profile.errors[:family_name]).to include("を入力してください")
    end

    it "family_name_kanaがない場合は登録できないこと" do
      profile = build(:profile, family_name_kana: nil)
      profile.valid?
      expect(profile.errors[:family_name_kana]).to include("を入力してください")
    end

    it "birthdayがない場合は登録できないこと" do
      profile = build(:profile, birthday: nil)
      profile.valid?
      expect(profile.errors[:birthday]).to include("を入力してください")
    end
  end 
end  

