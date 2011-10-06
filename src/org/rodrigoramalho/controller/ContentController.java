package org.rodrigoramalho.controller;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.GenericPortlet;
import javax.portlet.PortletException;
import javax.portlet.PortletPreferences;
import javax.portlet.PortletRequestDispatcher;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

/**
 * 
 * @author rodrigo - hodrigohamalho@gmail.com
 *
 */
public class ContentController extends GenericPortlet{
	
	@Override
	protected void doView(RenderRequest request, RenderResponse response) throws PortletException, IOException {
		PortletPreferences portletPreferences = request.getPreferences();
		String content = portletPreferences.getValue("content", "");
		
		request.setAttribute("content", content);
		PortletRequestDispatcher rd = getPortletContext().getRequestDispatcher("/jsp/index.jsp");
		rd.include(request, response);
	}
	
	@Override
	protected void doEdit(RenderRequest request, RenderResponse response)
	throws PortletException, IOException {
		
		PortletPreferences portletPreferences = request.getPreferences();
		String content = portletPreferences.getValue("content", "");
		
		request.setAttribute("content", content);
		
		PortletRequestDispatcher rd = getPortletContext().getRequestDispatcher("/jsp/edit.jsp");
		rd.include(request, response);
	}
	
	@Override
	public void processAction(ActionRequest request, ActionResponse response)
	throws PortletException, IOException {

		String content = (String) request.getParameter("content");
		
		PortletPreferences portletPreferences = request.getPreferences();
		portletPreferences.setValue("content", content);
		portletPreferences.store();
		
		request.setAttribute("content", content);
	}
}
