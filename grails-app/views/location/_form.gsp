<%@ page import="com.jtechies.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="location.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="city" name="city.id" from="${com.jtechies.City.list()}" optionKey="id" required="" value="${locationInstance?.city?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'locationName', 'error')} required">
	<label for="locationName">
		<g:message code="location.locationName.label" default="Location Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locationName" required="" value="${locationInstance?.locationName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="location.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="state" name="state.id" from="${com.jtechies.State.list()}" optionKey="id" required="" value="${locationInstance?.state?.id}" class="many-to-one"/>

</div>

