class ToppagesController < ApplicationController
  
  # トップページ
  def index
    @columns = Column.all.order("created_at DESC")
  end

  # 目標管理機能
  def todolist
  end

  # プライバシーポリシー
  def privacy_policy
  end

  # 利用規約
  def regulation
  end

  # お問い合わせ
  def contact_us
  end

  # 管理者情報
  def administrator_info
  end
  
end
