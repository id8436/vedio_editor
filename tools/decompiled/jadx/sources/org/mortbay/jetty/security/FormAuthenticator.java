package org.mortbay.jetty.security;

import java.io.IOException;
import java.io.Serializable;
import java.security.Principal;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class FormAuthenticator implements Authenticator {
    public static final String __J_AUTHENTICATED = "org.mortbay.jetty.Auth";
    public static final String __J_PASSWORD = "j_password";
    public static final String __J_SECURITY_CHECK = "/j_security_check";
    public static final String __J_URI = "org.mortbay.jetty.URI";
    public static final String __J_USERNAME = "j_username";
    private String _formErrorPage;
    private String _formErrorPath;
    private String _formLoginPage;
    private String _formLoginPath;

    /* JADX INFO: renamed from: org.mortbay.jetty.security.FormAuthenticator$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public String getAuthMethod() {
        return "FORM";
    }

    public void setLoginPage(String str) {
        if (!str.startsWith(URIUtil.SLASH)) {
            Log.warn("form-login-page must start with /");
            str = new StringBuffer().append(URIUtil.SLASH).append(str).toString();
        }
        this._formLoginPage = str;
        this._formLoginPath = str;
        if (this._formLoginPath.indexOf(63) > 0) {
            this._formLoginPath = this._formLoginPath.substring(0, this._formLoginPath.indexOf(63));
        }
    }

    public String getLoginPage() {
        return this._formLoginPage;
    }

    public void setErrorPage(String str) {
        if (str == null || str.trim().length() == 0) {
            this._formErrorPath = null;
            this._formErrorPage = null;
            return;
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            Log.warn("form-error-page must start with /");
            str = new StringBuffer().append(URIUtil.SLASH).append(str).toString();
        }
        this._formErrorPage = str;
        this._formErrorPath = str;
        if (this._formErrorPath != null && this._formErrorPath.indexOf(63) > 0) {
            this._formErrorPath = this._formErrorPath.substring(0, this._formErrorPath.indexOf(63));
        }
    }

    public String getErrorPage() {
        return this._formErrorPage;
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public Principal authenticate(UserRealm userRealm, String str, Request request, Response response) throws IOException {
        HttpSession session = request.getSession(response != null);
        if (session == null) {
            return null;
        }
        if (isJSecurityCheck(str)) {
            FormCredential formCredential = new FormCredential(null);
            formCredential.authenticate(userRealm, request.getParameter(__J_USERNAME), request.getParameter(__J_PASSWORD), request);
            String contextPath = (String) session.getAttribute(__J_URI);
            if (contextPath == null || contextPath.length() == 0) {
                contextPath = request.getContextPath();
                if (contextPath.length() == 0) {
                    contextPath = URIUtil.SLASH;
                }
            }
            if (formCredential._userPrincipal != null) {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("Form authentication OK for ").append(formCredential._jUserName).toString());
                }
                session.removeAttribute(__J_URI);
                request.setAuthType("FORM");
                request.setUserPrincipal(formCredential._userPrincipal);
                session.setAttribute(__J_AUTHENTICATED, formCredential);
                if (userRealm instanceof SSORealm) {
                    ((SSORealm) userRealm).setSingleSignOn(request, response, formCredential._userPrincipal, new Password(formCredential._jPassword));
                }
                if (response != null) {
                    response.setContentLength(0);
                    response.sendRedirect(response.encodeRedirectURL(contextPath));
                }
            } else {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("Form authentication FAILED for ").append(StringUtil.printable(formCredential._jUserName)).toString());
                }
                if (response != null) {
                    if (this._formErrorPage == null) {
                        response.sendError(403);
                    } else {
                        response.setContentLength(0);
                        response.sendRedirect(response.encodeRedirectURL(URIUtil.addPaths(request.getContextPath(), this._formErrorPage)));
                    }
                }
            }
            return null;
        }
        FormCredential formCredential2 = (FormCredential) session.getAttribute(__J_AUTHENTICATED);
        if (formCredential2 != null) {
            if (formCredential2._userPrincipal == null) {
                formCredential2.authenticate(userRealm, request);
                if (formCredential2._userPrincipal != null && (userRealm instanceof SSORealm)) {
                    ((SSORealm) userRealm).setSingleSignOn(request, response, formCredential2._userPrincipal, new Password(formCredential2._jPassword));
                }
            } else if (!userRealm.reauthenticate(formCredential2._userPrincipal)) {
                formCredential2._userPrincipal = null;
            }
            if (formCredential2._userPrincipal != null) {
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("FORM Authenticated for ").append(formCredential2._userPrincipal.getName()).toString());
                }
                request.setAuthType("FORM");
                request.setUserPrincipal(formCredential2._userPrincipal);
                return formCredential2._userPrincipal;
            }
            session.setAttribute(__J_AUTHENTICATED, null);
        } else if (userRealm instanceof SSORealm) {
            Credential singleSignOn = ((SSORealm) userRealm).getSingleSignOn(request, response);
            if (request.getUserPrincipal() != null) {
                FormCredential formCredential3 = new FormCredential(null);
                formCredential3._userPrincipal = request.getUserPrincipal();
                formCredential3._jUserName = formCredential3._userPrincipal.getName();
                if (singleSignOn != null) {
                    formCredential3._jPassword = singleSignOn.toString();
                }
                if (Log.isDebugEnabled()) {
                    Log.debug(new StringBuffer().append("SSO for ").append(formCredential3._userPrincipal).toString());
                }
                request.setAuthType("FORM");
                session.setAttribute(__J_AUTHENTICATED, formCredential3);
                return formCredential3._userPrincipal;
            }
        }
        if (isLoginOrErrorPage(str)) {
            return SecurityHandler.__NOBODY;
        }
        if (response != null) {
            if (request.getQueryString() != null) {
                str = new StringBuffer().append(str).append("?").append(request.getQueryString()).toString();
            }
            session.setAttribute(__J_URI, new StringBuffer().append(request.getScheme()).append("://").append(request.getServerName()).append(":").append(request.getServerPort()).append(URIUtil.addPaths(request.getContextPath(), str)).toString());
            response.setContentLength(0);
            response.sendRedirect(response.encodeRedirectURL(URIUtil.addPaths(request.getContextPath(), this._formLoginPage)));
        }
        return null;
    }

    public boolean isLoginOrErrorPage(String str) {
        return str != null && (str.equals(this._formErrorPath) || str.equals(this._formLoginPath));
    }

    public boolean isJSecurityCheck(String str) {
        int iIndexOf = str.indexOf(__J_SECURITY_CHECK);
        if (iIndexOf < 0) {
            return false;
        }
        int length = iIndexOf + __J_SECURITY_CHECK.length();
        if (length == str.length()) {
            return true;
        }
        char cCharAt = str.charAt(length);
        return cCharAt == ';' || cCharAt == '#' || cCharAt == '/' || cCharAt == '?';
    }

    class FormCredential implements Serializable, HttpSessionBindingListener {
        String _jPassword;
        String _jUserName;
        transient UserRealm _realm;
        transient Principal _userPrincipal;

        private FormCredential() {
        }

        FormCredential(AnonymousClass1 anonymousClass1) {
            this();
        }

        void authenticate(UserRealm userRealm, String str, String str2, Request request) {
            this._jUserName = str;
            this._jPassword = str2;
            this._userPrincipal = userRealm.authenticate(str, str2, request);
            if (this._userPrincipal != null) {
                this._realm = userRealm;
            } else {
                Log.warn("AUTH FAILURE: user {}", StringUtil.printable(str));
                request.setUserPrincipal(null);
            }
        }

        void authenticate(UserRealm userRealm, Request request) {
            this._userPrincipal = userRealm.authenticate(this._jUserName, this._jPassword, request);
            if (this._userPrincipal != null) {
                this._realm = userRealm;
            } else {
                Log.warn("AUTH FAILURE: user {}", StringUtil.printable(this._jUserName));
                request.setUserPrincipal(null);
            }
        }

        @Override // javax.servlet.http.HttpSessionBindingListener
        public void valueBound(HttpSessionBindingEvent httpSessionBindingEvent) {
        }

        @Override // javax.servlet.http.HttpSessionBindingListener
        public void valueUnbound(HttpSessionBindingEvent httpSessionBindingEvent) {
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("Logout ").append(this._jUserName).toString());
            }
            if (this._realm instanceof SSORealm) {
                ((SSORealm) this._realm).clearSingleSignOn(this._jUserName);
            }
            if (this._realm != null && this._userPrincipal != null) {
                this._realm.logout(this._userPrincipal);
            }
        }

        public int hashCode() {
            return this._jUserName.hashCode() + this._jPassword.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof FormCredential)) {
                return false;
            }
            FormCredential formCredential = (FormCredential) obj;
            return this._jUserName.equals(formCredential._jUserName) && this._jPassword.equals(formCredential._jPassword);
        }

        public String toString() {
            return new StringBuffer().append("Cred[").append(this._jUserName).append("]").toString();
        }
    }
}
