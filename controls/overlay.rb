include_controls 'oracle-mysql-ee-5.7-cis-baseline' do

  control '1.2' do
    impact 0.0
    desc 'caveat', 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing use of root account for running mysql.'
    describe 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing use of root account for running mysql.' do
      skip 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 allowing use of root account for running mysql.'
    end
  end

  control '7.1' do
    impact 0.0
    desc 'caveat', 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 for backwards compatibility.'
    describe 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 for backwards compatibility.' do
      skip 'This is Not Applicable for our project since we have an approved risk-based decision on 10/1/2021 for backwards compatibility.'
    end
  end

  control '8.1' do
    impact 0.0
    desc 'caveat', 'This is Not Applicable for our project since we network traffic travels only over internal trusted networks.'
    describe 'This is Not Applicable for our project since we network traffic travels only over internal trusted networks.' do
      skip 'This is Not Applicable for our project since we network traffic travels only over internal trusted networks.'
    end
  end

end
