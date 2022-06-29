    $AdminAccount = Read-Host "Please enter the O365 Admin email address"
        Write-Host "Please press Enter..."
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
        Connect-ExchangeOnline -UserPrincipalName $AdminAccount

do {$TargetMailbox = Read-Host "Please enter the email address of the mailbox that is BEING SHARED"`

    Write-Host 'Press any key to continue...'; `
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

    $DelegateAccount = Read-Host "Please enter the email address of the user GETTING ACCESS to the mailbox"`

    Write-Host 'Press any key to continue...'; `
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

    Add-MailboxPermission -Identity $TargetMailbox -User $DelegateAccount -AccessRights FullAccess -InheritanceType All -Automapping $False

    Write-Host 'Press any key to continue...'; `
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

    Write-Output 'Outlook Auto-Mapping for mailbox '${TargetMailbox}' has been disabled for '${DelegateAccount}''`}

    function Show-Menu
{
    param (
        [string]$Title = 'Confirmation Menu'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "Do you need to add additional delegates?"
    Write-Host "1: Press '1' to add more delegates."
    Write-Host "2: Press '2' to quit."
}
        Show-Menu
        $selection = Read-Host "Please make your selection"
        switch ($selection)
        {
            '1' {
                'Adding additional delegates'
            } '2' {
                'Closing script.'
            }
        }
        pause
} until ($selection -eq '2' )