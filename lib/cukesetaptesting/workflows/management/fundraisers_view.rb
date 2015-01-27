module Cukesetaptesting
  module Management
    class FundraisersView < BaseView
      keyword(:management_fundraisers)  {content.div(:id,'managementPageContent').div(:id,'onlineContent').ul(:id,'homeQuickLinks').a(:href,'viewEvents.do')}
      keyword(:fundraiser_new_fundraiser) {content.a(:text,'New Fundraiser')}
      keyword(:new_fund_date) {content.div(:class,'calendarPopup').text_field(:id,'date')}
      keyword(:new_fund_name) {content.text_field(:name,'event.name')}
      keyword(:new_fundraiser_status) {content.select(:name,'enumPopulate(event.status)')}
      keyword(:new_fund_goal) {content.text_field(:name,'currencyPopulate(event.goal)')}
      keyword(:new_fundraiser_next) {content.input(:id,'wizardNavigationNext_1')}
      keyword(:new_fund_sitename) {content.text_field(:name,'eventOptions.siteName')}
      keyword(:new_fund_contactname) {content.text_field(:name,'eventOptions.contactName')}
      keyword(:new_fund_contactemail) {content.text_field(:name,'eventOptions.contactEmail')}
      keyword(:new_fund_templatefloat) {content.radio(:id,'label.float')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end