Rails.configuration.stripe = {
  :publishable_key => 'pk_test_jjZx5eH1uiYE7o4RIPcUKP20',
 
  :secret_key      => 'sk_test_DKqsfGHJTCvzlRQeoPggD91O'
 
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]
