require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '#create' do
    before do
      @review = FactoryBot.build(:review)
    end

    describe 'レビュー投稿' do
      context 'レビュー投稿できる時' do
        it '全ての情報を入力すればレビュー投稿できること' do
          expect(@review).to be_valid
        end
      end

      context 'レビュー投稿できないとき' do
        it 'visit_dateが空では投稿できない' do
          @review.visit_date = ''
          @review.valid?
          expect(@review.errors.full_messages).to include("Visit date can't be blank")
        end

        it 'flavorが空では投稿できない' do
          @review.flavor = ''
          @review.valid?
          expect(@review.errors.full_messages).to include("Flavor can't be blank")
        end

        it 'priceが空では投稿できない' do
          @review.price = ''
          @review.valid?
          expect(@review.errors.full_messages).to include("Price can't be blank")
        end

        it 'companion_idが空では投稿できない' do
          @review.companion_id = ''
          @review.valid?
          expect(@review.errors.full_messages).to include("Companion is not a number")
        end

        it 'messageが空では投稿できない' do
          @review.message = ''
          @review.valid?
          expect(@review.errors.full_messages).to include("Message can't be blank")
        end

        it 'userが紐づいていないと投稿できない' do
          @review.user = nil
          @review.valid?
          expect(@review.errors.full_messages).to include("User must exist")
        end

        it 'priceは半角数字でなければ投稿できない' do
          @review.price = '３００'
          @review.valid?
          expect(@review.errors.full_messages).to include("Price is invalid")
        end

        it 'companion_idで1を選択している場合投稿できない' do
          @review.companion_id = 1
          @review.valid?
          expect(@review.errors.full_messages).to include("Companion must be other than 1")
        end

        it 'priceが半角英数混合では投稿できない' do
          @review.price = '2000yen'
          @review.valid?
          expect(@review.errors.full_messages).to include("Price is invalid")
        end

        it 'priceが半角英語だけでは投稿できない' do
          @review.price = 'onemillion'
          @review.valid?
          expect(@review.errors.full_messages).to include("Price is invalid")
        end

        it 'imageが空では登録できない' do
          @review.image = nil
          @review.valid?
          expect(@review.errors.full_messages).to include("Image can't be blank")
        end

      end
    end
  end
end
