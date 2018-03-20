
<%@ page import="com.jtechies.CompanySetting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'companySetting.label', default: 'CompanySetting')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-companySetting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-companySetting" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list companySetting">
			
				<g:if test="${companySettingInstance?.companyEmail}">
				<li class="fieldcontain">
					<span id="companyEmail-label" class="property-label"><g:message code="companySetting.companyEmail.label" default="Company Email" /></span>
					
						<span class="property-value" aria-labelledby="companyEmail-label"><g:fieldValue bean="${companySettingInstance}" field="companyEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.companyFooter}">
				<li class="fieldcontain">
					<span id="companyFooter-label" class="property-label"><g:message code="companySetting.companyFooter.label" default="Company Footer" /></span>
					
						<span class="property-value" aria-labelledby="companyFooter-label"><g:fieldValue bean="${companySettingInstance}" field="companyFooter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.companyHeader}">
				<li class="fieldcontain">
					<span id="companyHeader-label" class="property-label"><g:message code="companySetting.companyHeader.label" default="Company Header" /></span>
					
						<span class="property-value" aria-labelledby="companyHeader-label"><g:fieldValue bean="${companySettingInstance}" field="companyHeader"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.companyInfo}">
				<li class="fieldcontain">
					<span id="companyInfo-label" class="property-label"><g:message code="companySetting.companyInfo.label" default="Company Info" /></span>
					
						<span class="property-value" aria-labelledby="companyInfo-label"><g:fieldValue bean="${companySettingInstance}" field="companyInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="companySetting.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${companySettingInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.fbLink}">
				<li class="fieldcontain">
					<span id="fbLink-label" class="property-label"><g:message code="companySetting.fbLink.label" default="Fb Link" /></span>
					
						<span class="property-value" aria-labelledby="fbLink-label"><g:fieldValue bean="${companySettingInstance}" field="fbLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.landLine}">
				<li class="fieldcontain">
					<span id="landLine-label" class="property-label"><g:message code="companySetting.landLine.label" default="Land Line" /></span>
					
						<span class="property-value" aria-labelledby="landLine-label"><g:fieldValue bean="${companySettingInstance}" field="landLine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="companySetting.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${companySettingInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.twitterLink}">
				<li class="fieldcontain">
					<span id="twitterLink-label" class="property-label"><g:message code="companySetting.twitterLink.label" default="Twitter Link" /></span>
					
						<span class="property-value" aria-labelledby="twitterLink-label"><g:fieldValue bean="${companySettingInstance}" field="twitterLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.websiteLink}">
				<li class="fieldcontain">
					<span id="websiteLink-label" class="property-label"><g:message code="companySetting.websiteLink.label" default="Website Link" /></span>
					
						<span class="property-value" aria-labelledby="websiteLink-label"><g:fieldValue bean="${companySettingInstance}" field="websiteLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companySettingInstance?.youTubeLink}">
				<li class="fieldcontain">
					<span id="youTubeLink-label" class="property-label"><g:message code="companySetting.youTubeLink.label" default="You Tube Link" /></span>
					
						<span class="property-value" aria-labelledby="youTubeLink-label"><g:fieldValue bean="${companySettingInstance}" field="youTubeLink"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:companySettingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${companySettingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
