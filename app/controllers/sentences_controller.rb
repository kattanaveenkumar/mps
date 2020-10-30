class SentencesController < ApplicationController
  before_action :set_sentence, only: [:show]
  def index
    @sentence = Sentence.new(start: true)
  end

  def show
    @sentence = Sentence.find(params[:id])
    @sentence_assoc = @sentence.sentence_association
  end

  def new
    @sentence = Sentence.new
  end

  def create
    @sentence = Sentence.new(sentence_params)
    # @sentence.merge(node: )
    if @sentence.save
      @sentence.create_sentence_association
      if sentence_params[:sentence_id]
        @sentence_assoc = Sentence.find(sentence_params[:sentence_id]).sentence_association
        @sentence_assoc.send("#{sentence_params[:position]}_id=", @sentence.id)
        @sentence_assoc.save
        redirect_to sentence_path(Sentence.find(sentence_params[:sentence_id]))
      else
        redirect_to sentence_path(@sentence)
      end
    else
      render :new
    end
  end

  private

  def sentence_params
    params.require(:sentence).permit(:text, :node, :start, :sentence_id,
                                     :position)
  end

  def set_sentence
    @sentence = Sentence.find(params[:id])
  end
end
