# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

## [1.0.0] - 2026-08-28

### Added

- Initial scaffold of the `terraform-azurerm-caf-dce` module wrapping
  `azurerm_monitor_data_collection_endpoint`.
- Support for `kind`, `description`, and `public_network_access_enabled`.
- ESLZ wrapper (`ESLZ/DataCollectionEndpoint.tf`) and example tfvars
  (`ESLZ/DataCollectionEndpoint.tfvars`).
- Baseline test coverage (`tests/dce.tftest.hcl`).
