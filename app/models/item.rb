class Item < ApplicationRecord
  before_validation :before_valid_message

  validates :name, length: { minimum: 3 }

  after_validation :after_valid_message

  after_save :after_save_message

  around_update :around_update_message
  
  has_many :pictures,as: :imageable


  private

  def before_valid_message
    puts "バリデーション前にコールバックするメソッドです。"
  end

  def after_valid_message
    puts "バリデーション後にコールバックするメソッドです。"
  end

  def after_save_message
    puts "save後にコールバックするメソッドです。"
  end

  def around_update_message
    puts "update開始"
    yield
    puts "update終了"
  end

end
