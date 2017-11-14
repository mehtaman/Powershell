#=========================================================================== 
# Created By jai47 ©2017 
#=========================================================================== 
Add-Type -AssemblyName PresentationFramework, System.Drawing, System.Windows.Forms 
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework') 
[xml]$XAML = @' 
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" 
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" 
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 
        xmlns:local="clr-namespace:WpfApp3" 
        Name="window" WindowStyle="None" Width="513" Height="417.5" Opacity="0.85" AllowsTransparency="True"> 
        <Window.Resources> 
        <Style TargetType="GridViewColumnHeader"> 
            <Setter Property="Background" Value="Transparent" /> 
            <Setter Property="Foreground" Value="Transparent"/> 
            <Setter Property="BorderBrush" Value="Transparent"/> 
            <Setter Property="FontWeight" Value="Bold"/> 
            <Setter Property="Opacity" Value="0.5"/> 
            <Setter Property="Template"> 
                <Setter.Value> 
                    <ControlTemplate TargetType="GridViewColumnHeader"> 
                    <Border Background="Transparent"> 
                    <ContentPresenter></ContentPresenter> 
                    </Border> 
                    </ControlTemplate> 
                </Setter.Value> 
            </Setter> 
        </Style> 
        </Window.Resources> 
    <Grid Name="grid" Height="418" HorizontalAlignment="Left" VerticalAlignment="Top"> 
        <Label Name="Title" Content="System Resources" HorizontalAlignment="Left" VerticalAlignment="Top" Width="513" Background="#313130" Foreground="White" FontWeight="Bold" FontSize="14" Height="27"/> 
        <Label Content="Hostname" HorizontalAlignment="Left" Margin="0,27,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="Operating System Name" HorizontalAlignment="Left" Margin="0,57,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="OS Architecture" HorizontalAlignment="Left" Margin="0,87,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="Available Memory" HorizontalAlignment="Left" Margin="0,117,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="Total Memory" HorizontalAlignment="Left" Margin="0,147,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="Windows Directory" HorizontalAlignment="Left" Margin="0,177,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="IP Address" HorizontalAlignment="Left" Margin="0,207,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="System Drive" HorizontalAlignment="Left" Margin="0,237,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="Drive Label" HorizontalAlignment="Left" Margin="0,267,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="Drive Capacity" HorizontalAlignment="Left" Margin="0,297,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="Free Space" HorizontalAlignment="Left" Margin="0,327,0,0" Width="170" Background="#313130" Foreground="White" Height="30" VerticalAlignment="Top"/> 
        <Label Content="CPU Name" HorizontalAlignment="Left" Margin="0,357,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <Label Content="CPU Load" HorizontalAlignment="Left" Margin="0,387,0,0" VerticalAlignment="Top" Height="30" Width="170" Background="#313130" Foreground="White"/> 
        <TextBox Name="txtHostName" Height="30" Margin="170,27,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" IsEnabled="True" AllowDrop="True" BorderThickness="0.5" HorizontalAlignment="Left" Width="343"/> 
        <TextBox Name="txtOSName" HorizontalAlignment="Left" Height="30" Margin="170,57,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtOSArchitecture" HorizontalAlignment="Left" Height="30" Margin="170,87,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtAvailableMemory" HorizontalAlignment="Left" Height="30" Margin="170,117,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtTotalMemory" HorizontalAlignment="Left" Height="30" Margin="170,147,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtWindowsDirectory" HorizontalAlignment="Left" Height="30" Margin="170,177,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtWindowsIP" HorizontalAlignment="Left" Height="30" Margin="170,207,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtSystemDrive" HorizontalAlignment="Left" Height="30" Margin="170,237,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtSystemLabel" HorizontalAlignment="Left" Height="30" Margin="170,267,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtSystemTotal" HorizontalAlignment="Left" Height="30" Margin="170,297,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtSystemFree" HorizontalAlignment="Left" Height="30" Margin="170,327,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtWindowsCPU" HorizontalAlignment="Left" Height="30" Margin="170,357,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
        <TextBox Name="txtWindowsLoad" HorizontalAlignment="Left" Height="30" Margin="170,387,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="343" IsEnabled="True" BorderThickness="0.5"/> 
            <ListView Name="listview" SelectionMode="Single" Foreground="White" Background="Transparent" BorderBrush="Transparent" IsHitTestVisible="False"> 
                <ListView.ItemContainerStyle> 
                    <Style> 
                        <Setter Property="Control.HorizontalContentAlignment" Value="Stretch"/> 
                        <Setter Property="Control.VerticalContentAlignment" Value="Stretch"/> 
                    </Style> 
                </ListView.ItemContainerStyle> 
            </ListView> 
    </Grid> 
</Window> 
'@ 
 
#Read XAML 
$reader=(New-Object System.Xml.XmlNodeReader $xaml)  
try{$Form=[Windows.Markup.XamlReader]::Load( $reader )} 
catch{Write-Host "Unable to load Windows.Markup.XamlReader. Some possible causes for this problem include: .NET Framework is missing PowerShell must be launched with PowerShell -sta, invalid XAML code was encountered."; exit} 
 
#=========================================================================== 
# Store Form Objects In PowerShell 
#=========================================================================== 
$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)} 
 
Function RefreshData{ 
#=========================================================================== 
# Stores WMI values in WMI Object from System Classes 
#=========================================================================== 
$oWMIOS = @() 
$oWMIHD = @() 
$oWMINIC = @() 
$oWMICPU = @() 
$oWMIOS = Get-WmiObject win32_OperatingSystem 
$oWMIHD = Get-WmiObject Win32_Volume -Filter "DriveType='3'" 
$oWMINIC = Get-WmiObject Win32_NetworkAdapterConfiguration | Where { $_.IPAddress } | Select -Expand IPAddress | Where { $_ -like '1*' } 
$oWMICPU = Get-WmiObject win32_processor | select Name, LoadPercentage 
 
#=========================================================================== 
# Calculate Disk Space 
#=========================================================================== 
foreach ($disk in ($oWMIHD | Sort-Object -Property Name)) { 
$disks = @() 
    if (!$disk.name.StartsWith("\\")) { 
              $disks += [PSCustomObject]@{ 
                     Name = $disk.Name 
                     Label = $disk.Label 
                     Total = "$([Math]::Round($disk.Capacity /1GB,1)) GB" 
                     Free = "$([Math]::Round($disk.FreeSpace /1GB,1)) GB" 
              } 
       } 
} 
 
#=========================================================================== 
# Compress CPU Name to 20 characters 
#=========================================================================== 
foreach ($oWMICPUs in $oWMICPU) { 
    $oWMICPUs.Name = $oWMICPUs.Name -replace '(.{20}).+','$1'  
} 
 
#=========================================================================== 
# Links WMI Object Values to XAML Form Fields 
#=========================================================================== 
$txtHostName.Text = $oWMIOS.PSComputerName 
 
#Formats and displays OS name 
$aOSName = $oWMIOS.name.Split("|") 
$txtOSName.Text = $aOSName[0] 
 
#Displays OS Architecture 
$txtOSArchitecture.Text = $oWMIOS.OSArchitecture 
 
#Formats and displays available memory 
$sAvailableMemory = [math]::round($oWMIOS.freephysicalmemory/1000,0) 
$sAvailableMemory = "$sAvailableMemory MB" 
$txtAvailableMemory.Text = $sAvailableMemory 
 
#Formats and displays total memory 
$sTotalMemory = [math]::round($oWMIOS.TotalVisibleMemorySize/1000,0) 
$sTotalMemory = "$sTotalMemory MB" 
$txtTotalMemory.Text = $sTotalMemory 
 
#Displays Windows Directory 
$txtWindowsDirectory.Text = $oWMIOS.WindowsDirectory 
 
#Displays IP Address 
$txtWindowsIP.Text = $oWMINIC 
 
#Displays System Drive 
$txtSystemDrive.Text = $oWMIOS.SystemDrive 
$txtSystemLabel.Text = $disks.Label 
$txtSystemTotal.Text = $disks.total 
$txtSystemFree.Text = $disks.Free 
 
#Displays CPU details 
$txtWindowsCPU.Text = $oWMICPU.Name 
$txtWindowsLoad.Text = [string]$oWMICPU.LoadPercentage+"%" 
} 
 
#=========================================================================== 
# Build Tray Icon 
#=========================================================================== 
$icon = [System.Drawing.Icon]::ExtractAssociatedIcon("C:\Windows\System32\cmmon32.exe") 
 
# Populate ListView with PS Object data and set width  
$listview.ItemsSource = $disks 
$listview.Width = $grid.width*.9  
 
# Create GridView object to add to ListView  
$gridview = New-Object System.Windows.Controls.GridView  
  
# Dynamically add columns to GridView, then bind data to columns  
foreach ($column in $columnorder) {  
    $gridcolumn = New-Object System.Windows.Controls.GridViewColumn  
    $gridcolumn.Header = $column  
    $gridcolumn.Width = $grid.width*.20  
    $gridbinding = New-Object System.Windows.Data.Binding $column  
    $gridcolumn.DisplayMemberBinding = $gridbinding  
    $gridview.AddChild($gridcolumn)  
}  
  
# Add GridView to ListView  
$listview.View = $gridview  
  
# Create notifyicon, and right-click -> Exit menu  
$notifyicon = New-Object System.Windows.Forms.NotifyIcon  
$notifyicon.Text = "System Resources"  
$notifyicon.Icon = $icon  
$notifyicon.Visible = $true  
  
$menuitem = New-Object System.Windows.Forms.MenuItem  
$menuitem.Text = "Exit"  
 
$contextmenu = New-Object System.Windows.Forms.ContextMenu  
$notifyicon.ContextMenu = $contextmenu  
$notifyicon.contextMenu.MenuItems.AddRange($menuitem)  
  
# Add a left click that makes the Window appear in the lower right part of the screen, above the notify icon.  
$notifyicon.add_Click({  
    if ($_.Button -eq [Windows.Forms.MouseButtons]::Left) {  
            # reposition each time, in case the resolution or monitor changes  
        $window.Left = $([System.Windows.SystemParameters]::WorkArea.Width-$window.Width)  
            $window.Top = $([System.Windows.SystemParameters]::WorkArea.Height-$window.Height)  
            $window.Show()  
            $window.Activate() 
            RefreshData 
    }  
})  
  
# Close the window if it's double clicked  
$window.Add_MouseDoubleClick({  
    RefreshData 
})  
  
#Close the window if it loses focus  
$window.Add_Deactivated({  
    $window.Hide() 
})  
  
# When Exit is clicked, close everything and kill the PowerShell process  
$menuitem.add_Click({  
   $notifyicon.Visible = $false  
   $window.close()  
   Stop-Process $pid  
})  
  
# Make PowerShell Disappear  
$windowcode = '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);'  
$asyncwindow = Add-Type -MemberDefinition $windowcode -name Win32ShowWindowAsync -namespace Win32Functions -PassThru 
$null = $asyncwindow::ShowWindowAsync((Get-Process -PID $pid).MainWindowHandle, 0)  
  
Force garbage collection just to start slightly lower RAM usage.  
[System.GC]::Collect()  
  
Create an application context for it to all run within.  
This helps with responsiveness, especially when clicking Exit.  
$appContext = New-Object System.Windows.Forms.ApplicationContext  
[void][System.Windows.Forms.Application]::Run($appContext)
