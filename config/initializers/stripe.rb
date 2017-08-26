Rails.configuration.stripe = {
  :publishable_key => 'pk_test_n0X8jPnNhjn1SjjkAXdMnWcE',
 
  :secret_key      => 'sk_test_o9HYgNXzpv30dsM2Ea9mDtrx'
 
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]
