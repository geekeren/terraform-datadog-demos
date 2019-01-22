# Terraform Datadog Demos

This is a project with some Demos to configure [datadog](https://www.datadoghq.com) using [terraform](https://www.terraform.io/) to accomplish [Observability As Code](https://www.thoughtworks.com/radar/techniques/observability-as-code).

## Dependencies

- terraform: `brew install terraform`
- Datadog Integration Credential: `datadog_app_key` and `datadog_api_key`, retrieve from [Datadog: Intergration/APIs](https://app.datadoghq.com/account/settings#api)

## Usage

```
terraform init
terraform apply -var "datadog_api_key=xxxxxxxxxxxx" -var "datadog_app_key=xxxxxxxxxxxx"
```

## Migration from existing monitors/dashboards etc. created by GUI
Probably you already have some monitors of datadog configured by GUI before you plan to manage monitor as code.  it may be a boring job to write the monitoring code one by one, fortunately there is a tool [dd2tf](https://www.terraform.io/docs/providers/datadog/index.html) to generate terraform code directly. it's really helpful: when we aren't not familiar with datadog grammar.

## Reference

- [Terraform Official Doc Page: Datadog Provider ](https://www.terraform.io/docs/providers/datadog/index.html)
- [Export DataDog configuration to Terraform](https://github.com/amnk/dd2tf)
