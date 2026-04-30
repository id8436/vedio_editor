package org.mortbay.jetty.handler;

import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.WriterOutputStream;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpFields;
import org.mortbay.jetty.HttpHeaders;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.log.Log;
import org.mortbay.resource.FileResource;
import org.mortbay.resource.Resource;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ResourceHandler extends AbstractHandler {
    boolean _aliases;
    Resource _baseResource;
    ByteArrayBuffer _cacheControl;
    ContextHandler _context;
    String[] _welcomeFiles = {"index.html"};
    MimeTypes _mimeTypes = new MimeTypes();

    public MimeTypes getMimeTypes() {
        return this._mimeTypes;
    }

    public void setMimeTypes(MimeTypes mimeTypes) {
        this._mimeTypes = mimeTypes;
    }

    public boolean isAliases() {
        return this._aliases;
    }

    public void setAliases(boolean z) {
        this._aliases = z;
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        ContextHandler.SContext currentContext = ContextHandler.getCurrentContext();
        this._context = currentContext == null ? null : currentContext.getContextHandler();
        if (!this._aliases && !FileResource.getCheckAliases()) {
            throw new IllegalStateException("Alias checking disabled");
        }
        super.doStart();
    }

    public Resource getBaseResource() {
        if (this._baseResource == null) {
            return null;
        }
        return this._baseResource;
    }

    public String getResourceBase() {
        if (this._baseResource == null) {
            return null;
        }
        return this._baseResource.toString();
    }

    public void setBaseResource(Resource resource) {
        this._baseResource = resource;
    }

    public void setResourceBase(String str) {
        try {
            setBaseResource(Resource.newResource(str));
        } catch (Exception e2) {
            Log.warn(e2.toString());
            Log.debug(e2);
            throw new IllegalArgumentException(str);
        }
    }

    public String getCacheControl() {
        return this._cacheControl.toString();
    }

    public void setCacheControl(String str) {
        this._cacheControl = str == null ? null : new ByteArrayBuffer(str);
    }

    public Resource getResource(String str) throws MalformedURLException {
        if (str == null || !str.startsWith(URIUtil.SLASH)) {
            throw new MalformedURLException(str);
        }
        Resource baseResource = this._baseResource;
        if (baseResource == null && (this._context == null || (baseResource = this._context.getBaseResource()) == null)) {
            return null;
        }
        try {
            return baseResource.addPath(URIUtil.canonicalPath(str));
        } catch (Exception e2) {
            Log.ignore(e2);
            return null;
        }
    }

    protected Resource getResource(HttpServletRequest httpServletRequest) throws MalformedURLException {
        String pathInfo = httpServletRequest.getPathInfo();
        if (pathInfo == null) {
            return null;
        }
        return getResource(pathInfo);
    }

    public String[] getWelcomeFiles() {
        return this._welcomeFiles;
    }

    public void setWelcomeFiles(String[] strArr) {
        this._welcomeFiles = strArr;
    }

    protected Resource getWelcome(Resource resource) throws IOException {
        for (int i = 0; i < this._welcomeFiles.length; i++) {
            Resource resourceAddPath = resource.addPath(this._welcomeFiles[i]);
            if (resourceAddPath.exists() && !resourceAddPath.isDirectory()) {
                return resourceAddPath;
            }
        }
        return null;
    }

    @Override // org.mortbay.jetty.Handler
    public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
        Resource welcome;
        OutputStream writerOutputStream;
        Request request = httpServletRequest instanceof Request ? (Request) httpServletRequest : HttpConnection.getCurrentConnection().getRequest();
        if (!request.isHandled()) {
            boolean z = false;
            if (!"GET".equals(httpServletRequest.getMethod())) {
                if ("HEAD".equals(httpServletRequest.getMethod())) {
                    z = true;
                } else {
                    return;
                }
            }
            Resource resource = getResource(httpServletRequest);
            if (resource != null && resource.exists()) {
                if (!this._aliases && resource.getAlias() != null) {
                    Log.info(new StringBuffer().append(resource).append(" aliased to ").append(resource.getAlias()).toString());
                    return;
                }
                request.setHandled(true);
                if (!resource.isDirectory()) {
                    welcome = resource;
                } else {
                    if (!httpServletRequest.getPathInfo().endsWith(URIUtil.SLASH)) {
                        httpServletResponse.sendRedirect(httpServletResponse.encodeRedirectURL(URIUtil.addPaths(httpServletRequest.getRequestURI(), URIUtil.SLASH)));
                        return;
                    }
                    welcome = getWelcome(resource);
                    if (welcome == null || !welcome.exists() || welcome.isDirectory()) {
                        httpServletResponse.sendError(403);
                        return;
                    }
                }
                long jLastModified = welcome.lastModified();
                if (jLastModified > 0) {
                    long dateHeader = httpServletRequest.getDateHeader("If-Modified-Since");
                    if (dateHeader > 0 && jLastModified / 1000 <= dateHeader / 1000) {
                        httpServletResponse.setStatus(304);
                        return;
                    }
                }
                Buffer mimeByExtension = this._mimeTypes.getMimeByExtension(welcome.toString());
                if (mimeByExtension == null) {
                    mimeByExtension = this._mimeTypes.getMimeByExtension(httpServletRequest.getPathInfo());
                }
                doResponseHeaders(httpServletResponse, welcome, mimeByExtension != null ? mimeByExtension.toString() : null);
                httpServletResponse.setDateHeader("Last-Modified", jLastModified);
                if (!z) {
                    try {
                        writerOutputStream = httpServletResponse.getOutputStream();
                    } catch (IllegalStateException e2) {
                        writerOutputStream = new WriterOutputStream(httpServletResponse.getWriter());
                    }
                    if (writerOutputStream instanceof HttpConnection.Output) {
                        ((HttpConnection.Output) writerOutputStream).sendContent(welcome.getInputStream());
                    } else {
                        welcome.writeTo(writerOutputStream, 0L, welcome.length());
                    }
                }
            }
        }
    }

    protected void doResponseHeaders(HttpServletResponse httpServletResponse, Resource resource, String str) {
        if (str != null) {
            httpServletResponse.setContentType(str);
        }
        long length = resource.length();
        if (httpServletResponse instanceof Response) {
            HttpFields httpFields = ((Response) httpServletResponse).getHttpFields();
            if (length > 0) {
                httpFields.putLongField(HttpHeaders.CONTENT_LENGTH_BUFFER, length);
            }
            if (this._cacheControl != null) {
                httpFields.put(HttpHeaders.CACHE_CONTROL_BUFFER, this._cacheControl);
                return;
            }
            return;
        }
        if (length > 0) {
            httpServletResponse.setHeader("Content-Length", TypeUtil.toString(length));
        }
        if (this._cacheControl != null) {
            httpServletResponse.setHeader("Cache-Control", this._cacheControl.toString());
        }
    }
}
