#!/bin/sh

<#switch deployed.deployable.type>
    <#case "datical.CheckDrivers">
        <#assign task="CheckDrivers">
        <#break>
    <#case "datical.Snapshot">
        <#assign task="Snapshot">
        <#break>
    <#case "datical.ChangeLogDiff">
        <#assign task="ChangeLogDiff">
        <#break>
    <#case "datical.ReportDiff">
        <#assign task="ReportDiff">
        <#break>
    <#case "datical.Forecast">
        <#assign task="Forecast">
        <#break>
    <#case "datical.Deploy">
        <#assign task="Deploy">
</#switch>

#Write your real script here using the variables to perform action on daticalDB

echo "${step.description}"
echo "Presenting Dummy Commands assuming task based cli command line"
echo "${deployed.container.daticalHomePath}/bin/datical -classpath:${deployed.container.daticalDriverPath} -projectDir:${deployed.projectDirectory} -envName:${deployed.environmentName} -task:${task}"
echo "Successfully completed task on DaticalDB"


