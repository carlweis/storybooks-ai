class Choice < ApplicationRecord
  belongs_to :chapter
  has_one :next_chapter, class_name: "Chapter", foreign_key: "next_chapter_id"
end
