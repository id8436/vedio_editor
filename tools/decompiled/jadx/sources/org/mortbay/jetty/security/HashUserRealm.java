package org.mortbay.jetty.security;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.Scanner;

/* JADX INFO: loaded from: classes3.dex */
public class HashUserRealm extends AbstractLifeCycle implements SSORealm, UserRealm {
    public static final String __SSO = "org.mortbay.http.SSO";
    private String _config;
    private Resource _configResource;
    private String _realmName;
    private Scanner _scanner;
    private SSORealm _ssoRealm;
    protected HashMap _users = new HashMap();
    protected HashMap _roles = new HashMap(7);
    private int _refreshInterval = 0;

    public HashUserRealm() {
    }

    public HashUserRealm(String str) {
        this._realmName = str;
    }

    public HashUserRealm(String str, String str2) throws IOException {
        this._realmName = str;
        setConfig(str2);
    }

    public String getConfig() {
        return this._config;
    }

    public Resource getConfigResource() {
        return this._configResource;
    }

    public void setConfig(String str) throws IOException {
        this._config = str;
        this._configResource = Resource.newResource(this._config);
        loadConfig();
    }

    public void setRefreshInterval(int i) {
        this._refreshInterval = i;
    }

    public int getRefreshInterval() {
        return this._refreshInterval;
    }

    protected void loadConfig() throws IOException {
        synchronized (this) {
            this._users.clear();
            this._roles.clear();
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("Load ").append(this).append(" from ").append(this._config).toString());
            }
            Properties properties = new Properties();
            properties.load(this._configResource.getInputStream());
            for (Map.Entry entry : properties.entrySet()) {
                String strTrim = entry.getKey().toString().trim();
                String strTrim2 = entry.getValue().toString().trim();
                String strTrim3 = null;
                int iIndexOf = strTrim2.indexOf(44);
                if (iIndexOf > 0) {
                    strTrim3 = strTrim2.substring(iIndexOf + 1).trim();
                    strTrim2 = strTrim2.substring(0, iIndexOf).trim();
                }
                if (strTrim != null && strTrim.length() > 0 && strTrim2 != null && strTrim2.length() > 0) {
                    put(strTrim, strTrim2);
                    if (strTrim3 != null && strTrim3.length() > 0) {
                        StringTokenizer stringTokenizer = new StringTokenizer(strTrim3, ", ");
                        while (stringTokenizer.hasMoreTokens()) {
                            addUserToRole(strTrim, stringTokenizer.nextToken());
                        }
                    }
                }
            }
        }
    }

    public void setName(String str) {
        this._realmName = str;
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public String getName() {
        return this._realmName;
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal getPrincipal(String str) {
        return (Principal) this._users.get(str);
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal authenticate(String str, Object obj, Request request) {
        KnownUser knownUser;
        synchronized (this) {
            knownUser = (KnownUser) this._users.get(str);
        }
        if (knownUser != null && knownUser.authenticate(obj)) {
            return knownUser;
        }
        return null;
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public void disassociate(Principal principal) {
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal pushRole(Principal principal, String str) {
        if (principal == null) {
            principal = new User(this, null);
        }
        return new WrappedUser(this, principal, str);
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public Principal popRole(Principal principal) {
        return ((WrappedUser) principal).getUserPrincipal();
    }

    public synchronized Object put(Object obj, Object obj2) {
        Object objPut;
        if (obj2 instanceof Principal) {
            objPut = this._users.put(obj.toString(), obj2);
        } else if (obj2 instanceof Password) {
            objPut = this._users.put(obj, new KnownUser(this, obj.toString(), (Password) obj2));
        } else if (obj2 != null) {
            objPut = this._users.put(obj, new KnownUser(this, obj.toString(), Credential.getCredential(obj2.toString())));
        } else {
            objPut = null;
        }
        return objPut;
    }

    public synchronized void addUserToRole(String str, String str2) {
        HashSet hashSet = (HashSet) this._roles.get(str2);
        if (hashSet == null) {
            hashSet = new HashSet(11);
            this._roles.put(str2, hashSet);
        }
        hashSet.add(str);
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public boolean reauthenticate(Principal principal) {
        return ((User) principal).isAuthenticated();
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public synchronized boolean isUserInRole(Principal principal, String str) {
        boolean zIsUserInRole;
        HashSet hashSet;
        if (principal instanceof WrappedUser) {
            zIsUserInRole = ((WrappedUser) principal).isUserInRole(str);
        } else {
            zIsUserInRole = principal != null && (principal instanceof User) && ((User) principal).getUserRealm() == this && (hashSet = (HashSet) this._roles.get(str)) != null && hashSet.contains(principal.getName());
        }
        return zIsUserInRole;
    }

    @Override // org.mortbay.jetty.security.UserRealm
    public void logout(Principal principal) {
    }

    public String toString() {
        return new StringBuffer().append("Realm[").append(this._realmName).append("]==").append(this._users.keySet()).toString();
    }

    public void dump(PrintStream printStream) {
        printStream.println(new StringBuffer().append(this).append(":").toString());
        printStream.println(super.toString());
        printStream.println(this._roles);
    }

    public SSORealm getSSORealm() {
        return this._ssoRealm;
    }

    public void setSSORealm(SSORealm sSORealm) {
        this._ssoRealm = sSORealm;
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public Credential getSingleSignOn(Request request, Response response) {
        if (this._ssoRealm != null) {
            return this._ssoRealm.getSingleSignOn(request, response);
        }
        return null;
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public void setSingleSignOn(Request request, Response response, Principal principal, Credential credential) {
        if (this._ssoRealm != null) {
            this._ssoRealm.setSingleSignOn(request, response, principal, credential);
        }
    }

    @Override // org.mortbay.jetty.security.SSORealm
    public void clearSingleSignOn(String str) {
        if (this._ssoRealm != null) {
            this._ssoRealm.clearSingleSignOn(str);
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        super.doStart();
        if (this._scanner != null) {
            this._scanner.stop();
        }
        if (getRefreshInterval() > 0) {
            this._scanner = new Scanner();
            this._scanner.setScanInterval(getRefreshInterval());
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this._configResource.getFile());
            this._scanner.setScanDirs(arrayList);
            this._scanner.setFilenameFilter(new FilenameFilter(this) { // from class: org.mortbay.jetty.security.HashUserRealm.1
                private final HashUserRealm this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    try {
                        return new File(file, str).compareTo(this.this$0._configResource.getFile()) == 0;
                    } catch (IOException e2) {
                        return false;
                    }
                }
            });
            this._scanner.addListener(new Scanner.BulkListener(this) { // from class: org.mortbay.jetty.security.HashUserRealm.2
                private final HashUserRealm this$0;

                {
                    this.this$0 = this;
                }

                @Override // org.mortbay.util.Scanner.BulkListener
                public void filesChanged(List list) throws Exception {
                    if (list != null && !list.isEmpty() && list.size() == 1 && list.get(0).equals(this.this$0._config)) {
                        this.this$0.loadConfig();
                    }
                }

                public String toString() {
                    return "HashUserRealm$Scanner";
                }
            });
            this._scanner.setReportExistingFilesOnStartup(false);
            this._scanner.setRecursive(false);
            this._scanner.start();
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
        if (this._scanner != null) {
            this._scanner.stop();
        }
        this._scanner = null;
    }

    class User implements Principal {
        List roles;
        private final HashUserRealm this$0;

        private User(HashUserRealm hashUserRealm) {
            this.this$0 = hashUserRealm;
            this.roles = null;
        }

        User(HashUserRealm hashUserRealm, AnonymousClass1 anonymousClass1) {
            this(hashUserRealm);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public UserRealm getUserRealm() {
            return this.this$0;
        }

        @Override // java.security.Principal
        public String getName() {
            return "Anonymous";
        }

        public boolean isAuthenticated() {
            return false;
        }

        @Override // java.security.Principal
        public String toString() {
            return getName();
        }
    }

    class KnownUser extends User {
        private Credential _cred;
        private String _userName;
        private final HashUserRealm this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        KnownUser(HashUserRealm hashUserRealm, String str, Credential credential) {
            super(hashUserRealm, null);
            this.this$0 = hashUserRealm;
            this._userName = str;
            this._cred = credential;
        }

        boolean authenticate(Object obj) {
            return this._cred != null && this._cred.check(obj);
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.User, java.security.Principal
        public String getName() {
            return this._userName;
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.User
        public boolean isAuthenticated() {
            return true;
        }
    }

    class WrappedUser extends User {
        private String role;
        private final HashUserRealm this$0;
        private Principal user;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        WrappedUser(HashUserRealm hashUserRealm, Principal principal, String str) {
            super(hashUserRealm, null);
            this.this$0 = hashUserRealm;
            this.user = principal;
            this.role = str;
        }

        Principal getUserPrincipal() {
            return this.user;
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.User, java.security.Principal
        public String getName() {
            return new StringBuffer().append("role:").append(this.role).toString();
        }

        @Override // org.mortbay.jetty.security.HashUserRealm.User
        public boolean isAuthenticated() {
            return true;
        }

        public boolean isUserInRole(String str) {
            return this.role.equals(str);
        }
    }
}
