class User < ApplicationRecord
  # nameの長さが最小値が5　つまり5文字以上の長さが必要

  # heightは0より大きい値でなければならない

  # postal_codeの形式(format)を「先頭3桁の数字とハイフンと末尾数字4桁」で指定

  # passwordの値がpassword_confirmationの値と等しいか
  # 比較チェックする項目は「_confirmation」を付加した名前で、ビュー上に設定する必要がある。

  # placeの値は「東京」「大阪」「九州」のいずれかでなければならない

  # nameの値は「admin」「guest」「owner」「member」のいずれにも該当してはならない

  # agreeという名前のチェックボックスのチェックが必須

  # メールアドレスはユニークでなければならない


end
