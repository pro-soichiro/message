class User < ApplicationRecord
    has_many :done_questions
  has_many :questions, through: :done_questions
  # nameの長さが最小値が5　つまり5文字以上の長さが必要
  validates :name, length: { minimum: 5 }
  # heightは0より大きい値でなければならない
  validates :height, numericality: { greater_than: 0 }
  # postal_codeの形式(format)を「先頭3桁の数字とハイフンと末尾数字4桁」で指定
  validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/}
  # passwordの値がpassword_confirmationの値と等しいか
  # 比較チェックする項目は「_confirmation」を付加した名前で、ビュー上に設定する必要がある。
  validates :password, confirmation: true
  # placeの値は「東京」「大阪」「九州」のいずれかでなければならない
  validates :place, inclusion: { in: ['東京','大阪','九州'] }
  # nameの値は「admin」「guest」「owner」「member」のいずれにも該当してはならない
  validates :name, exclusion: {in: ['admin','guest','owner','member'] }
  # agreeという名前のチェックボックスのチェックが必須
  validates :agree, acceptance: true
  # メールアドレスはユニークでなければならない
  validates :email, uniqueness: true

end
