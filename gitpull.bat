@echo off
:: ======================
:: This utility will help you to pull all the repo at once
:: Switch to develop branch and pull all
:: gitpull ALL : to pull all the repository
:: gitpull repo-1 : to pull a single repository 
:: ======================
if %1==ALL (
	set list=repo-1 repo-2 repo-3
	(for %%a in (%list%) do (
	   echo %%a 
	   cd "C:\git_clones/\%%a"
	   git checkout develop
	   git pull
	))
) else (
	cd "C:\git_clones/\%1"
	git checkout develop
	git pull	
)
