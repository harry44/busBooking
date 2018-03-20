
<%@ page import="com.jtechies.Vehicle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vehicle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vehicle" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vehicle">
			
				<g:if test="${vehicleInstance?.boardingLocation}">
				<li class="fieldcontain">
					<span id="boardingLocation-label" class="property-label"><g:message code="vehicle.boardingLocation.label" default="Boarding Location" /></span>
					
						<span class="property-value" aria-labelledby="boardingLocation-label"><g:link controller="location" action="show" id="${vehicleInstance?.boardingLocation?.id}">${vehicleInstance?.boardingLocation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehicleInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="vehicle.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="companySetting" action="show" id="${vehicleInstance?.company?.id}">${vehicleInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehicleInstance?.dropLocation}">
				<li class="fieldcontain">
					<span id="dropLocation-label" class="property-label"><g:message code="vehicle.dropLocation.label" default="Drop Location" /></span>
					
						<span class="property-value" aria-labelledby="dropLocation-label"><g:link controller="location" action="show" id="${vehicleInstance?.dropLocation?.id}">${vehicleInstance?.dropLocation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehicleInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="vehicle.image.label" default="Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehicleInstance?.plateNumber}">
				<li class="fieldcontain">
					<span id="plateNumber-label" class="property-label"><g:message code="vehicle.plateNumber.label" default="Plate Number" /></span>
					
						<span class="property-value" aria-labelledby="plateNumber-label"><g:fieldValue bean="${vehicleInstance}" field="plateNumber"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vehicleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vehicleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
