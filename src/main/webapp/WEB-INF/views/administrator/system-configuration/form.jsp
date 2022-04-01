<%--
- form.jsp
-
- Copyright (C) 2012-2022 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<h2>
	<acme:message code="administrator.configuration.form.title.general-indicators"/>
</h2>

<table class="table table-sm">
	<tr>
		<th scope="row">
			<acme:message code="administrator.configuration.form.label.system-currency"/>
		</th>
		<td>
			<acme:print value="${systemCurrency}"/>
		</td>
	</tr>
	<tr>
		<th scope="row">
			<acme:message code="administrator.configuration.form.label.accepted-currencies"/>
		</th>
		<td>
			<acme:print value="${acceptedCurrencies}"/>
		</td>
	</tr><tr>
		<th scope="row">
			<acme:message code="administrator.configuration.form.label.strong-spam-terms"/>
		</th>
		<td>
			<acme:print value="${strongSpamTerms}"/>
		</td>
	</tr><tr>
		<th scope="row">
			<acme:message code="administrator.configuration.form.label.strong-spam-threshold"/>
		</th>
		<td>
			<acme:print value="${strongSpamThreshold}"/>
		</td>
	</tr><tr>
		<th scope="row">
			<acme:message code="administrator.configuration.form.label.weak-spam-terms"/>
		</th>
		<td>
			<acme:print value="${weakSpamTerms}"/>
		</td>
	</tr><tr>
		<th scope="row">
			<acme:message code="administrator.configuration.form.label.weak-spam-threshold"/>
		</th>
		<td>
			<acme:print value="${weakSpamThreshold}"/>
		</td>
	</tr>	
</table>

