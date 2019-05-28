function New-DockerDemo
{
	[CmdletBinding()]
	param
	(
		$Path,
		$FileName
	)

	New-Item -Path $Path -Name $FileName -ItemType Directory -Force
	New-Item -Path "$Path\$FileName" -Name "$FileName.config" -ItemType File -Force
	Set-Content -Path "$Path\$FileName.config" -Value 'Super Simple Pester Docker test' -Force
}

New-DockerDemo