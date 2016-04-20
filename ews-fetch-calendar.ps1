function Get-ScriptDirectory
{
  $Invocation = (Get-Variable MyInvocation -Scope 1).Value
  Split-Path $Invocation.MyCommand.Path
}
$PYTHON_HOME="C:\python-venv\python-278-win32"

$ACTIVATION_SCRIPT = $PYTHON_HOME + "\Scripts\activate.ps1"

& $ACTIVATION_SCRIPT

$scriptdir  = Get-ScriptDirectory  
$script = $scriptdir + "\ews-fetch-calendar.py"
python $script -o $env:USERPROFILE\.ews-orgmode\outlook.org
#cmd /c pause | Out-Null
#python $script