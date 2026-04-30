package org.mortbay.servlet;

import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class CGI extends HttpServlet {
    private String _cmdPrefix;
    private File _docRoot;
    private EnvList _env;
    private boolean _ignoreExitState;
    private boolean _ok;
    private String _path;

    @Override // javax.servlet.GenericServlet
    public void init() throws ServletException {
        String property;
        this._env = new EnvList();
        this._cmdPrefix = getInitParameter("commandPrefix");
        String initParameter = getInitParameter("cgibinResourceBase");
        if (initParameter == null && (initParameter = getInitParameter("resourceBase")) == null) {
            initParameter = getServletContext().getRealPath(URIUtil.SLASH);
        }
        if (initParameter == null) {
            Log.warn("CGI: no CGI bin !");
            return;
        }
        File file = new File(initParameter);
        if (!file.exists()) {
            Log.warn(new StringBuffer().append("CGI: CGI bin does not exist - ").append(file).toString());
            return;
        }
        if (!file.canRead()) {
            Log.warn(new StringBuffer().append("CGI: CGI bin is not readable - ").append(file).toString());
            return;
        }
        if (!file.isDirectory()) {
            Log.warn(new StringBuffer().append("CGI: CGI bin is not a directory - ").append(file).toString());
            return;
        }
        try {
            this._docRoot = file.getCanonicalFile();
            this._path = getInitParameter("Path");
            if (this._path != null) {
                this._env.set("PATH", this._path);
            }
            this._ignoreExitState = "true".equalsIgnoreCase(getInitParameter("ignoreExitState"));
            Enumeration initParameterNames = getInitParameterNames();
            while (initParameterNames.hasMoreElements()) {
                String str = (String) initParameterNames.nextElement();
                if (str != null && str.startsWith("ENV_")) {
                    this._env.set(str.substring(4), getInitParameter(str));
                }
            }
            if (!this._env.envMap.containsKey("SystemRoot") && (property = System.getProperty("os.name")) != null && property.toLowerCase().indexOf("windows") != -1) {
                String property2 = System.getProperty("windir");
                EnvList envList = this._env;
                if (property2 == null) {
                    property2 = "C:\\WINDOWS";
                }
                envList.set("SystemRoot", property2);
            }
            this._ok = true;
        } catch (IOException e2) {
            Log.warn(new StringBuffer().append("CGI: CGI bin failed - ").append(file).toString(), (Throwable) e2);
        }
    }

    @Override // javax.servlet.http.HttpServlet
    public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Throwable {
        if (!this._ok) {
            httpServletResponse.sendError(503);
            return;
        }
        String string = new StringBuffer().append(StringUtil.nonNull(httpServletRequest.getServletPath())).append(StringUtil.nonNull(httpServletRequest.getPathInfo())).toString();
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("CGI: ContextPath : ").append(httpServletRequest.getContextPath()).toString());
            Log.debug(new StringBuffer().append("CGI: ServletPath : ").append(httpServletRequest.getServletPath()).toString());
            Log.debug(new StringBuffer().append("CGI: PathInfo    : ").append(httpServletRequest.getPathInfo()).toString());
            Log.debug(new StringBuffer().append("CGI: _docRoot    : ").append(this._docRoot).toString());
            Log.debug(new StringBuffer().append("CGI: _path       : ").append(this._path).toString());
            Log.debug(new StringBuffer().append("CGI: _ignoreExitState: ").append(this._ignoreExitState).toString());
        }
        String strSubstring = "";
        File file = new File(this._docRoot, string);
        String strSubstring2 = string;
        while (true) {
            if ((!strSubstring2.endsWith(URIUtil.SLASH) && file.exists()) || strSubstring2.length() < 0) {
                break;
            }
            int iLastIndexOf = strSubstring2.lastIndexOf(47);
            strSubstring2 = strSubstring2.substring(0, iLastIndexOf);
            strSubstring = string.substring(iLastIndexOf, string.length());
            file = new File(this._docRoot, strSubstring2);
        }
        if (strSubstring2.length() == 0 || !file.exists() || file.isDirectory() || !file.getCanonicalPath().equals(file.getAbsolutePath())) {
            httpServletResponse.sendError(404);
            return;
        }
        if (Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("CGI: script is ").append(file).toString());
            Log.debug(new StringBuffer().append("CGI: pathInfo is ").append(strSubstring).toString());
        }
        exec(file, strSubstring, httpServletRequest, httpServletResponse);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(2:92|32)|(4:33|(3:35|(1:117)(3:110|39|(3:112|41|120)(3:111|52|(3:114|54|119)(3:113|63|118)))|115)(1:108)|48|49)|70|98|71|(2:75|(1:77))|(2:105|79)|48|49) */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01ea, code lost:
    
        org.mortbay.log.Log.debug("CGI: Client closed connection!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01f0, code lost:
    
        if (r1 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01f2, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0240, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0298, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0299, code lost:
    
        org.mortbay.log.Log.ignore(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x029d, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x029e, code lost:
    
        org.mortbay.log.Log.ignore(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02a3, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02a4, code lost:
    
        r2 = r1;
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02a9, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0240 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void exec(java.io.File r12, java.lang.String r13, javax.servlet.http.HttpServletRequest r14, javax.servlet.http.HttpServletResponse r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.servlet.CGI.exec(java.io.File, java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse):void");
    }

    private String getTextLineFromStream(InputStream inputStream) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            int i = inputStream.read();
            if (i == -1 || i == 10) {
                break;
            }
            stringBuffer.append((char) i);
        }
        return stringBuffer.toString().trim();
    }

    class EnvList {
        private Map envMap;

        EnvList() {
            this.envMap = new HashMap();
        }

        EnvList(EnvList envList) {
            this.envMap = new HashMap(envList.envMap);
        }

        public void set(String str, String str2) {
            this.envMap.put(str, new StringBuffer().append(str).append(Engagement.Comparison.EQ).append(StringUtil.nonNull(str2)).toString());
        }

        public String[] getEnvArray() {
            return (String[]) this.envMap.values().toArray(new String[this.envMap.size()]);
        }

        public String toString() {
            return this.envMap.toString();
        }
    }
}
