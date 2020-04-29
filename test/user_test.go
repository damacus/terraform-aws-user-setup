package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/require"
)

func TestTerraformAwsVpc(t *testing.T) {
	t.Parallel()
	awsRegion := aws.GetRandomStableRegion(t, []string{"us-east-1", "eu-west-1"}, nil)

	terraformOptions := &terraform.Options{
		TerraformDir: "..",

		EnvVars: map[string]string{
			"AWS_DEFAULT_REGION": awsRegion,
		},
	}

	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)

	users := terraform.OutputList(t, terraformOptions, "users_group")
	administrators := terraform.OutputList(t, terraformOptions, "administrators_group")

	require.Equal(t, 2, len(users))
	require.Equal(t, 1, len(administrators))
	require.Contains(t, users, "bobc")
	require.NotContains(t, administrators, "bobc")
}
