
<%@ page import="grailsintro.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
		#map-canvas {
			height: 100%;
			margin: auto;

		}
		</style>
		<script type="text/javascript"
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD3qDBkZDfstkN7poxsoSno85IkTAG3-x4">
		</script>
		<script type="text/javascript">
			var lat = ${customerInstance.lat};
			var lon = ${customerInstance.lon};
			google.maps.event.addDomListener(window, 'load', initialize);
		</script>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="customer.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${customerInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.formattedAddress}">
				<li class="fieldcontain">
					<span id="formattedAddress-label" class="property-label"><g:message code="customer.formattedAddress.label" default="Formatted Address" /></span>
					
						<span class="property-value" aria-labelledby="formattedAddress-label"><g:fieldValue bean="${customerInstance}" field="formattedAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lat}">
				<li class="fieldcontain">
					<span id="lat-label" class="property-label"><g:message code="customer.lat.label" default="Lat" /></span>
					
						<span class="property-value" aria-labelledby="lat-label"><g:fieldValue bean="${customerInstance}" field="lat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lon}">
				<li class="fieldcontain">
					<span id="lon-label" class="property-label"><g:message code="customer.lon.label" default="Lon" /></span>
					
						<span class="property-value" aria-labelledby="lon-label"><g:fieldValue bean="${customerInstance}" field="lon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="customer.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${customerInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.contacts}">
				<li class="fieldcontain">
					<span id="contacts-label" class="property-label"><g:message code="customer.contacts.label" default="Contacts" /></span>
					
						<g:each in="${customerInstance.contacts}" var="c">
						<span class="property-value" aria-labelledby="contacts-label"><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="customer.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${customerInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="customer.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${customerInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="customer.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${customerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>

			<div id="map" style="width: 705px; height: 510px;">
				<div id="map-canvas"></div>
			</div>

			<g:form url="[resource:customerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${customerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
