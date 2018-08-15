import subprocess

print("start")
subprocess.call("source ~/command/.bash_aliases" , shell=True)
subprocess.call('export PATH=$PATH":$HOME/command"',shell=True)
