module ApplicationHelper
  def body_class(body_class)
    content_for(:body_class){ body_class }
  end
end
