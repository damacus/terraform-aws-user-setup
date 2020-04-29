control 'users' do
  impact 1.0
  title 'Verify IAM Groups'
  desc 'Verify that the groups contain the correct users'

  describe aws_iam_group('users') do
    it { should exist }
    its('users') { should include 'dwebb' }
  end

  describe aws_iam_group('administrators') do
    it { should exist }
    its('users') { should_not include 'bobc' }
  end
end
