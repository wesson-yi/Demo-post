class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def paginate!(query)
    page_no = params[:page_no]&.to_i || 1
    @page_size = params[:page_size]&.to_i || 10
    @total_count = query.count
    @total_count = @total_count.size if @total_count.is_a? Hash
    query.offset((page_no - 1) * @page_size).limit(@page_size)
  end
end
