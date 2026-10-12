resource "tfe_saml_settings" "saml_settings" {
  for_each = var.saml_settings

  idp_cert                      = each.value.idp_cert
  slo_endpoint_url              = each.value.slo_endpoint_url
  sso_endpoint_url              = each.value.sso_endpoint_url
  attr_groups                   = each.value.attr_groups
  attr_site_admin               = each.value.attr_site_admin
  attr_site_auditor             = each.value.attr_site_auditor
  attr_username                 = each.value.attr_username
  authn_requests_signed         = each.value.authn_requests_signed
  certificate                   = each.value.certificate
  debug                         = each.value.debug
  private_key                   = each.value.private_key
  private_key_wo                = each.value.private_key_wo
  private_key_wo_version        = each.value.private_key_wo_version
  provider_type                 = each.value.provider_type
  signature_digest_method       = each.value.signature_digest_method
  signature_signing_method      = each.value.signature_signing_method
  site_admin_role               = each.value.site_admin_role
  site_auditor_role             = each.value.site_auditor_role
  sso_api_token_session_timeout = each.value.sso_api_token_session_timeout
  team_management_enabled       = each.value.team_management_enabled
  want_assertions_signed        = each.value.want_assertions_signed
}

