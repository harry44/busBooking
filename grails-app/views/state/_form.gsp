<%@ page import="com.jtechies.State" %>



<div class="fieldcontain ${hasErrors(bean: stateInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="state.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${com.jtechies.Country.list()}" optionKey="id" required="" value="${stateInstance?.country?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stateInstance, field: 'stateName', 'error')} required">
	<label for="stateName">
		<g:message code="state.stateName.label" default="State Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="stateName" required="" value="${stateInstance?.stateName}"/>

</div>

