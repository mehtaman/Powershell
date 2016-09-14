# Collect Host Names
Foreach ($device in get-content #HOSTNAMES#.txt) {

# Allow RPC Connection
Function UpdateRPC ([string]$hostname) {
foreach ($dev in ($device)) {
$registryPath = "HKLM:\System\CurrentControlSet\Control\Terminal Server"
$Name = "AllowRemoteRPC"
$value = "1"
IF(!(Test-Path $registryPath)){
    New-Item -Path $registryPath -Force | Out-Null
        New-ItemProperty -Path $registryPath -Name $name -Value $value `
            -PropertyType DWORD -Force | Out-Null}
 ELSE {
     New-ItemProperty -Path $registryPath -Name $name -Value $value `
        -PropertyType DWORD -Force | Out-Null}
    }
}
# Build Data Table
Function out-DataTable 
{
  $dt = new-object Data.datatable  
  $First = $true  
  foreach ($item in $input){  
    $DR = $DT.NewRow()  
    $Item.PsObject.get_properties() | foreach {  
      if ($first) {  
        $Col =  new-object Data.DataColumn  
        $Col.ColumnName = $_.Name.ToString()  
        $DT.Columns.Add($Col)       }  
      if ($_.value -eq $null) {  
        $DR.Item($_.Name) = "null"  
      }  
      elseif ($_.IsArray) {  
        $DR.Item($_.Name) =[string]::Join($_.value ,";")  
      }  
      else {  
        $DR.Item($_.Name) = $_.value  
      }  
    }  
    $DT.Rows.Add($DR)  
    $First = $false  
  } 
  return @(,($dt))
}

# Function to collect Software information
Function Get-Software ([string]$hostname)
    {
    Get-WmiObject -ComputerName $device Win32_Product | Select @{Label="Hostname";Expression={[string]$device}}, Name, Version, Vendor, InstallDate, IdentifyingNumber
    }

# Execute the functions to SQL
foreach ($d in $device)
    {
    UpdateRPC $d
    Get-Software $d
        $dataTable = Get-Software $d | out-DataTable
        $connectionString = "Data Source=#SERVER#; Integrated Security=True;Initial Catalog=#INSTANCE#;"
        $bulkCopy = new-object ("Data.SqlClient.SqlBulkCopy") $connectionString
        $bulkCopy.DestinationTableName = "#DATABASE#"
        $bulkCopy.WriteToServer($dataTable)
    }

}
