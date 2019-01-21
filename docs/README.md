# Terraform Datadog Demos

This is a project with some Demos to configure [datadog](https://www.datadoghq.com) using [terraform](https://www.terraform.io/) to accomplish [Observability As Code](https://www.thoughtworks.com/radar/techniques/observability-as-code).

## Dependencies

- terraform: `brew install terraform`
- Datadog Credential: `datadog_app_key` and `datadog_api_key`, retrieve from [Datadog: Intergration/APIs](https://app.datadoghq.com/account/settings#api)

## Usage

```
terraform init
terraform apply -var "datadog_api_key=xxxxxxxxxxxx" -var "datadog_app_key=xxxxxxxxxxxx"
```

## How to get datadog_api_key & datadog_app_key



## Reference

- [Terraform Official Doc Page: Datadog Provider ](https://www.terraform.io/docs/providers/datadog/index.html)
- [Export DataDog configuration to Terraform](https://github.com/amnk/dd2tf)
