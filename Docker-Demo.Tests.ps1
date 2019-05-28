$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "New-DockerDemo" {

    $Path = './testfolder'
    $Name = 'DockerDemo'
    New-DockerDemo -Path $Path -FileName $Name

    It "Directory Should Exist" {
        (Test-Path -Path $Path) | Should Be $true
    }
    It "Application folder should exist" {
        (Test-Path "$Path\$Name") | should be $true
    }
    It ".config file value should be 'Super Simple Pester Docker test'" {
        (Get-Content -Path "$Path\$Name.config") | should be 'Super Simple Pester Docker test'
    }
}

Describe "Test-Connect" {

    It "Should Exist" {
        (Test-Connection 127.0.0.1 -Count 1 -Quiet)  | Should Be $true
    }


}