package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"

	"github.com/stretchr/testify/assert"

	"github.com/hadenlabs/terraform-grafana-dashboard/config"
	"github.com/hadenlabs/terraform-grafana-dashboard/internal/common/log"
)

func TestBasicSuccess(t *testing.T) {
	t.Parallel()
	conf := config.Must()
	logger := log.Factory(*conf)
	logger.Debugf(
		"values for test terraform-grafana-dashboard is",
	)
	dashboard := "../fixtures/dashboards/home.json"

	terraformOptions := &terraform.Options{
		// The path to where your Terraform code is located
		TerraformDir: "dash-basic",
		Upgrade:      true,
		Vars: map[string]interface{}{
			"file_dashboard": dashboard,
		},
	}

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
	outputID := terraform.Output(t, terraformOptions, "id")
	assert.NotEmpty(t, outputID, outputID)
}
