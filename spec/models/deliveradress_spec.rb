require 'rails_helper'

describe "deliveradress" do
  describe '#create' do
    it "prefectureがない場合は登録できないこと" do
      deliveradress = build(:DeliverAdress, prefecture: nil)
      deliveradress.valid?
      expect(deliveradress.errors[:prefecture]).to include("を入力してください")
    end

    it "cityがない場合は登録できないこと" do
      deliveradress = build(:DeliverAdress, city: nil)
      deliveradress.valid?
      expect(deliveradress.errors[:city]).to include("を入力してください")
    end

    it "adress1がない場合は登録できないこと" do
      deliveradress = build(:DeliverAdress, adress1: nil)
      deliveradress.valid?
      expect(deliveradress.errors[:adress1]).to include("を入力してください")
    end

    it "adress2がない場合は登録できないこと" do
      deliveradress = build(:DeliverAdress, adress2: nil)
      deliveradress.valid?
      expect(deliveradress.errors[:adress2]).to include("を入力してください")
    end

    it "postcodeがない場合は登録できないこと" do
      deliveradress = build(:DeliverAdress, postcode: nil)
      deliveradress.valid?
      expect(deliveradress.errors[:postcode]).to include("を入力してください")
    end
  end
end
 