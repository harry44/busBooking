<%@ page import="com.jtechies.CompanySetting" %>



<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'companyEmail', 'error')} required">
	<label for="companyEmail">
		<g:message code="companySetting.companyEmail.label" default="Company Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyEmail" required="" value="${companySettingInstance?.companyEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'companyFooter', 'error')} required">
	<label for="companyFooter">
		<g:message code="companySetting.companyFooter.label" default="Company Footer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyFooter" required="" value="${companySettingInstance?.companyFooter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'companyHeader', 'error')} required">
	<label for="companyHeader">
		<g:message code="companySetting.companyHeader.label" default="Company Header" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyHeader" required="" value="${companySettingInstance?.companyHeader}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'companyInfo', 'error')} required">
	<label for="companyInfo">
		<g:message code="companySetting.companyInfo.label" default="Company Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyInfo" required="" value="${companySettingInstance?.companyInfo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'companyName', 'error')} required">
	<label for="companyName">
		<g:message code="companySetting.companyName.label" default="Company Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyName" required="" value="${companySettingInstance?.companyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'fbLink', 'error')} required">
	<label for="fbLink">
		<g:message code="companySetting.fbLink.label" default="Fb Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fbLink" required="" value="${companySettingInstance?.fbLink}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'landLine', 'error')} required">
	<label for="landLine">
		<g:message code="companySetting.landLine.label" default="Land Line" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="landLine" required="" value="${companySettingInstance?.landLine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="companySetting.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${companySettingInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'twitterLink', 'error')} required">
	<label for="twitterLink">
		<g:message code="companySetting.twitterLink.label" default="Twitter Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="twitterLink" required="" value="${companySettingInstance?.twitterLink}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'websiteLink', 'error')} required">
	<label for="websiteLink">
		<g:message code="companySetting.websiteLink.label" default="Website Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="websiteLink" required="" value="${companySettingInstance?.websiteLink}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companySettingInstance, field: 'youTubeLink', 'error')} required">
	<label for="youTubeLink">
		<g:message code="companySetting.youTubeLink.label" default="You Tube Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="youTubeLink" required="" value="${companySettingInstance?.youTubeLink}"/>

</div>

