require 'edfenergy/api/version'
require 'mechanize'

module Edfenergy
  class Api

    def initialize
      @agent = Mechanize.new
      @agent.user_agent_alias = 'Linux Mozilla'
      @agent.gzip_enabled = false
    end

    def login(email, password)
      page = @agent.get('https://my-account.edfenergy.com/irj/portal/anonymous')
      form = page.form_with :name => "logonForm"
      form.action = 'https://my-account.edfenergy.com/nclogin.submit'
      form.field_with(:name => 'f_username').value = email
      form.field_with(:name => 'f_passwd').value = password
      result = @agent.submit form

      result.form_with(:name => 'logonForm').nil?
    end

    def meter_reading
      page = @agent.get('https://my-account.edfenergy.com/irj/portal?NavigationTarget=navurl://a4fbe3efe0b74d8ee7c605e56fb6fac7')
      form = page.form_with :name => 'MRResultsForm'
      form.field_with(:name => 'METER_READ_LAST_ENTRY0').value.to_i
    end

  end
end
