class Spree::Admin::InquiriesController < Spree::Admin::ResourceController
  # destroy.success.wants.js { render_js_for_destroy }
  respond_override :destroy => { :js => { :success => lambda { render_js_for_destroy } } }

  def collection
    return @collection if @collection.present?
    unless request.xhr?
      @search = Spree::Inquiry.search(params[:search])

      #set order by to default or form result
      @search.order ||= "ascend_by_email"

      @collection = @search.page(params[:page]).per(Spree::Config[:orders_per_page])

    else
      @collection = Spree::Inquiry.find(:all, :limit => (params[:limit] || 100))
    end
  end

end
