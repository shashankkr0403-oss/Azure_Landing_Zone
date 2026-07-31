package tests

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/require"
)

func TestTerraformValidate(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../environment/dev",
		NoColor:      true,
	})

	_, err := terraform.InitE(t, terraformOptions)
	require.NoError(t, err)

	_, err = terraform.ValidateE(t, terraformOptions)
	require.NoError(t, err)
}
