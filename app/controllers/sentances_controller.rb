class SentancesController < ApplicationController
  def new
  end

  def edit
  end

  def index
  end

  def get_sentance_for_story(story_id)
    if story_id
      stories[story_id]["main_sentance"]
    end
  end

  def get_next_story_id
    ("story" + ((stories.length)+1))
  end

  def create_new_story_hash(sentance)
    story_hash = {main_sentence: sentence, top: nil, right: nil, bottom: nil, left: nil }
    story_hash
  end

  def link_story_to_another(current_story_id, position, next_story_id)
    stories[current_story_id][position] = next_story_id
  end
end
