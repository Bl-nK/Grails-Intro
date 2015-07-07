<%@ page import="grailsintro.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="contact.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${contactInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="contact.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${grailsintro.Customer.list()}" optionKey="id" required="" value="${contactInstance?.customer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contact.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${contactInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="contact.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${contactInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="contact.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${contactInstance?.title}"/>

</div>

