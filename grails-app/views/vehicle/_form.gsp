<%@ page import="com.jtechies.Vehicle" %>



<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'boardingLocation', 'error')} required">
	<label for="boardingLocation">
		<g:message code="vehicle.boardingLocation.label" default="Boarding Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="boardingLocation" name="boardingLocation.id" from="${com.jtechies.Location.list()}" optionKey="id" required="" value="${vehicleInstance?.boardingLocation?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="vehicle.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.jtechies.CompanySetting.list()}" optionKey="id" required="" value="${vehicleInstance?.company?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'dropLocation', 'error')} required">
	<label for="dropLocation">
		<g:message code="vehicle.dropLocation.label" default="Drop Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dropLocation" name="dropLocation.id" from="${com.jtechies.Location.list()}" optionKey="id" required="" value="${vehicleInstance?.dropLocation?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="vehicle.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="image" name="image" />

</div>

<div class="fieldcontain ${hasErrors(bean: vehicleInstance, field: 'plateNumber', 'error')} required">
	<label for="plateNumber">
		<g:message code="vehicle.plateNumber.label" default="Plate Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plateNumber" required="" value="${vehicleInstance?.plateNumber}"/>

</div>

