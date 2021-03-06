module CatarseOfflinePayment
  class Gateway
    # include ActiveMerchant::Billing::Integrations

    def initialize configuration = PaymentEngines.configuration
      @configuration = configuration
    end

    def self.instance
      new.setup_gateway
    rescue Exception => e
      puts e.message
    end

    def setup_gateway
    end

    # private
    #
    # def check_default_configurations!
    #   %i(paypal_username paypal_password paypal_signature).each do |key|
    #     raise pending_configuration_message unless @configuration[key].present?
    #   end
    # end
    #
    # def pending_configuration_message
    #   "[PayPal] An API Certificate or API Signature is required to make requests to PayPal"
    # end
  end
end
