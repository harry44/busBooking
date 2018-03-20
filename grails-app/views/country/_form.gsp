<%@ page import="com.jtechies.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'countryName', 'error')} required">
	<label for="countryName">
		<g:message code="country.countryName.label" default="Country Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="countryName" required="" value="${countryInstance?.countryName}"/>

</div>

