package org.mortbay.jetty.security;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;
import org.mortbay.log.Logger;
import org.mortbay.resource.Resource;

/* JADX INFO: loaded from: classes3.dex */
public class HTAccessHandler extends SecurityHandler {
    static Class class$org$mortbay$jetty$security$HTAccessHandler;
    private static Logger log;
    private Handler protegee;
    String _default = null;
    String _accessFile = ".htaccess";
    transient HashMap _htCache = new HashMap();

    static {
        Class clsClass$;
        if (class$org$mortbay$jetty$security$HTAccessHandler == null) {
            clsClass$ = class$("org.mortbay.jetty.security.HTAccessHandler");
            class$org$mortbay$jetty$security$HTAccessHandler = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$security$HTAccessHandler;
        }
        log = Log.getLogger(clsClass$.getName());
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    class DummyPrincipal implements Principal {
        private String _userName;
        private final HTAccessHandler this$0;

        public DummyPrincipal(HTAccessHandler hTAccessHandler, String str) {
            this.this$0 = hTAccessHandler;
            this._userName = str;
        }

        @Override // java.security.Principal
        public String getName() {
            return this._userName;
        }

        @Override // java.security.Principal
        public String toString() {
            return getName();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x01e0 A[Catch: Exception -> 0x031f, TRY_LEAVE, TryCatch #0 {Exception -> 0x031f, blocks: (B:60:0x01d4, B:62:0x01e0), top: B:110:0x01d4 }] */
    @Override // org.mortbay.jetty.security.SecurityHandler, org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r16, javax.servlet.http.HttpServletRequest r17, javax.servlet.http.HttpServletResponse r18, int r19) throws javax.servlet.ServletException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.security.HTAccessHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    private void callWrappedHandler(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws ServletException, IOException {
        Handler handler = getHandler();
        if (handler != null) {
            handler.handle(str, httpServletRequest, httpServletResponse, i);
        }
    }

    public Principal getPrincipal(String str, UserRealm userRealm) {
        return userRealm == null ? new DummyPrincipal(this, str) : userRealm.getPrincipal(str);
    }

    public void setDefault(String str) {
        this._default = str;
    }

    public void setAccessFile(String str) {
        if (str == null) {
            this._accessFile = ".htaccess";
        } else {
            this._accessFile = str;
        }
    }

    class HTAccess {
        static final int ALL = 1;
        static final int ANY = 0;
        static final String GROUP = "group";
        static final String USER = "user";
        static final String VALID_USER = "valid-user";
        boolean _forbidden;
        String _groupFile;
        long _groupModified;
        Resource _groupResource;
        long _lastModified;
        String _name;
        int _order;
        String _requireName;
        String _type;
        String _userFile;
        long _userModified;
        Resource _userResource;
        HashMap _users = null;
        HashMap _groups = null;
        int _satisfy = 0;
        HashMap _methods = new HashMap();
        HashSet _requireEntities = new HashSet();
        ArrayList _allowList = new ArrayList();
        ArrayList _denyList = new ArrayList();

        public HTAccess(Resource resource) {
            this._forbidden = false;
            try {
                parse(new BufferedReader(new InputStreamReader(resource.getInputStream())));
                this._lastModified = resource.lastModified();
                if (this._userFile != null) {
                    this._userResource = Resource.newResource(this._userFile);
                    if (this._userResource.exists()) {
                        if (HTAccessHandler.log.isDebugEnabled()) {
                            HTAccessHandler.log.debug(new StringBuffer().append("user file: ").append(this._userResource).toString(), null, null);
                        }
                    } else {
                        this._forbidden = true;
                        HTAccessHandler.log.warn(new StringBuffer().append("Could not find ht user file: ").append(this._userFile).toString(), null, null);
                    }
                }
                if (this._groupFile != null) {
                    this._groupResource = Resource.newResource(this._groupFile);
                    if (this._groupResource.exists()) {
                        if (HTAccessHandler.log.isDebugEnabled()) {
                            HTAccessHandler.log.debug(new StringBuffer().append("group file: ").append(this._groupResource).toString(), null, null);
                        }
                    } else {
                        this._forbidden = true;
                        HTAccessHandler.log.warn(new StringBuffer().append("Could not find ht group file: ").append(this._groupResource).toString(), null, null);
                    }
                }
            } catch (IOException e2) {
                this._forbidden = true;
                HTAccessHandler.log.warn("LogSupport.EXCEPTION", e2);
            }
        }

        public boolean isForbidden() {
            return this._forbidden;
        }

        public HashMap getMethods() {
            return this._methods;
        }

        public long getLastModified() {
            return this._lastModified;
        }

        public Resource getUserResource() {
            return this._userResource;
        }

        public Resource getGroupResource() {
            return this._groupResource;
        }

        public int getSatisfy() {
            return this._satisfy;
        }

        public String getName() {
            return this._name;
        }

        public String getType() {
            return this._type;
        }

        public boolean checkAccess(String str, String str2) {
            boolean z;
            boolean z2;
            if (this._allowList.size() == 0 && this._denyList.size() == 0) {
                return true;
            }
            int i = 0;
            while (true) {
                if (i >= this._allowList.size()) {
                    z = false;
                    break;
                }
                String str3 = (String) this._allowList.get(i);
                if (str3.equals("all")) {
                    z = true;
                    break;
                }
                char cCharAt = str3.charAt(0);
                if (cCharAt >= '0' && cCharAt <= '9') {
                    if (str2.startsWith(str3)) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    if (str.endsWith(str3)) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
            int i2 = 0;
            while (true) {
                if (i2 >= this._denyList.size()) {
                    z2 = false;
                    break;
                }
                String str4 = (String) this._denyList.get(i2);
                if (str4.equals("all")) {
                    z2 = true;
                    break;
                }
                char cCharAt2 = str4.charAt(0);
                if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                    if (str2.startsWith(str4)) {
                        z2 = true;
                        break;
                    }
                    i2++;
                } else {
                    if (str.endsWith(str4)) {
                        z2 = true;
                        break;
                    }
                    i2++;
                }
            }
            if (this._order < 0) {
                return !z2 || z;
            }
            return z && !z2;
        }

        public boolean checkAuth(String str, String str2, UserRealm userRealm, Request request) throws Throwable {
            String strCrypt = null;
            if (this._requireName == null) {
                return true;
            }
            if ((userRealm == null ? null : userRealm.authenticate(str, str2, request)) == null) {
                String userCode = getUserCode(str);
                String strSubstring = userCode != null ? userCode.substring(0, 2) : str;
                if (str != null && str2 != null) {
                    strCrypt = UnixCrypt.crypt(str2, strSubstring);
                }
                if (userCode == null || ((userCode.equals("") && !str2.equals("")) || !userCode.equals(strCrypt))) {
                    return false;
                }
            }
            if (this._requireName.equalsIgnoreCase("user")) {
                if (this._requireEntities.contains(str)) {
                    return true;
                }
            } else if (this._requireName.equalsIgnoreCase(GROUP)) {
                ArrayList userGroups = getUserGroups(str);
                if (userGroups != null) {
                    int size = userGroups.size();
                    while (true) {
                        int i = size - 1;
                        if (size <= 0) {
                            break;
                        }
                        if (this._requireEntities.contains(userGroups.get(i))) {
                            return true;
                        }
                        size = i;
                    }
                }
            } else if (this._requireName.equalsIgnoreCase(VALID_USER)) {
                return true;
            }
            return false;
        }

        public boolean isAccessLimited() {
            return this._allowList.size() > 0 || this._denyList.size() > 0;
        }

        public boolean isAuthLimited() {
            return this._requireName != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.util.HashMap] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v9, types: [java.io.BufferedReader] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String getUserCode(java.lang.String r8) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 226
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.security.HTAccessHandler.HTAccess.getUserCode(java.lang.String):java.lang.String");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.util.HashMap] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v9, types: [java.io.BufferedReader] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.ArrayList getUserGroups(java.lang.String r8) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.security.HTAccessHandler.HTAccess.getUserGroups(java.lang.String):java.util.ArrayList");
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("AuthUserFile=");
            stringBuffer.append(this._userFile);
            stringBuffer.append(", AuthGroupFile=");
            stringBuffer.append(this._groupFile);
            stringBuffer.append(", AuthName=");
            stringBuffer.append(this._name);
            stringBuffer.append(", AuthType=");
            stringBuffer.append(this._type);
            stringBuffer.append(", Methods=");
            stringBuffer.append(this._methods);
            stringBuffer.append(", satisfy=");
            stringBuffer.append(this._satisfy);
            if (this._order < 0) {
                stringBuffer.append(", order=deny,allow");
            } else if (this._order > 0) {
                stringBuffer.append(", order=allow,deny");
            } else {
                stringBuffer.append(", order=mutual-failure");
            }
            stringBuffer.append(", Allow from=");
            stringBuffer.append(this._allowList);
            stringBuffer.append(", deny from=");
            stringBuffer.append(this._denyList);
            stringBuffer.append(", requireName=");
            stringBuffer.append(this._requireName);
            stringBuffer.append(" ");
            stringBuffer.append(this._requireEntities);
            return stringBuffer.toString();
        }

        private void parse(BufferedReader bufferedReader) throws IOException {
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    String strTrim = line.trim();
                    if (!strTrim.startsWith("#")) {
                        if (strTrim.startsWith("AuthUserFile")) {
                            this._userFile = strTrim.substring(13).trim();
                        } else if (strTrim.startsWith("AuthGroupFile")) {
                            this._groupFile = strTrim.substring(14).trim();
                        } else if (strTrim.startsWith("AuthName")) {
                            this._name = strTrim.substring(8).trim();
                        } else if (strTrim.startsWith("AuthType")) {
                            this._type = strTrim.substring(8).trim();
                        } else if (strTrim.startsWith("<Limit")) {
                            int length = strTrim.length();
                            int iIndexOf = strTrim.indexOf(62);
                            if (iIndexOf >= 0) {
                                length = iIndexOf;
                            }
                            StringTokenizer stringTokenizer = new StringTokenizer(strTrim.substring(6, length));
                            while (stringTokenizer.hasMoreTokens()) {
                                this._methods.put(stringTokenizer.nextToken(), Boolean.TRUE);
                            }
                            while (true) {
                                String line2 = bufferedReader.readLine();
                                if (line2 != null) {
                                    String strTrim2 = line2.trim();
                                    if (!strTrim2.startsWith("#")) {
                                        if (strTrim2.startsWith("satisfy")) {
                                            int length2 = strTrim2.length();
                                            int i = 7;
                                            while (i < length2 && strTrim2.charAt(i) <= ' ') {
                                                i++;
                                            }
                                            int i2 = i;
                                            while (i2 < length2 && strTrim2.charAt(i2) > ' ') {
                                                i2++;
                                            }
                                            String strSubstring = strTrim2.substring(i, i2);
                                            if (strSubstring.equals("all")) {
                                                this._satisfy = 1;
                                            } else if (strSubstring.equals("any")) {
                                                this._satisfy = 0;
                                            }
                                        } else if (strTrim2.startsWith("require")) {
                                            int length3 = strTrim2.length();
                                            int i3 = 7;
                                            while (i3 < length3 && strTrim2.charAt(i3) <= ' ') {
                                                i3++;
                                            }
                                            int i4 = i3;
                                            while (i4 < length3 && strTrim2.charAt(i4) > ' ') {
                                                i4++;
                                            }
                                            this._requireName = strTrim2.substring(i3, i4).toLowerCase();
                                            if ("user".equals(this._requireName)) {
                                                this._requireName = "user";
                                            } else if (GROUP.equals(this._requireName)) {
                                                this._requireName = GROUP;
                                            } else if (VALID_USER.equals(this._requireName)) {
                                                this._requireName = VALID_USER;
                                            }
                                            int i5 = i4 + 1;
                                            if (i5 < length3) {
                                                while (i5 < length3 && strTrim2.charAt(i5) <= ' ') {
                                                    i5++;
                                                }
                                                StringTokenizer stringTokenizer2 = new StringTokenizer(strTrim2.substring(i5));
                                                while (stringTokenizer2.hasMoreTokens()) {
                                                    this._requireEntities.add(stringTokenizer2.nextToken());
                                                }
                                            }
                                        } else if (strTrim2.startsWith("order")) {
                                            if (HTAccessHandler.log.isDebugEnabled()) {
                                                HTAccessHandler.log.debug(new StringBuffer().append("orderline=").append(strTrim2).append("order=").append(this._order).toString(), null, null);
                                            }
                                            if (strTrim2.indexOf("allow,deny") > 0) {
                                                HTAccessHandler.log.debug("==>allow+deny", null, null);
                                                this._order = 1;
                                            } else if (strTrim2.indexOf("deny,allow") > 0) {
                                                HTAccessHandler.log.debug("==>deny,allow", null, null);
                                                this._order = -1;
                                            } else if (strTrim2.indexOf("mutual-failure") > 0) {
                                                HTAccessHandler.log.debug("==>mutual", null, null);
                                                this._order = 0;
                                            }
                                        } else if (strTrim2.startsWith("allow from")) {
                                            int i6 = 10;
                                            int length4 = strTrim2.length();
                                            while (i6 < length4 && strTrim2.charAt(i6) <= ' ') {
                                                i6++;
                                            }
                                            if (HTAccessHandler.log.isDebugEnabled()) {
                                                HTAccessHandler.log.debug(new StringBuffer().append("allow process:").append(strTrim2.substring(i6)).toString(), null, null);
                                            }
                                            StringTokenizer stringTokenizer3 = new StringTokenizer(strTrim2.substring(i6));
                                            while (stringTokenizer3.hasMoreTokens()) {
                                                this._allowList.add(stringTokenizer3.nextToken());
                                            }
                                        } else if (strTrim2.startsWith("deny from")) {
                                            int i7 = 9;
                                            int length5 = strTrim2.length();
                                            while (i7 < length5 && strTrim2.charAt(i7) <= ' ') {
                                                i7++;
                                            }
                                            if (HTAccessHandler.log.isDebugEnabled()) {
                                                HTAccessHandler.log.debug(new StringBuffer().append("deny process:").append(strTrim2.substring(i7)).toString(), null, null);
                                            }
                                            StringTokenizer stringTokenizer4 = new StringTokenizer(strTrim2.substring(i7));
                                            while (stringTokenizer4.hasMoreTokens()) {
                                                this._denyList.add(stringTokenizer4.nextToken());
                                            }
                                        } else if (strTrim2.startsWith("</Limit>")) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    protected Handler getProtegee() {
        return this.protegee;
    }

    public void setProtegee(Handler handler) {
        this.protegee = handler;
    }
}
