Stripe.api_key = Rails.application.credentials.dig(:stripe, :sk)
STRIPE_SUPPORTED_COUNTRIES = [ "AR", "AU", "AT", "BE", "BO", "BR", "BG", "CA",
                              "CL", "CO", "CR", "HR", "CY", "CZ", "DK", "DO",
                              "EG", "EE", "FI", "FR", "DE", "GR", "HK", "HU",
                              "IS", "IN", "ID", "IE", "IL", "IT", "JP", "LV",
                              "LI", "LT", "LU", "MT", "MX", "NL", "NZ", "NO",
                              "PY", "PE", "PL", "PT", "RO", "SG", "SK", "SI",
                              "ES", "SE", "CH", "TH", "TT", "AE", "GB", "US", "UY"
                              ].freeze
