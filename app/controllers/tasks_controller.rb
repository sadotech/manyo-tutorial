class TasksController < ApplicationController
  def input
    # renderメソッドのリファレンス http://railsdoc.com/references/render
    render html: "render :html" # renderで:htmlオプションを使用すると、HTML文字列を直接ブラウザに送信することができる
    # https://railsguides.jp/layouts_and_rendering.html#html%E3%82%92%E5%87%BA%E5%8A%9B%E3%81%99%E3%82%8B
    render text: "render :text"
  end
end
