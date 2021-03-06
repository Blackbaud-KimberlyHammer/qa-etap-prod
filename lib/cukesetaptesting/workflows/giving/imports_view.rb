module Cukesetaptesting
  module Giving
    class ImportsView < BaseView
      keyword(:imports_page_title)  { content.div(:class, 'contentBodyDiv').div(:class, 'pageTitle') }
      keyword(:managment_import) {content.div(:id,'managementPageTop').a(:text,'Import')}
      keyword(:new_import) {content.a(:text,'New Import')}
      keyword(:new_import_name) {content.text_field(:id,'importDefinition.name')}
      keyword(:new_import_choose_file) {content.file_field(:id,'importFile')}
      keyword(:type_to_import) {content.select(:id,'importTypeSelector')}
      keyword(:import_country) {content.select(:id,'countrySelect')}
      keyword(:import_name_select) {content.select(:id,'nameFormatSelector')}
      keyword(:import_next) {content.button(:value,'Next')}
      keyword(:import_another_field) {content.a(:text,'Import Another eTapestry Field')}
      keyword(:import_fields_pop_up) {content.span(:text,'Select eTapestry Field').parent.parent}
      # keyword(:import_address_lines) {import_fields_pop_up.a(:text,'Address Lines')}
      # keyword(:mapping_table_row) {content.table(:id,'mappingTable0').}
      keyword(:import_mapping_pop_up) {content.div(:id,'formulaPopupContents')}
      keyword(:import_mapping_pop_up_corner_x) {content.div(:id=>'formulaPopupContents').parent.div(:class=>'importPopup').link}
      keyword(:import_summary_title) {content.h5(:text,'Import Summary')}
      keyword(:confirm_delete) {content.button(:value,'Yes')}
      keyword(:handle_duplicates) {content.select(:id,'updateAll')}
      keyword(:apply_button) {content.button(:value, 'Apply')}

      keyword(:main_import_div) { content.div(:id=>'importWizard')}
      keyword(:page_1_shaded_icon) { content.img(:src=>'/prod/images/1b0.gif') }
      keyword(:page_2_shaded_icon) { content.img(:src=>'/prod/images/2b0.gif') }
      keyword(:page_3_shaded_icon) { content.img(:src=>'/prod/images/3b0.gif') }
      keyword(:page_4_shaded_icon) { content.img(:src=>'/prod/images/4b0.gif') }
      keyword(:page_5_shaded_icon) { content.img(:src=>'/prod/images/5b0.gif') }

      keyword(:ind_account_name_checkbox) {content.checkbox(:id, 'entityName1Key')}
      keyword(:account_created_date_range) {content.select(:id, 'TestEntityRoleForCreatedDateData.dynamicDateRange')}
      keyword(:first_name_to_no_value_checkbox) {content.checkbox(:id, 'TestEntityRoleForFirstNamesData.fieldEmptyTest')}
      keyword(:query_list) {content.ul(:id, 'list_queries')}


      def mapping_table_other_fields_row field
          content.table(:id,'mappingTable0').td(:text,field).parent
      end

      def mapping_table_individual_name_format_row field
        content.table(:id,'mappingTable1').td(:text,field).parent
      end

      def mapping_table_family_name_format_row field
        content.table(:id,'mappingTable2').td(:text,field).parent
      end

      def mapping_table_business_name_format_row field
        content.table(:id,'mappingTable3').td(:text,field).parent
      end

      def run_import_link(value)
        content.ul(:id, 'list_definitions').a(:text, value).parent.parent.div(:class, 'actions').a(:class, 'run')
      end


      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
