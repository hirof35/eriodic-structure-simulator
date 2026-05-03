# app/controllers/elements_controller.rb
class ElementsController < ApplicationController
  def index
    @elements = Element.all.order(:atomic_number) # 原子番号順に並べるとより確実
  end
  
  # 新しく追加：サイドパネルを空に戻すためのアクション
  def reset
    render partial: "placeholder"
  end
  def show
    # params[:id] に入ってくる「1」などの数字を atomic_number として検索
    @element = Element.find_by!(atomic_number: params[:id])
  end
end