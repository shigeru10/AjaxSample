class RootController < ApplicationController
  def index
    puts "root#indexきました。"
    respond_to do |format|
      format.html
      format.json
    end
  end

  def ajax
    puts "#{controller_name}##{action_name}"
  end
end
