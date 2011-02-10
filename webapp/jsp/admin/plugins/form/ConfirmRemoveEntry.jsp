<%@ page errorPage="../../ErrorPage.jsp" %>

<jsp:useBean id="formForm" scope="session" class="fr.paris.lutece.plugins.frm.web.FormJspBean" />

<% 
	formForm.init( request, fr.pris.lutece.plugins.form.web.ManageFormJspBean.RIGHT_MANAGE_FORM);
    response.sendRedirect( formForm.getConfirmRemoveEntry(request) );
%>
