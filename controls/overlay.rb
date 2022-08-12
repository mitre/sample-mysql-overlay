overlay_controls = input('overlay_controls')

include_controls 'oracle-mysql-ee-5.7-cis-baseline' do

    control '1.1' do
        tag "nist": ['SC-1']
    end

    control '1.2' do
        impact 0.0
        desc 'caveat', 'This is Not Applicable since the related security control is not included in ***SPONSOR*** policy'
        describe 'This control is not applicable when running MySQL on Microsoft systems' do
            skip 'This control is not applicable when running MySQL on Microsoft systems'
        end
    end

    control '2.1' do
        only_if { os.linux? or os.windows? }
    end

    control '3.1' do
        describe "A manual review is required to verify Ensure 'datadir' Has Appropriate Permissions and Ownership. If it is then this is a finding." do	
         skip "A manual review is required to verify Ensure 'datadir' Has Appropriate Permissions and Ownership. If it is then this is a finding."	
        end
    end

    control '4.1' do
        title "Ensure Latest Security Patches Are Applied are greater than the version 5.7.x"
        tag "check": "
  Execute the following SQL statement to identify the MySQL server version:
    SHOW VARIABLES WHERE Variable_name LIKE 'version';
  Now compare the version with the security announcements from Oracle and/or the OS if the OS packages are used"
  tag "fix": 'Install the latest patches for your version or upgrade to the latest version'
    end

end