class PagesController < ApplicationController

  include HighVoltage::StaticPage

  layout :set_layout

  PERMITTED_PAGE_IDS = %w(styleguide)

  def show
    public_send(page_id) if self.respond_to?(page_id) and PERMITTED_PAGE_IDS.include?(params[:id])
    super
  end

  def styleguide
    @styleguide_test = StyleguideTest.new(styleguide_test_params)
    if request.post? and @styleguide_test.valid?
      flash.now[:success] = 'Success'
    end
  end

  private

    def page_id
      params[:id].gsub('-', '_').gsub('/', '_')
    end

    def set_layout
      'application'
    end

    def styleguide_test_params
      return if !params[:styleguide_test]
      params.require(:styleguide_test).permit(
        :string,
        :select,
        :radio_buttons,
        :inline_radio_buttons,
        :textarea,
        check_boxes: [],
        inline_check_boxes: []
      )
    end

end
