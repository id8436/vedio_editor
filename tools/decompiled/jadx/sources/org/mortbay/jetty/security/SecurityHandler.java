package org.mortbay.jetty.security;

import java.io.IOException;
import java.security.Principal;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Connector;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.StringUtil;

/* JADX INFO: loaded from: classes3.dex */
public class SecurityHandler extends HandlerWrapper {
    private Authenticator _authenticator;
    private ConstraintMapping[] _constraintMappings;
    private UserRealm _userRealm;
    public static Principal __NO_USER = new Principal() { // from class: org.mortbay.jetty.security.SecurityHandler.1
        @Override // java.security.Principal
        public String getName() {
            return null;
        }

        @Override // java.security.Principal
        public String toString() {
            return "No User";
        }
    };
    public static Principal __NOBODY = new Principal() { // from class: org.mortbay.jetty.security.SecurityHandler.2
        @Override // java.security.Principal
        public String getName() {
            return "Nobody";
        }

        @Override // java.security.Principal
        public String toString() {
            return getName();
        }
    };
    private String _authMethod = "BASIC";
    private PathMap _constraintMap = new PathMap();
    private NotChecked _notChecked = new NotChecked(this);
    private boolean _checkWelcomeFiles = false;

    public Authenticator getAuthenticator() {
        return this._authenticator;
    }

    public void setAuthenticator(Authenticator authenticator) {
        this._authenticator = authenticator;
    }

    public UserRealm getUserRealm() {
        return this._userRealm;
    }

    public void setUserRealm(UserRealm userRealm) {
        this._userRealm = userRealm;
    }

    public ConstraintMapping[] getConstraintMappings() {
        return this._constraintMappings;
    }

    public void setConstraintMappings(ConstraintMapping[] constraintMappingArr) {
        this._constraintMappings = constraintMappingArr;
        if (this._constraintMappings != null) {
            this._constraintMappings = constraintMappingArr;
            this._constraintMap.clear();
            for (int i = 0; i < this._constraintMappings.length; i++) {
                this._constraintMap.put(this._constraintMappings[i].getPathSpec(), LazyList.add(this._constraintMap.get(this._constraintMappings[i].getPathSpec()), this._constraintMappings[i]));
            }
        }
    }

    public String getAuthMethod() {
        return this._authMethod;
    }

    public void setAuthMethod(String str) {
        if (isStarted() && this._authMethod != null && !this._authMethod.equals(str)) {
            throw new IllegalStateException("Handler started");
        }
        this._authMethod = str;
    }

    public boolean hasConstraints() {
        return this._constraintMappings != null && this._constraintMappings.length > 0;
    }

    public boolean isCheckWelcomeFiles() {
        return this._checkWelcomeFiles;
    }

    public void setCheckWelcomeFiles(boolean z) {
        this._checkWelcomeFiles = z;
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        if (this._authenticator == null) {
            if ("BASIC".equalsIgnoreCase(this._authMethod)) {
                this._authenticator = new BasicAuthenticator();
            } else if ("DIGEST".equalsIgnoreCase(this._authMethod)) {
                this._authenticator = new DigestAuthenticator();
            } else if ("CLIENT_CERT".equalsIgnoreCase(this._authMethod)) {
                this._authenticator = new ClientCertAuthenticator();
            } else if ("FORM".equalsIgnoreCase(this._authMethod)) {
                this._authenticator = new FormAuthenticator();
            } else {
                Log.warn(new StringBuffer().append("Unknown Authentication method:").append(this._authMethod).toString());
            }
        }
        super.doStart();
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        Response response = httpServletResponse instanceof Response ? (Response) httpServletResponse : HttpConnection.getCurrentConnection().getResponse();
        UserRealm userRealm = request.getUserRealm();
        try {
            request.setUserRealm(getUserRealm());
            if (i == 1 && !checkSecurityConstraints(str, request, response)) {
                request.setHandled(true);
                return;
            }
            if (i == 2 && this._checkWelcomeFiles && httpServletRequest.getAttribute("org.mortbay.jetty.welcome") != null) {
                httpServletRequest.removeAttribute("org.mortbay.jetty.welcome");
                if (!checkSecurityConstraints(str, request, response)) {
                    request.setHandled(true);
                    if (this._userRealm != null && i == 1) {
                        this._userRealm.disassociate(request.getUserPrincipal());
                    }
                    request.setUserRealm(userRealm);
                    return;
                }
            }
            if ((this._authenticator instanceof FormAuthenticator) && str.endsWith(FormAuthenticator.__J_SECURITY_CHECK)) {
                this._authenticator.authenticate(getUserRealm(), str, request, response);
                request.setHandled(true);
                if (this._userRealm != null && i == 1) {
                    this._userRealm.disassociate(request.getUserPrincipal());
                }
                request.setUserRealm(userRealm);
                return;
            }
            if (getHandler() != null) {
                getHandler().handle(str, httpServletRequest, httpServletResponse, i);
            }
            if (this._userRealm != null && i == 1) {
                this._userRealm.disassociate(request.getUserPrincipal());
            }
            request.setUserRealm(userRealm);
        } finally {
            if (this._userRealm != null && i == 1) {
                this._userRealm.disassociate(request.getUserPrincipal());
            }
            request.setUserRealm(userRealm);
        }
    }

    public boolean checkSecurityConstraints(String str, Request request, Response response) throws IOException {
        Object obj;
        Object objAdd;
        String str2;
        Object obj2 = null;
        Object lazyMatches = this._constraintMap.getLazyMatches(str);
        if (lazyMatches != null) {
            int i = 0;
            String str3 = null;
            loop0: while (true) {
                if (i >= LazyList.size(lazyMatches)) {
                    obj = obj2;
                    break;
                }
                Map.Entry entry = (Map.Entry) LazyList.get(lazyMatches, i);
                Object value = entry.getValue();
                String str4 = (String) entry.getKey();
                int i2 = 0;
                while (i2 < LazyList.size(value)) {
                    ConstraintMapping constraintMapping = (ConstraintMapping) LazyList.get(value, i2);
                    if (constraintMapping.getMethod() != null && !constraintMapping.getMethod().equalsIgnoreCase(request.getMethod())) {
                        objAdd = obj2;
                        str2 = str3;
                    } else {
                        if (str3 != null && !str3.equals(str4)) {
                            obj = obj2;
                            break loop0;
                        }
                        objAdd = LazyList.add(obj2, constraintMapping.getConstraint());
                        str2 = str4;
                    }
                    i2++;
                    str3 = str2;
                    obj2 = objAdd;
                }
                i++;
            }
            return check(obj, this._authenticator, this._userRealm, str, request, response);
        }
        request.setUserPrincipal(this._notChecked);
        return true;
    }

    private boolean check(Object obj, Authenticator authenticator, UserRealm userRealm, String str, Request request, Response response) throws IOException {
        boolean z;
        Principal principalAuthenticate;
        boolean z2;
        boolean z3;
        Object objAdd;
        Object obj2 = null;
        boolean z4 = false;
        int dataConstraint = 0;
        int i = 0;
        while (i < LazyList.size(obj)) {
            Constraint constraint = (Constraint) LazyList.get(obj, i);
            if (dataConstraint > -1 && constraint.hasDataConstraint()) {
                if (constraint.getDataConstraint() > dataConstraint) {
                    dataConstraint = constraint.getDataConstraint();
                }
            } else {
                dataConstraint = -1;
            }
            if (z4) {
                z3 = z4;
            } else if (constraint.getAuthenticate()) {
                if (constraint.isAnyRole()) {
                    obj2 = "*";
                    z3 = z4;
                } else {
                    String[] roles = constraint.getRoles();
                    if (roles == null || roles.length == 0) {
                        z = true;
                        break;
                    }
                    if (obj2 != "*") {
                        objAdd = obj2;
                        int length = roles.length;
                        while (true) {
                            int i2 = length - 1;
                            if (length <= 0) {
                                break;
                            }
                            objAdd = LazyList.add(objAdd, roles[i2]);
                            length = i2;
                        }
                    } else {
                        objAdd = obj2;
                    }
                    obj2 = objAdd;
                    z3 = z4;
                }
            } else {
                z3 = true;
            }
            i++;
            z4 = z3;
        }
        z = false;
        if (z && (!(authenticator instanceof FormAuthenticator) || !((FormAuthenticator) authenticator).isLoginOrErrorPage(str))) {
            response.sendError(403);
            return false;
        }
        if (dataConstraint > 0) {
            Connector connector = HttpConnection.getCurrentConnection().getConnector();
            switch (dataConstraint) {
                case 1:
                    if (!connector.isIntegral(request)) {
                        if (connector.getConfidentialPort() > 0) {
                            String string = new StringBuffer().append(connector.getIntegralScheme()).append("://").append(request.getServerName()).append(":").append(connector.getIntegralPort()).append(request.getRequestURI()).toString();
                            if (request.getQueryString() != null) {
                                string = new StringBuffer().append(string).append("?").append(request.getQueryString()).toString();
                            }
                            response.setContentLength(0);
                            response.sendRedirect(response.encodeRedirectURL(string));
                        } else {
                            response.sendError(403, null);
                        }
                        return false;
                    }
                    break;
                case 2:
                    if (!connector.isConfidential(request)) {
                        if (connector.getConfidentialPort() > 0) {
                            String string2 = new StringBuffer().append(connector.getConfidentialScheme()).append("://").append(request.getServerName()).append(":").append(connector.getConfidentialPort()).append(request.getRequestURI()).toString();
                            if (request.getQueryString() != null) {
                                string2 = new StringBuffer().append(string2).append("?").append(request.getQueryString()).toString();
                            }
                            response.setContentLength(0);
                            response.sendRedirect(response.encodeRedirectURL(string2));
                        } else {
                            response.sendError(403, null);
                        }
                        return false;
                    }
                    break;
                default:
                    response.sendError(403, null);
                    return false;
            }
        }
        if (!z4 && obj2 != null) {
            if (userRealm == null) {
                Log.warn(new StringBuffer().append("Request ").append(request.getRequestURI()).append(" failed - no realm").toString());
                response.sendError(500, "No realm");
                return false;
            }
            if (request.getAuthType() != null && request.getRemoteUser() != null) {
                Principal userPrincipal = request.getUserPrincipal();
                if (userPrincipal == null) {
                    userPrincipal = userRealm.authenticate(request.getRemoteUser(), null, request);
                }
                principalAuthenticate = (userPrincipal != null || authenticator == null) ? userPrincipal : authenticator.authenticate(userRealm, str, request, response);
            } else if (authenticator != null) {
                principalAuthenticate = authenticator.authenticate(userRealm, str, request, response);
            } else {
                Log.warn(new StringBuffer().append("Mis-configured Authenticator for ").append(request.getRequestURI()).toString());
                response.sendError(500, "Configuration error");
                principalAuthenticate = null;
            }
            if (principalAuthenticate == null) {
                return false;
            }
            if (principalAuthenticate != __NOBODY && obj2 != "*") {
                int size = LazyList.size(obj2);
                while (true) {
                    int i3 = size - 1;
                    if (size <= 0) {
                        z2 = false;
                    } else if (userRealm.isUserInRole(principalAuthenticate, (String) LazyList.get(obj2, i3))) {
                        z2 = true;
                    } else {
                        size = i3;
                    }
                }
                if (!z2) {
                    Log.warn(new StringBuffer().append("AUTH FAILURE: incorrect role for ").append(StringUtil.printable(principalAuthenticate.getName())).toString());
                    response.sendError(403, "User not in required role");
                    return false;
                }
            }
        } else {
            request.setUserPrincipal(this._notChecked);
        }
        return true;
    }

    public class NotChecked implements Principal {
        private final SecurityHandler this$0;

        public NotChecked(SecurityHandler securityHandler) {
            this.this$0 = securityHandler;
        }

        @Override // java.security.Principal
        public String getName() {
            return null;
        }

        @Override // java.security.Principal
        public String toString() {
            return "NOT CHECKED";
        }

        public SecurityHandler getSecurityHandler() {
            return this.this$0;
        }
    }
}
