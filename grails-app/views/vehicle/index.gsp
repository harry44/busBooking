
<%@ page import="com.jtechies.Vehicle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vehicle.label', default: 'Vehicle')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vehicle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vehicle" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="vehicle.boardingLocation.label" default="Boarding Location" /></th>
					
						<th><g:message code="vehicle.company.label" default="Company" /></th>
					
						<th><g:message code="vehicle.dropLocation.label" default="Drop Location" /></th>
					
						<g:sortableColumn property="image" title="${message(code: 'vehicle.image.label', default: 'Image')}" />
					
						<g:sortableColumn property="plateNumber" title="${message(code: 'vehicle.plateNumber.label', default: 'Plate Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vehicleInstanceList}" status="i" var="vehicleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vehicleInstance.id}">${fieldValue(bean: vehicleInstance, field: "boardingLocation")}</g:link></td>
					
						<td>${fieldValue(bean: vehicleInstance, field: "company")}</td>
					
						<td>${fieldValue(bean: vehicleInstance, field: "dropLocation")}</td>
					
						<td>${fieldValue(bean: vehicleInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: vehicleInstance, field: "plateNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vehicleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
