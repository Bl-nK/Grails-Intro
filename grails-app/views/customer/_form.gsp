<%@ page import="grailsintro.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="customer.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${customerInstance.constraints.status.inList}" required="" value="${customerInstance?.status}" valueMessagePrefix="customer.status"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'formattedAddress', 'error')} ">
	<label for="formattedAddress">
		<g:message code="customer.formattedAddress.label" default="Formatted Address" />
		
	</label>
	<g:textField name="formattedAddress" value="${customerInstance?.formattedAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lat', 'error')} ">
	<label for="lat">
		<g:message code="customer.lat.label" default="Lat" />
		
	</label>
	<g:textField name="lat" value="${customerInstance?.lat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lon', 'error')} ">
	<label for="lon">
		<g:message code="customer.lon.label" default="Lon" />
		
	</label>
	<g:textField name="lon" value="${customerInstance?.lon}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="customer.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${customerInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'contacts', 'error')} ">
	<label for="contacts">
		<g:message code="customer.contacts.label" default="Contacts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${customerInstance?.contacts?}" var="c">
    <li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contact" action="create" params="['customer.id': customerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="customer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${customerInstance?.name}"/>

</div>

