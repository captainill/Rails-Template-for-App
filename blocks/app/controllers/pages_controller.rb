class PagesController < ApplicationController
  def support
    render "pages/support"
  end

  def privacy
    render "pages/privacy"
  end

  def faq
    render "pages/faq"
  end


end
