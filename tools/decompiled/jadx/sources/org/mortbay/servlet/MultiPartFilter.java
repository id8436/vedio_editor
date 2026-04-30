package org.mortbay.servlet;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiMap;

/* JADX INFO: loaded from: classes3.dex */
public class MultiPartFilter implements Filter {
    private static final String FILES = "org.mortbay.servlet.MultiPartFilter.files";
    private ServletContext _context;
    private boolean _deleteFiles;
    private int _fileOutputBuffer = 0;
    private File tempdir;

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this.tempdir = (File) filterConfig.getServletContext().getAttribute(ServletHandler.__J_S_CONTEXT_TEMPDIR);
        this._deleteFiles = "true".equals(filterConfig.getInitParameter("deleteFiles"));
        String initParameter = filterConfig.getInitParameter("fileOutputBuffer");
        if (initParameter != null) {
            this._fileOutputBuffer = Integer.parseInt(initParameter);
        }
        this._context = filterConfig.getServletContext();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0237, code lost:
    
        if (r13 != (-1)) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x023a, code lost:
    
        if (r8 != r15.length) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x023c, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x023f, code lost:
    
        if (r10 != 10) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0241, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0244, code lost:
    
        if (r7 != null) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0246, code lost:
    
        r16.add(r6, ((java.io.ByteArrayOutputStream) r4).toByteArray());
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0251, code lost:
    
        r11 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0254, code lost:
    
        r4 = new java.io.ByteArrayOutputStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x025a, code lost:
    
        r3 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x025b, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x025c, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x025f, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0260, code lost:
    
        r13 = r14.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0265, code lost:
    
        if (r8 < 0) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x026c, code lost:
    
        if (r8 >= r15.length) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0272, code lost:
    
        if (r13 != r15[r8]) goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0274, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0278, code lost:
    
        if (r12 == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x027a, code lost:
    
        r4.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x027f, code lost:
    
        if (r9 == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0281, code lost:
    
        r4.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0286, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0287, code lost:
    
        if (r8 <= 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0289, code lost:
    
        r4.write(r15, 0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x028d, code lost:
    
        r8 = -1;
        r4.write(r13);
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0294, code lost:
    
        if (r12 == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0296, code lost:
    
        r4.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x029b, code lost:
    
        if (r9 == false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x029d, code lost:
    
        r4.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02a4, code lost:
    
        if (r13 != 13) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02a6, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02a9, code lost:
    
        if (r13 == 10) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02ad, code lost:
    
        if (r10 != 10) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x02af, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02b2, code lost:
    
        if (r10 != 10) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02b4, code lost:
    
        r10 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02b7, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02b9, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02bb, code lost:
    
        r3 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02bc, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02be, code lost:
    
        r3 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02bf, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02c1, code lost:
    
        r3 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02c3, code lost:
    
        r8 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02c6, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x00d3, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f1, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f2, code lost:
    
        if (r5 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fc, code lost:
    
        throw new java.io.IOException("Missing content-disposition");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0134, code lost:
    
        r8 = new java.util.StringTokenizer(r5, ";");
        r6 = null;
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0142, code lost:
    
        if (r8.hasMoreTokens() == false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0144, code lost:
    
        r9 = r8.nextToken().trim();
        r10 = r9.toLowerCase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0157, code lost:
    
        if (r9.startsWith("form-data") == false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0159, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0162, code lost:
    
        if (r10.startsWith("name=") == false) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0164, code lost:
    
        r6 = value(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0172, code lost:
    
        if (r10.startsWith("filename=") == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0174, code lost:
    
        r4 = value(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x017b, code lost:
    
        if (r7 == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x017d, code lost:
    
        if (r6 == null) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x017f, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0181, code lost:
    
        if (r4 == null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0187, code lost:
    
        if (r4.length() <= 0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0189, code lost:
    
        r7 = java.io.File.createTempFile("MultiPart", "", r19.tempdir);
        r8 = new java.io.FileOutputStream(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01a0, code lost:
    
        if (r19._fileOutputBuffer <= 0) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01ab, code lost:
    
        r8 = new java.io.BufferedOutputStream(r8, r19._fileOutputBuffer);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ac, code lost:
    
        r20.setAttribute(r6, r7);
        r16.add(r6, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ba, code lost:
    
        if (r19._deleteFiles == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01bc, code lost:
    
        r7.deleteOnExit();
        r4 = (java.util.ArrayList) r20.getAttribute(org.mortbay.servlet.MultiPartFilter.FILES);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01ca, code lost:
    
        if (r4 != null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01cc, code lost:
    
        r4 = new java.util.ArrayList();
        r20.setAttribute(org.mortbay.servlet.MultiPartFilter.FILES, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01d9, code lost:
    
        r4.add(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01dc, code lost:
    
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01dd, code lost:
    
        r10 = -2;
        r9 = false;
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01e0, code lost:
    
        r12 = r9;
        r9 = r8;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01e8, code lost:
    
        if (r10 == (-2)) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01ea, code lost:
    
        r13 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01ef, code lost:
    
        if (r13 == (-1)) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01f1, code lost:
    
        r10 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01f6, code lost:
    
        if (r13 == 13) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01fc, code lost:
    
        if (r13 != 10) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0202, code lost:
    
        if (r13 != 13) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0204, code lost:
    
        r10 = r14.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0208, code lost:
    
        if (r8 <= 0) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0211, code lost:
    
        if (r8 < (r15.length - 2)) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x021a, code lost:
    
        if (r8 != (r15.length - 1)) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x021c, code lost:
    
        if (r12 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x021e, code lost:
    
        r4.write(13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0223, code lost:
    
        if (r9 == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0225, code lost:
    
        r4.write(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x022a, code lost:
    
        r9 = false;
        r4.write(r15, 0, r8);
        r8 = -1;
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0231, code lost:
    
        if (r8 > 0) goto L196;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02c9  */
    @Override // javax.servlet.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doFilter(javax.servlet.ServletRequest r20, javax.servlet.ServletResponse r21, javax.servlet.FilterChain r22) throws javax.servlet.ServletException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.servlet.MultiPartFilter.doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain):void");
    }

    private void deleteFiles(ServletRequest servletRequest) {
        ArrayList<File> arrayList = (ArrayList) servletRequest.getAttribute(FILES);
        if (arrayList != null) {
            for (File file : arrayList) {
                try {
                    file.delete();
                } catch (Exception e2) {
                    this._context.log(new StringBuffer().append("failed to delete ").append(file).toString(), e2);
                }
            }
        }
    }

    private String value(String str) {
        String strTrim = str.substring(str.indexOf(61) + 1).trim();
        int iIndexOf = strTrim.indexOf(59);
        if (iIndexOf > 0) {
            strTrim = strTrim.substring(0, iIndexOf);
        }
        if (strTrim.startsWith("\"")) {
            return strTrim.substring(1, strTrim.indexOf(34, 1));
        }
        int iIndexOf2 = strTrim.indexOf(32);
        if (iIndexOf2 > 0) {
            return strTrim.substring(0, iIndexOf2);
        }
        return strTrim;
    }

    @Override // javax.servlet.Filter
    public void destroy() {
    }

    class Wrapper extends HttpServletRequestWrapper {
        String encoding;
        MultiMap map;

        public Wrapper(HttpServletRequest httpServletRequest, MultiMap multiMap) {
            super(httpServletRequest);
            this.encoding = "UTF-8";
            this.map = multiMap;
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public int getContentLength() {
            return 0;
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public String getParameter(String str) {
            Object obj = this.map.get(str);
            if (!(obj instanceof byte[]) && LazyList.size(obj) > 0) {
                obj = LazyList.get(obj, 0);
            }
            if (obj instanceof byte[]) {
                try {
                    return new String((byte[]) obj, this.encoding);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else if (obj != null) {
                return String.valueOf(obj);
            }
            return null;
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public Map getParameterMap() {
            return Collections.unmodifiableMap(this.map.toStringArrayMap());
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public Enumeration getParameterNames() {
            return Collections.enumeration(this.map.keySet());
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public String[] getParameterValues(String str) {
            int i = 0;
            List values = this.map.getValues(str);
            if (values == null || values.size() == 0) {
                return new String[0];
            }
            String[] strArr = new String[values.size()];
            while (true) {
                int i2 = i;
                if (i2 >= values.size()) {
                    return strArr;
                }
                Object obj = values.get(i2);
                if (obj instanceof byte[]) {
                    try {
                        strArr[i2] = new String((byte[]) obj, this.encoding);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else if (obj instanceof String) {
                    strArr[i2] = (String) obj;
                }
                i = i2 + 1;
            }
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public void setCharacterEncoding(String str) throws UnsupportedEncodingException {
            this.encoding = str;
        }
    }
}
