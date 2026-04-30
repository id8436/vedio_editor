package org.mortbay.jetty.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class MovedContextHandler extends ContextHandler {
    boolean _discardPathInfo;
    boolean _discardQuery;
    String _newContextURL;
    boolean _permanent;
    Redirector _redirector;

    /* JADX INFO: renamed from: org.mortbay.jetty.handler.MovedContextHandler$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    public MovedContextHandler() {
        this._redirector = new Redirector(this, null);
        addHandler(this._redirector);
    }

    public MovedContextHandler(HandlerContainer handlerContainer, String str, String str2) {
        super(handlerContainer, str);
        this._newContextURL = str2;
        this._redirector = new Redirector(this, null);
        addHandler(this._redirector);
    }

    public boolean isDiscardPathInfo() {
        return this._discardPathInfo;
    }

    public void setDiscardPathInfo(boolean z) {
        this._discardPathInfo = z;
    }

    public String getNewContextURL() {
        return this._newContextURL;
    }

    public void setNewContextURL(String str) {
        this._newContextURL = str;
    }

    public boolean isPermanent() {
        return this._permanent;
    }

    public void setPermanent(boolean z) {
        this._permanent = z;
    }

    public boolean isDiscardQuery() {
        return this._discardQuery;
    }

    public void setDiscardQuery(boolean z) {
        this._discardQuery = z;
    }

    class Redirector extends AbstractHandler {
        private final MovedContextHandler this$0;

        private Redirector(MovedContextHandler movedContextHandler) {
            this.this$0 = movedContextHandler;
        }

        Redirector(MovedContextHandler movedContextHandler, AnonymousClass1 anonymousClass1) {
            this(movedContextHandler);
        }

        @Override // org.mortbay.jetty.Handler
        public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
            if (this.this$0._newContextURL != null) {
                Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
                String string = this.this$0._newContextURL;
                if (!this.this$0._discardPathInfo && httpServletRequest.getPathInfo() != null) {
                    string = URIUtil.addPaths(string, httpServletRequest.getPathInfo());
                }
                if (!this.this$0._discardQuery && httpServletRequest.getQueryString() != null) {
                    string = new StringBuffer().append(string).append("?").append(httpServletRequest.getQueryString()).toString();
                }
                httpServletResponse.sendRedirect(string);
                if (this.this$0._permanent) {
                    httpServletResponse.setStatus(301);
                }
                request.setHandled(true);
            }
        }
    }
}
