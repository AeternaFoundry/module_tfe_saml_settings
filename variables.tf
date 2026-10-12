variable "saml_settings" {
  description = <<EOT
Map of saml_settings, attributes below
Required:
    - idp_cert
    - slo_endpoint_url
    - sso_endpoint_url
Optional:
    - attr_groups
    - attr_site_admin
    - attr_site_auditor
    - attr_username
    - authn_requests_signed
    - certificate
    - debug
    - private_key
    - private_key_wo
    - private_key_wo_version
    - provider_type
    - signature_digest_method
    - signature_signing_method
    - site_admin_role
    - site_auditor_role
    - sso_api_token_session_timeout
    - team_management_enabled
    - want_assertions_signed
EOT

  type = map(object({
    idp_cert                      = string
    slo_endpoint_url              = string
    sso_endpoint_url              = string
    attr_groups                   = optional(string)
    attr_site_admin               = optional(string)
    attr_site_auditor             = optional(string)
    attr_username                 = optional(string)
    authn_requests_signed         = optional(bool)
    certificate                   = optional(string)
    debug                         = optional(bool)
    private_key                   = optional(string)
    private_key_wo                = optional(string)
    private_key_wo_version        = optional(number)
    provider_type                 = optional(string)
    signature_digest_method       = optional(string)
    signature_signing_method      = optional(string)
    site_admin_role               = optional(string)
    site_auditor_role             = optional(string)
    sso_api_token_session_timeout = optional(number)
    team_management_enabled       = optional(bool)
    want_assertions_signed        = optional(bool)
  }))
}

