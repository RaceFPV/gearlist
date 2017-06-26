class Item < ActiveRecord::Base
  validates_uniqueness_of :assettag

  def to_param
    assettag
  end
  
  def self.generatetag
    num = Item.generatetagnumber
    until Item.find_by_assettag(num).nil?
      num = Item.generatetagnumber
    end
    return num
  end
  
  def self.generatetagnumber
      charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T W X Y Z}
      return (0...11).map{ charset.to_a[rand(charset.size)] }.join
  end
end
