class SentencesController < ApplicationController
  before_action :set_sentence, only: [:show]
  def index
    @sentence = Sentence.new(start: true)
  end

  def show
    @sentence = Sentence.find(params[:id])
  end

  def new
    @sentence = Sentence.new
  end

  def create
    @sentence = Sentence.new(sentence_params)
    byebug
    # @sentence.merge(node: )
    if @sentence.save
      redirect_to sentence_path(@sentence)
    else
      render :new
    end
  end

  private

  def sentence_params
    params.require(:sentence).permit(:text, :node, :start)
  end

  def set_sentence
    @sentence = Sentence.find(params[:id])
  end
end
