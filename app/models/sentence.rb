class Sentence < ApplicationRecord
  attr_accessor :sentence_id, :position
  has_one :sentence_association
end
