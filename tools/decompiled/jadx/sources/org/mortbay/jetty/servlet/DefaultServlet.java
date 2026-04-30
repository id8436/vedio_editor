package org.mortbay.jetty.servlet;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.WriterOutputStream;
import org.mortbay.io.nio.DirectNIOBuffer;
import org.mortbay.io.nio.IndirectNIOBuffer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpContent;
import org.mortbay.jetty.HttpFields;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.jetty.HttpHeaders;
import org.mortbay.jetty.InclusiveByteRange;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.jetty.ResourceCache;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.nio.NIOConnector;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.resource.FileResource;
import org.mortbay.resource.Resource;
import org.mortbay.resource.ResourceFactory;
import org.mortbay.util.IO;
import org.mortbay.util.MultiPartOutputStream;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultServlet extends HttpServlet implements ResourceFactory {
    static Class class$org$mortbay$jetty$servlet$ServletHandler;
    private ResourceCache _bioCache;
    ByteArrayBuffer _cacheControl;
    private ContextHandler.SContext _context;
    private ServletHolder _defaultHolder;
    private MimeTypes _mimeTypes;
    private NIOResourceCache _nioCache;
    private Resource _resourceBase;
    private ServletHandler _servletHandler;
    private String[] _welcomes;
    private boolean _acceptRanges = true;
    private boolean _dirAllowed = true;
    private boolean _welcomeServlets = false;
    private boolean _redirectWelcome = false;
    private boolean _gzip = true;
    private boolean _aliases = false;
    private boolean _useFileMappedBuffer = false;

    @Override // javax.servlet.GenericServlet
    public void init() throws Throwable {
        Class clsClass$;
        ServletContext servletContext = getServletContext();
        this._context = (ContextHandler.SContext) servletContext;
        this._mimeTypes = this._context.getContextHandler().getMimeTypes();
        this._welcomes = this._context.getContextHandler().getWelcomeFiles();
        if (this._welcomes == null) {
            this._welcomes = new String[]{"index.jsp", "index.html"};
        }
        this._acceptRanges = getInitBoolean("acceptRanges", this._acceptRanges);
        this._dirAllowed = getInitBoolean("dirAllowed", this._dirAllowed);
        this._welcomeServlets = getInitBoolean("welcomeServlets", this._welcomeServlets);
        this._redirectWelcome = getInitBoolean("redirectWelcome", this._redirectWelcome);
        this._gzip = getInitBoolean(HttpHeaderValues.GZIP, this._gzip);
        this._aliases = getInitBoolean("aliases", this._aliases);
        if (!this._aliases && !FileResource.getCheckAliases()) {
            throw new IllegalStateException("Alias checking disabled");
        }
        if (this._aliases) {
            servletContext.log("Aliases are enabled");
        }
        this._useFileMappedBuffer = getInitBoolean("useFileMappedBuffer", this._useFileMappedBuffer);
        String initParameter = getInitParameter("relativeResourceBase");
        if (initParameter != null) {
            try {
                Resource resource = this._context.getContextHandler().getResource(URIUtil.SLASH);
                if (resource == null) {
                    throw new UnavailableException(new StringBuffer().append("No base resourceBase for relativeResourceBase in").append(this._context.getContextPath()).toString());
                }
                this._resourceBase = resource.addPath(initParameter);
            } catch (Exception e2) {
                Log.warn(Log.EXCEPTION, (Throwable) e2);
                throw new UnavailableException(e2.toString());
            }
        }
        String initParameter2 = getInitParameter("resourceBase");
        if (initParameter != null && initParameter2 != null) {
            throw new UnavailableException("resourceBase & relativeResourceBase");
        }
        if (initParameter2 != null) {
            try {
                this._resourceBase = Resource.newResource(initParameter2);
            } catch (Exception e3) {
                Log.warn(Log.EXCEPTION, (Throwable) e3);
                throw new UnavailableException(e3.toString());
            }
        }
        String initParameter3 = getInitParameter("cacheControl");
        if (initParameter3 != null) {
            this._cacheControl = new ByteArrayBuffer(initParameter3);
        }
        try {
            if (this._resourceBase == null) {
                this._resourceBase = this._context.getContextHandler().getResource(URIUtil.SLASH);
            }
            String initParameter4 = getInitParameter("cacheType");
            int initInt = getInitInt("maxCacheSize", -2);
            int initInt2 = getInitInt("maxCachedFileSize", -2);
            int initInt3 = getInitInt("maxCachedFiles", -2);
            if ((initParameter4 == null || "nio".equals(initParameter4) || "both".equals(initParameter4)) && (initInt == -2 || initInt > 0)) {
                this._nioCache = new NIOResourceCache(this, this._mimeTypes);
                if (initInt > 0) {
                    this._nioCache.setMaxCacheSize(initInt);
                }
                if (initInt2 >= -1) {
                    this._nioCache.setMaxCachedFileSize(initInt2);
                }
                if (initInt3 >= -1) {
                    this._nioCache.setMaxCachedFiles(initInt3);
                }
                this._nioCache.start();
            }
            if (("bio".equals(initParameter4) || "both".equals(initParameter4)) && (initInt == -2 || initInt > 0)) {
                this._bioCache = new ResourceCache(this._mimeTypes);
                if (initInt > 0) {
                    this._bioCache.setMaxCacheSize(initInt);
                }
                if (initInt2 >= -1) {
                    this._bioCache.setMaxCachedFileSize(initInt2);
                }
                if (initInt3 >= -1) {
                    this._bioCache.setMaxCachedFiles(initInt3);
                }
                this._bioCache.start();
            }
            if (this._nioCache == null) {
                this._bioCache = null;
            }
            ContextHandler contextHandler = this._context.getContextHandler();
            if (class$org$mortbay$jetty$servlet$ServletHandler == null) {
                clsClass$ = class$("org.mortbay.jetty.servlet.ServletHandler");
                class$org$mortbay$jetty$servlet$ServletHandler = clsClass$;
            } else {
                clsClass$ = class$org$mortbay$jetty$servlet$ServletHandler;
            }
            this._servletHandler = (ServletHandler) contextHandler.getChildHandlerByClass(clsClass$);
            ServletHolder[] servlets = this._servletHandler.getServlets();
            int length = servlets.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                if (servlets[i].getServletInstance() == this) {
                    this._defaultHolder = servlets[i];
                    length = i;
                } else {
                    length = i;
                }
            }
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("resource base = ").append(this._resourceBase).toString());
            }
        } catch (Exception e4) {
            Log.warn(Log.EXCEPTION, (Throwable) e4);
            throw new UnavailableException(e4.toString());
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // javax.servlet.GenericServlet, javax.servlet.ServletConfig
    public String getInitParameter(String str) {
        String initParameter = getServletContext().getInitParameter(new StringBuffer().append("org.mortbay.jetty.servlet.Default.").append(str).toString());
        if (initParameter == null) {
            return super.getInitParameter(str);
        }
        return initParameter;
    }

    private boolean getInitBoolean(String str, boolean z) {
        String initParameter = getInitParameter(str);
        return (initParameter == null || initParameter.length() == 0) ? z : initParameter.startsWith("t") || initParameter.startsWith("T") || initParameter.startsWith("y") || initParameter.startsWith(AdobeAnalyticsSDKReporter.AdobeAnalyticsValueYes) || initParameter.startsWith("1");
    }

    private int getInitInt(String str, int i) {
        String initParameter = getInitParameter(str);
        if (initParameter == null) {
            initParameter = getInitParameter(str);
        }
        if (initParameter != null && initParameter.length() > 0) {
            return Integer.parseInt(initParameter);
        }
        return i;
    }

    @Override // org.mortbay.resource.ResourceFactory
    public Resource getResource(String str) {
        Resource resourceAddPath;
        IOException e2;
        if (this._resourceBase == null) {
            return null;
        }
        try {
            resourceAddPath = this._resourceBase.addPath(str);
        } catch (IOException e3) {
            resourceAddPath = null;
            e2 = e3;
        }
        try {
            if (!this._aliases && resourceAddPath.getAlias() != null) {
                if (resourceAddPath.exists()) {
                    Log.warn(new StringBuffer().append("Aliased resource: ").append(resourceAddPath).append("==").append(resourceAddPath.getAlias()).toString());
                }
                return null;
            }
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("RESOURCE=").append(resourceAddPath).toString());
                return resourceAddPath;
            }
            return resourceAddPath;
        } catch (IOException e4) {
            e2 = e4;
            Log.ignore(e2);
            return resourceAddPath;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0186 A[Catch: all -> 0x0216, TRY_LEAVE, TryCatch #3 {all -> 0x0216, blocks: (B:26:0x0087, B:28:0x008d, B:32:0x0096, B:34:0x009c, B:39:0x00a7, B:63:0x0111, B:65:0x0117, B:66:0x011c, B:40:0x00ab, B:42:0x00b1, B:45:0x00c6, B:47:0x00d3, B:68:0x0125, B:71:0x012d, B:73:0x0131, B:75:0x0137, B:77:0x0148, B:79:0x014e, B:80:0x0166, B:90:0x019a, B:83:0x017a, B:85:0x0186, B:102:0x01d0, B:104:0x01d6, B:122:0x0223, B:124:0x0229, B:126:0x022d, B:128:0x0237, B:130:0x023d, B:131:0x0268, B:132:0x027b, B:134:0x0281, B:136:0x0287, B:137:0x028c, B:138:0x0297, B:106:0x01df, B:108:0x01ec, B:109:0x01f1, B:111:0x01f7, B:113:0x01fd, B:114:0x0205, B:121:0x021f, B:49:0x00d9, B:60:0x0106, B:62:0x010c), top: B:170:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0191  */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.mortbay.jetty.servlet.DefaultServlet, org.mortbay.resource.ResourceFactory] */
    /* JADX WARN: Type inference failed for: r1v39, types: [java.lang.StringBuffer] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v6, types: [org.mortbay.jetty.ResourceCache] */
    /* JADX WARN: Type inference failed for: r4v11, types: [org.mortbay.resource.Resource] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [org.mortbay.resource.Resource] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.lang.Object, org.mortbay.resource.Resource] */
    /* JADX WARN: Type inference failed for: r4v16, types: [org.mortbay.resource.Resource] */
    /* JADX WARN: Type inference failed for: r4v17, types: [org.mortbay.resource.Resource] */
    /* JADX WARN: Type inference failed for: r4v18, types: [org.mortbay.resource.Resource] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.mortbay.resource.Resource] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9, types: [org.mortbay.resource.Resource] */
    @Override // javax.servlet.http.HttpServlet
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void doGet(javax.servlet.http.HttpServletRequest r13, javax.servlet.http.HttpServletResponse r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.DefaultServlet.doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse):void");
    }

    @Override // javax.servlet.http.HttpServlet
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Throwable {
        doGet(httpServletRequest, httpServletResponse);
    }

    @Override // javax.servlet.http.HttpServlet
    protected void doTrace(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        httpServletResponse.sendError(405);
    }

    private String getWelcomeFile(String str) throws IOException {
        PathMap.Entry holderEntry;
        String str2 = null;
        if (this._welcomes == null) {
            return null;
        }
        int i = 0;
        while (i < this._welcomes.length) {
            String strAddPaths = URIUtil.addPaths(str, this._welcomes[i]);
            Resource resource = getResource(strAddPaths);
            if (resource != null && resource.exists()) {
                return this._welcomes[i];
            }
            if (!this._welcomeServlets || str2 != null || (holderEntry = this._servletHandler.getHolderEntry(strAddPaths)) == null || holderEntry.getValue() == this._defaultHolder) {
                strAddPaths = str2;
            }
            i++;
            str2 = strAddPaths;
        }
        return str2;
    }

    protected boolean passConditionalHeaders(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Resource resource, HttpContent httpContent) throws IOException {
        Buffer lastModified;
        try {
            if (!httpServletRequest.getMethod().equals("HEAD")) {
                String header = httpServletRequest.getHeader("If-Modified-Since");
                if (header != null) {
                    if (httpContent != null && (lastModified = httpContent.getLastModified()) != null && header.equals(lastModified.toString())) {
                        httpServletResponse.reset();
                        httpServletResponse.setStatus(304);
                        httpServletResponse.flushBuffer();
                        return false;
                    }
                    long dateHeader = httpServletRequest.getDateHeader("If-Modified-Since");
                    if (dateHeader != -1 && resource.lastModified() / 1000 <= dateHeader / 1000) {
                        httpServletResponse.reset();
                        httpServletResponse.setStatus(304);
                        httpServletResponse.flushBuffer();
                        return false;
                    }
                }
                long dateHeader2 = httpServletRequest.getDateHeader("If-Unmodified-Since");
                if (dateHeader2 != -1 && resource.lastModified() / 1000 > dateHeader2 / 1000) {
                    httpServletResponse.sendError(412);
                    return false;
                }
            }
            return true;
        } catch (IllegalArgumentException e2) {
            if (!httpServletResponse.isCommitted()) {
                httpServletResponse.sendError(400, e2.getMessage());
            }
            throw e2;
        }
    }

    protected void sendDirectory(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Resource resource, boolean z) throws IOException {
        if (!this._dirAllowed) {
            httpServletResponse.sendError(403);
            return;
        }
        String listHTML = resource.getListHTML(URIUtil.addPaths(httpServletRequest.getRequestURI(), URIUtil.SLASH), z);
        if (listHTML == null) {
            httpServletResponse.sendError(403, "No directory");
            return;
        }
        byte[] bytes = listHTML.getBytes("UTF-8");
        httpServletResponse.setContentType("text/html; charset=UTF-8");
        httpServletResponse.setContentLength(bytes.length);
        httpServletResponse.getOutputStream().write(bytes);
    }

    protected void sendData(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, boolean z, Resource resource, HttpContent httpContent, Enumeration enumeration) throws IOException {
        OutputStream writerOutputStream;
        String str;
        InputStream inputStream;
        long length = httpContent == null ? resource.length() : httpContent.getContentLength();
        try {
            writerOutputStream = httpServletResponse.getOutputStream();
        } catch (IllegalStateException e2) {
            writerOutputStream = new WriterOutputStream(httpServletResponse.getWriter());
        }
        if (enumeration == null || !enumeration.hasMoreElements() || length < 0) {
            if (z) {
                resource.writeTo(writerOutputStream, 0L, length);
                return;
            }
            if (writerOutputStream instanceof HttpConnection.Output) {
                if (httpServletResponse instanceof Response) {
                    writeOptionHeaders(((Response) httpServletResponse).getHttpFields());
                    ((HttpConnection.Output) writerOutputStream).sendContent(httpContent);
                    return;
                } else if (httpContent.getBuffer() != null) {
                    writeHeaders(httpServletResponse, httpContent, length);
                    ((HttpConnection.Output) writerOutputStream).sendContent(httpContent.getBuffer());
                    return;
                } else {
                    writeHeaders(httpServletResponse, httpContent, length);
                    resource.writeTo(writerOutputStream, 0L, length);
                    return;
                }
            }
            writeHeaders(httpServletResponse, httpContent, length);
            resource.writeTo(writerOutputStream, 0L, length);
            return;
        }
        List listSatisfiableRanges = InclusiveByteRange.satisfiableRanges(enumeration, length);
        if (listSatisfiableRanges == null || listSatisfiableRanges.size() == 0) {
            writeHeaders(httpServletResponse, httpContent, length);
            httpServletResponse.setStatus(416);
            httpServletResponse.setHeader("Content-Range", InclusiveByteRange.to416HeaderRangeString(length));
            resource.writeTo(writerOutputStream, 0L, length);
            return;
        }
        if (listSatisfiableRanges.size() == 1) {
            InclusiveByteRange inclusiveByteRange = (InclusiveByteRange) listSatisfiableRanges.get(0);
            long size = inclusiveByteRange.getSize(length);
            writeHeaders(httpServletResponse, httpContent, size);
            httpServletResponse.setStatus(206);
            httpServletResponse.setHeader("Content-Range", inclusiveByteRange.toHeaderRangeString(length));
            resource.writeTo(writerOutputStream, inclusiveByteRange.getFirst(length), size);
            return;
        }
        writeHeaders(httpServletResponse, httpContent, -1L);
        String string = httpContent.getContentType().toString();
        MultiPartOutputStream multiPartOutputStream = new MultiPartOutputStream(writerOutputStream);
        httpServletResponse.setStatus(206);
        if (httpServletRequest.getHeader(HttpHeaders.REQUEST_RANGE) != null) {
            str = "multipart/x-byteranges; boundary=";
        } else {
            str = "multipart/byteranges; boundary=";
        }
        httpServletResponse.setContentType(new StringBuffer().append(str).append(multiPartOutputStream.getBoundary()).toString());
        InputStream inputStream2 = resource.getInputStream();
        String[] strArr = new String[listSatisfiableRanges.size()];
        int i = 0;
        int length2 = 0;
        while (true) {
            int i2 = i;
            if (i2 >= listSatisfiableRanges.size()) {
                break;
            }
            InclusiveByteRange inclusiveByteRange2 = (InclusiveByteRange) listSatisfiableRanges.get(i2);
            strArr[i2] = inclusiveByteRange2.toHeaderRangeString(length);
            length2 = (int) (((long) length2) + ((long) ((i2 > 0 ? 2 : 0) + 2 + multiPartOutputStream.getBoundary().length() + 2 + "Content-Type".length() + 2 + string.length() + 2 + "Content-Range".length() + 2 + strArr[i2].length() + 2 + 2)) + (inclusiveByteRange2.getLast(length) - inclusiveByteRange2.getFirst(length)) + 1);
            i = i2 + 1;
        }
        httpServletResponse.setContentLength(multiPartOutputStream.getBoundary().length() + 4 + 2 + 2 + length2);
        int i3 = 0;
        InputStream inputStream3 = inputStream2;
        long j = 0;
        while (i3 < listSatisfiableRanges.size()) {
            InclusiveByteRange inclusiveByteRange3 = (InclusiveByteRange) listSatisfiableRanges.get(i3);
            multiPartOutputStream.startPart(string, new String[]{new StringBuffer().append("Content-Range: ").append(strArr[i3]).toString()});
            long first = inclusiveByteRange3.getFirst(length);
            long size2 = inclusiveByteRange3.getSize(length);
            if (inputStream3 != null) {
                if (first < j) {
                    inputStream3.close();
                    inputStream = resource.getInputStream();
                    j = 0;
                } else {
                    inputStream = inputStream3;
                }
                if (j < first) {
                    inputStream.skip(first - j);
                } else {
                    first = j;
                }
                IO.copy(inputStream, multiPartOutputStream, size2);
                j = first + size2;
            } else {
                resource.writeTo(multiPartOutputStream, first, size2);
                inputStream = inputStream3;
            }
            i3++;
            inputStream3 = inputStream;
        }
        if (inputStream3 != null) {
            inputStream3.close();
        }
        multiPartOutputStream.close();
    }

    protected void writeHeaders(HttpServletResponse httpServletResponse, HttpContent httpContent, long j) throws IOException {
        if (httpContent.getContentType() != null && httpServletResponse.getContentType() == null) {
            httpServletResponse.setContentType(httpContent.getContentType().toString());
        }
        if (httpServletResponse instanceof Response) {
            Response response = (Response) httpServletResponse;
            HttpFields httpFields = response.getHttpFields();
            if (httpContent.getLastModified() != null) {
                httpFields.put(HttpHeaders.LAST_MODIFIED_BUFFER, httpContent.getLastModified(), httpContent.getResource().lastModified());
            } else if (httpContent.getResource() != null) {
                long jLastModified = httpContent.getResource().lastModified();
                if (jLastModified != -1) {
                    httpFields.putDateField(HttpHeaders.LAST_MODIFIED_BUFFER, jLastModified);
                }
            }
            if (j != -1) {
                response.setLongContentLength(j);
            }
            writeOptionHeaders(httpFields);
            return;
        }
        long jLastModified2 = httpContent.getResource().lastModified();
        if (jLastModified2 >= 0) {
            httpServletResponse.setDateHeader("Last-Modified", jLastModified2);
        }
        if (j != -1) {
            if (j < 2147483647L) {
                httpServletResponse.setContentLength((int) j);
            } else {
                httpServletResponse.setHeader("Content-Length", TypeUtil.toString(j));
            }
        }
        writeOptionHeaders(httpServletResponse);
    }

    protected void writeOptionHeaders(HttpFields httpFields) throws IOException {
        if (this._acceptRanges) {
            httpFields.put(HttpHeaders.ACCEPT_RANGES_BUFFER, HttpHeaderValues.BYTES_BUFFER);
        }
        if (this._cacheControl != null) {
            httpFields.put(HttpHeaders.CACHE_CONTROL_BUFFER, this._cacheControl);
        }
    }

    protected void writeOptionHeaders(HttpServletResponse httpServletResponse) throws IOException {
        if (this._acceptRanges) {
            httpServletResponse.setHeader("Accept-Ranges", HttpHeaderValues.BYTES);
        }
        if (this._cacheControl != null) {
            httpServletResponse.setHeader("Cache-Control", this._cacheControl.toString());
        }
    }

    @Override // javax.servlet.GenericServlet, javax.servlet.Servlet
    public void destroy() {
        try {
            try {
                if (this._nioCache != null) {
                    this._nioCache.stop();
                }
                try {
                    try {
                        if (this._bioCache != null) {
                            this._bioCache.stop();
                        }
                    } catch (Exception e2) {
                        Log.warn(Log.EXCEPTION, (Throwable) e2);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    try {
                        if (this._bioCache != null) {
                            this._bioCache.stop();
                        }
                    } finally {
                    }
                } catch (Exception e3) {
                    Log.warn(Log.EXCEPTION, (Throwable) e3);
                }
                throw th;
            }
        } catch (Exception e4) {
            Log.warn(Log.EXCEPTION, (Throwable) e4);
            try {
                try {
                    if (this._bioCache != null) {
                        this._bioCache.stop();
                    }
                } catch (Exception e5) {
                    Log.warn(Log.EXCEPTION, (Throwable) e5);
                }
            } finally {
            }
        }
    }

    class UnCachedContent implements HttpContent {
        Resource _resource;
        private final DefaultServlet this$0;

        UnCachedContent(DefaultServlet defaultServlet, Resource resource) {
            this.this$0 = defaultServlet;
            this._resource = resource;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getContentType() {
            return this.this$0._mimeTypes.getMimeByExtension(this._resource.toString());
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getLastModified() {
            return null;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getBuffer() {
            return null;
        }

        @Override // org.mortbay.jetty.HttpContent
        public long getContentLength() {
            return this._resource.length();
        }

        @Override // org.mortbay.jetty.HttpContent
        public InputStream getInputStream() throws IOException {
            return this._resource.getInputStream();
        }

        @Override // org.mortbay.jetty.HttpContent
        public Resource getResource() {
            return this._resource;
        }

        @Override // org.mortbay.jetty.HttpContent
        public void release() {
            this._resource.release();
            this._resource = null;
        }
    }

    class NIOResourceCache extends ResourceCache {
        private final DefaultServlet this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NIOResourceCache(DefaultServlet defaultServlet, MimeTypes mimeTypes) {
            super(mimeTypes);
            this.this$0 = defaultServlet;
        }

        @Override // org.mortbay.jetty.ResourceCache
        protected void fill(ResourceCache.Content content) throws IOException {
            Buffer indirectNIOBuffer;
            Resource resource = content.getResource();
            long length = resource.length();
            if (this.this$0._useFileMappedBuffer && resource.getFile() != null) {
                indirectNIOBuffer = new DirectNIOBuffer(resource.getFile());
            } else {
                InputStream inputStream = resource.getInputStream();
                try {
                    indirectNIOBuffer = ((NIOConnector) HttpConnection.getCurrentConnection().getConnector()).getUseDirectBuffers() ? new DirectNIOBuffer((int) length) : new IndirectNIOBuffer((int) length);
                } catch (OutOfMemoryError e2) {
                    Log.warn(e2.toString());
                    Log.debug(e2);
                    indirectNIOBuffer = new IndirectNIOBuffer((int) length);
                }
                indirectNIOBuffer.readFrom(inputStream, (int) length);
                inputStream.close();
            }
            content.setBuffer(indirectNIOBuffer);
        }
    }
}
