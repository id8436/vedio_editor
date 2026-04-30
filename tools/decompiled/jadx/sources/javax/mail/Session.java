package javax.mail;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.analytics.Engagement;
import com.l.b.a.e;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.mail.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class Session {
    static Class class$javax$mail$Session = null;
    static Class class$javax$mail$URLName = null;
    private static Session defaultSession = null;
    private static final String version = "1.4ea";
    private final Authenticator authenticator;
    private boolean debug;
    private PrintStream out;
    private final Properties props;
    private final Hashtable authTable = new Hashtable();
    private final Vector providers = new Vector();
    private final Hashtable providersByProtocol = new Hashtable();
    private final Hashtable providersByClassName = new Hashtable();
    private final Properties addressMap = new Properties();

    private Session(Properties properties, Authenticator authenticator) throws Throwable {
        Class<?> cls;
        this.debug = false;
        this.props = properties;
        this.authenticator = authenticator;
        if (Boolean.valueOf(properties.getProperty("mail.debug")).booleanValue()) {
            this.debug = true;
        }
        if (this.debug) {
            pr("DEBUG: JavaMail version 1.4ea");
        }
        if (authenticator != null) {
            cls = authenticator.getClass();
        } else {
            cls = getClass();
        }
        loadProviders(cls);
        loadAddressMap(cls);
    }

    public static Session getInstance(Properties properties, Authenticator authenticator) {
        return new Session(properties, authenticator);
    }

    public static Session getInstance(Properties properties) {
        return new Session(properties, null);
    }

    public static synchronized Session getDefaultInstance(Properties properties, Authenticator authenticator) {
        if (defaultSession == null) {
            defaultSession = new Session(properties, authenticator);
        } else if (defaultSession.authenticator != authenticator && (defaultSession.authenticator == null || authenticator == null || defaultSession.authenticator.getClass().getClassLoader() != authenticator.getClass().getClassLoader())) {
            throw new SecurityException("Access to default session denied");
        }
        return defaultSession;
    }

    public static Session getDefaultInstance(Properties properties) {
        return getDefaultInstance(properties, null);
    }

    public synchronized void setDebug(boolean z) {
        this.debug = z;
        if (z) {
            pr("DEBUG: setDebug: JavaMail version 1.4ea");
        }
    }

    public synchronized boolean getDebug() {
        return this.debug;
    }

    public synchronized void setDebugOut(PrintStream printStream) {
        this.out = printStream;
    }

    public synchronized PrintStream getDebugOut() {
        return this.out == null ? System.out : this.out;
    }

    public synchronized Provider[] getProviders() {
        Provider[] providerArr;
        providerArr = new Provider[this.providers.size()];
        this.providers.copyInto(providerArr);
        return providerArr;
    }

    public synchronized Provider getProvider(String str) throws NoSuchProviderException {
        Provider provider;
        if (str != null) {
            if (str.length() > 0) {
                provider = null;
                String property = this.props.getProperty(new StringBuffer().append("mail.").append(str).append(".class").toString());
                if (property != null) {
                    if (this.debug) {
                        pr(new StringBuffer().append("DEBUG: mail.").append(str).append(".class property exists and points to ").append(property).toString());
                    }
                    provider = (Provider) this.providersByClassName.get(property);
                }
                if (provider == null) {
                    provider = (Provider) this.providersByProtocol.get(str);
                    if (provider == null) {
                        throw new NoSuchProviderException(new StringBuffer().append("No provider for ").append(str).toString());
                    }
                    if (this.debug) {
                        pr(new StringBuffer().append("DEBUG: getProvider() returning ").append(provider.toString()).toString());
                    }
                }
            }
        }
        throw new NoSuchProviderException("Invalid protocol: null");
        return provider;
    }

    public synchronized void setProvider(Provider provider) throws NoSuchProviderException {
        if (provider == null) {
            throw new NoSuchProviderException("Can't set null provider");
        }
        this.providersByProtocol.put(provider.getProtocol(), provider);
        this.props.put(new StringBuffer().append("mail.").append(provider.getProtocol()).append(".class").toString(), provider.getClassName());
    }

    public Store getStore() throws NoSuchProviderException {
        return getStore(getProperty("mail.store.protocol"));
    }

    public Store getStore(String str) throws NoSuchProviderException {
        return getStore(new URLName(str, null, -1, null, null, null));
    }

    public Store getStore(URLName uRLName) throws NoSuchProviderException {
        return getStore(getProvider(uRLName.getProtocol()), uRLName);
    }

    public Store getStore(Provider provider) throws NoSuchProviderException {
        return getStore(provider, null);
    }

    private Store getStore(Provider provider, URLName uRLName) throws NoSuchProviderException {
        if (provider == null || provider.getType() != Provider.Type.STORE) {
            throw new NoSuchProviderException("invalid provider");
        }
        try {
            return (Store) getService(provider, uRLName);
        } catch (ClassCastException e2) {
            throw new NoSuchProviderException("incorrect class");
        }
    }

    public Folder getFolder(URLName uRLName) throws MessagingException {
        Store store = getStore(uRLName);
        store.connect();
        return store.getFolder(uRLName);
    }

    public Transport getTransport() throws NoSuchProviderException {
        return getTransport(getProperty("mail.transport.protocol"));
    }

    public Transport getTransport(String str) throws NoSuchProviderException {
        return getTransport(new URLName(str, null, -1, null, null, null));
    }

    public Transport getTransport(URLName uRLName) throws NoSuchProviderException {
        return getTransport(getProvider(uRLName.getProtocol()), uRLName);
    }

    public Transport getTransport(Provider provider) throws NoSuchProviderException {
        return getTransport(provider, null);
    }

    public Transport getTransport(Address address) throws NoSuchProviderException {
        String str = (String) this.addressMap.get(address.getType());
        if (str == null) {
            throw new NoSuchProviderException(new StringBuffer().append("No provider for Address type: ").append(address.getType()).toString());
        }
        return getTransport(str);
    }

    private Transport getTransport(Provider provider, URLName uRLName) throws NoSuchProviderException {
        if (provider == null || provider.getType() != Provider.Type.TRANSPORT) {
            throw new NoSuchProviderException("invalid provider");
        }
        try {
            return (Transport) getService(provider, uRLName);
        } catch (ClassCastException e2) {
            throw new NoSuchProviderException("incorrect class");
        }
    }

    private Object getService(Provider provider, URLName uRLName) throws Throwable {
        ClassLoader classLoader;
        Class<?> cls;
        Class<?> clsClass$;
        Class<?> clsClass$2;
        Class<?> clsLoadClass = null;
        if (provider == null) {
            throw new NoSuchProviderException("null");
        }
        URLName uRLName2 = uRLName == null ? new URLName(provider.getProtocol(), null, -1, null, null, null) : uRLName;
        if (this.authenticator != null) {
            classLoader = this.authenticator.getClass().getClassLoader();
        } else {
            classLoader = getClass().getClassLoader();
        }
        try {
            ClassLoader contextClassLoader = getContextClassLoader();
            if (contextClassLoader != null) {
                try {
                    clsLoadClass = contextClassLoader.loadClass(provider.getClassName());
                } catch (ClassNotFoundException e2) {
                }
            }
            cls = clsLoadClass == null ? classLoader.loadClass(provider.getClassName()) : clsLoadClass;
        } catch (Exception e3) {
            try {
                cls = Class.forName(provider.getClassName());
            } catch (Exception e4) {
                if (this.debug) {
                    e4.printStackTrace(getDebugOut());
                }
                throw new NoSuchProviderException(provider.getProtocol());
            }
        }
        try {
            Class<?>[] clsArr = new Class[2];
            if (class$javax$mail$Session == null) {
                clsClass$ = class$("javax.mail.Session");
                class$javax$mail$Session = clsClass$;
            } else {
                clsClass$ = class$javax$mail$Session;
            }
            clsArr[0] = clsClass$;
            if (class$javax$mail$URLName == null) {
                clsClass$2 = class$("javax.mail.URLName");
                class$javax$mail$URLName = clsClass$2;
            } else {
                clsClass$2 = class$javax$mail$URLName;
            }
            clsArr[1] = clsClass$2;
            return cls.getConstructor(clsArr).newInstance(this, uRLName2);
        } catch (Exception e5) {
            if (this.debug) {
                e5.printStackTrace(getDebugOut());
            }
            throw new NoSuchProviderException(provider.getProtocol());
        }
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public void setPasswordAuthentication(URLName uRLName, PasswordAuthentication passwordAuthentication) {
        if (passwordAuthentication == null) {
            this.authTable.remove(uRLName);
        } else {
            this.authTable.put(uRLName, passwordAuthentication);
        }
    }

    public PasswordAuthentication getPasswordAuthentication(URLName uRLName) {
        return (PasswordAuthentication) this.authTable.get(uRLName);
    }

    public PasswordAuthentication requestPasswordAuthentication(InetAddress inetAddress, int i, String str, String str2, String str3) {
        if (this.authenticator != null) {
            return this.authenticator.requestPasswordAuthentication(inetAddress, i, str, str2, str3);
        }
        return null;
    }

    public Properties getProperties() {
        return this.props;
    }

    public String getProperty(String str) {
        return this.props.getProperty(str);
    }

    private void loadProviders(Class cls) throws Throwable {
        StreamLoader streamLoader = new StreamLoader(this) { // from class: javax.mail.Session.1
            private final Session this$0;

            {
                this.this$0 = this;
            }

            @Override // javax.mail.StreamLoader
            public void load(InputStream inputStream) throws IOException {
                this.this$0.loadProvidersFromStream(inputStream);
            }
        };
        try {
            loadFile(new StringBuffer().append(System.getProperty("java.home")).append(File.separator).append("lib").append(File.separator).append("javamail.providers").toString(), streamLoader);
        } catch (SecurityException e2) {
            if (this.debug) {
                pr(new StringBuffer().append("DEBUG: can't get java.home: ").append(e2).toString());
            }
        }
        loadAllResources("META-INF/javamail.providers", cls, streamLoader);
        loadResource("/META-INF/javamail.default.providers", cls, streamLoader);
        if (this.providers.size() == 0) {
            if (this.debug) {
                pr("DEBUG: failed to load any providers, using defaults");
            }
            addProvider(new Provider(Provider.Type.STORE, "imap", "com.sun.mail.imap.IMAPStore", "Sun Microsystems, Inc.", version));
            addProvider(new Provider(Provider.Type.STORE, "imaps", "com.sun.mail.imap.IMAPSSLStore", "Sun Microsystems, Inc.", version));
            addProvider(new Provider(Provider.Type.STORE, "pop3", "com.sun.mail.pop3.POP3Store", "Sun Microsystems, Inc.", version));
            addProvider(new Provider(Provider.Type.STORE, "pop3s", "com.sun.mail.pop3.POP3SSLStore", "Sun Microsystems, Inc.", version));
            addProvider(new Provider(Provider.Type.TRANSPORT, "smtp", "com.sun.mail.smtp.SMTPTransport", "Sun Microsystems, Inc.", version));
            addProvider(new Provider(Provider.Type.TRANSPORT, "smtps", "com.sun.mail.smtp.SMTPSSLTransport", "Sun Microsystems, Inc.", version));
        }
        if (this.debug) {
            pr("DEBUG: Tables of loaded providers");
            pr(new StringBuffer().append("DEBUG: Providers Listed By Class Name: ").append(this.providersByClassName.toString()).toString());
            pr(new StringBuffer().append("DEBUG: Providers Listed By Protocol: ").append(this.providersByProtocol.toString()).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadProvidersFromStream(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            e eVar = new e(inputStream);
            while (true) {
                String strA = eVar.a();
                if (strA != null) {
                    if (!strA.startsWith("#")) {
                        StringTokenizer stringTokenizer = new StringTokenizer(strA, ";");
                        String strSubstring = null;
                        String strSubstring2 = null;
                        String strSubstring3 = null;
                        String strSubstring4 = null;
                        Provider.Type type = null;
                        while (stringTokenizer.hasMoreTokens()) {
                            String strTrim = stringTokenizer.nextToken().trim();
                            int iIndexOf = strTrim.indexOf(Engagement.Comparison.EQ);
                            if (strTrim.startsWith("protocol=")) {
                                strSubstring4 = strTrim.substring(iIndexOf + 1);
                            } else if (strTrim.startsWith("type=")) {
                                String strSubstring5 = strTrim.substring(iIndexOf + 1);
                                if (strSubstring5.equalsIgnoreCase("store")) {
                                    type = Provider.Type.STORE;
                                } else if (strSubstring5.equalsIgnoreCase(NotificationCompat.CATEGORY_TRANSPORT)) {
                                    type = Provider.Type.TRANSPORT;
                                }
                            } else if (strTrim.startsWith("class=")) {
                                strSubstring3 = strTrim.substring(iIndexOf + 1);
                            } else if (strTrim.startsWith("vendor=")) {
                                strSubstring2 = strTrim.substring(iIndexOf + 1);
                            } else if (strTrim.startsWith("version=")) {
                                strSubstring = strTrim.substring(iIndexOf + 1);
                            }
                        }
                        if (type == null || strSubstring4 == null || strSubstring3 == null || strSubstring4.length() <= 0 || strSubstring3.length() <= 0) {
                            if (this.debug) {
                                pr(new StringBuffer().append("DEBUG: Bad provider entry: ").append(strA).toString());
                            }
                        } else {
                            addProvider(new Provider(type, strSubstring4, strSubstring3, strSubstring2, strSubstring));
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    public synchronized void addProvider(Provider provider) {
        this.providers.addElement(provider);
        this.providersByClassName.put(provider.getClassName(), provider);
        if (!this.providersByProtocol.containsKey(provider.getProtocol())) {
            this.providersByProtocol.put(provider.getProtocol(), provider);
        }
    }

    private void loadAddressMap(Class cls) throws Throwable {
        StreamLoader streamLoader = new StreamLoader(this) { // from class: javax.mail.Session.2
            private final Session this$0;

            {
                this.this$0 = this;
            }

            @Override // javax.mail.StreamLoader
            public void load(InputStream inputStream) throws IOException {
                this.this$0.addressMap.load(inputStream);
            }
        };
        loadResource("/META-INF/javamail.default.address.map", cls, streamLoader);
        loadAllResources("META-INF/javamail.address.map", cls, streamLoader);
        try {
            loadFile(new StringBuffer().append(System.getProperty("java.home")).append(File.separator).append("lib").append(File.separator).append("javamail.address.map").toString(), streamLoader);
        } catch (SecurityException e2) {
            if (this.debug) {
                pr(new StringBuffer().append("DEBUG: can't get java.home: ").append(e2).toString());
            }
        }
        if (this.addressMap.isEmpty()) {
            if (this.debug) {
                pr("DEBUG: failed to load address map, using defaults");
            }
            this.addressMap.put("rfc822", "smtp");
        }
    }

    public synchronized void setProtocolForAddress(String str, String str2) {
        if (str2 == null) {
            this.addressMap.remove(str);
        } else {
            this.addressMap.put(str, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadFile(java.lang.String r5, javax.mail.StreamLoader r6) throws java.lang.Throwable {
        /*
            r4 = this;
            r2 = 0
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch: java.lang.SecurityException -> L71 java.lang.Throwable -> L96 java.io.IOException -> La6
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.SecurityException -> L71 java.lang.Throwable -> L96 java.io.IOException -> La6
            r0.<init>(r5)     // Catch: java.lang.SecurityException -> L71 java.lang.Throwable -> L96 java.io.IOException -> La6
            r1.<init>(r0)     // Catch: java.lang.SecurityException -> L71 java.lang.Throwable -> L96 java.io.IOException -> La6
            if (r1 == 0) goto L31
            r6.load(r1)     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            boolean r0 = r4.debug     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            if (r0 == 0) goto L2b
            java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            r0.<init>()     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            java.lang.String r2 = "DEBUG: successfully loaded file: "
            java.lang.StringBuffer r0 = r0.append(r2)     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            java.lang.StringBuffer r0 = r0.append(r5)     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            r4.pr(r0)     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
        L2b:
            if (r1 == 0) goto L30
            r1.close()     // Catch: java.io.IOException -> L9e
        L30:
            return
        L31:
            boolean r0 = r4.debug     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            if (r0 == 0) goto L2b
            java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            r0.<init>()     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            java.lang.String r2 = "DEBUG: not loading file: "
            java.lang.StringBuffer r0 = r0.append(r2)     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            java.lang.StringBuffer r0 = r0.append(r5)     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            r4.pr(r0)     // Catch: java.io.IOException -> L4d java.lang.Throwable -> La2 java.lang.SecurityException -> La4
            goto L2b
        L4d:
            r0 = move-exception
        L4e:
            boolean r2 = r4.debug     // Catch: java.lang.Throwable -> La2
            if (r2 == 0) goto L69
            java.lang.StringBuffer r2 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> La2
            r2.<init>()     // Catch: java.lang.Throwable -> La2
            java.lang.String r3 = "DEBUG: "
            java.lang.StringBuffer r2 = r2.append(r3)     // Catch: java.lang.Throwable -> La2
            java.lang.StringBuffer r0 = r2.append(r0)     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La2
            r4.pr(r0)     // Catch: java.lang.Throwable -> La2
        L69:
            if (r1 == 0) goto L30
            r1.close()     // Catch: java.io.IOException -> L6f
            goto L30
        L6f:
            r0 = move-exception
            goto L30
        L71:
            r0 = move-exception
            r1 = r2
        L73:
            boolean r2 = r4.debug     // Catch: java.lang.Throwable -> La2
            if (r2 == 0) goto L8e
            java.lang.StringBuffer r2 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> La2
            r2.<init>()     // Catch: java.lang.Throwable -> La2
            java.lang.String r3 = "DEBUG: "
            java.lang.StringBuffer r2 = r2.append(r3)     // Catch: java.lang.Throwable -> La2
            java.lang.StringBuffer r0 = r2.append(r0)     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La2
            r4.pr(r0)     // Catch: java.lang.Throwable -> La2
        L8e:
            if (r1 == 0) goto L30
            r1.close()     // Catch: java.io.IOException -> L94
            goto L30
        L94:
            r0 = move-exception
            goto L30
        L96:
            r0 = move-exception
            r1 = r2
        L98:
            if (r1 == 0) goto L9d
            r1.close()     // Catch: java.io.IOException -> La0
        L9d:
            throw r0
        L9e:
            r0 = move-exception
            goto L30
        La0:
            r1 = move-exception
            goto L9d
        La2:
            r0 = move-exception
            goto L98
        La4:
            r0 = move-exception
            goto L73
        La6:
            r0 = move-exception
            r1 = r2
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.Session.loadFile(java.lang.String, javax.mail.StreamLoader):void");
    }

    private void loadResource(String str, Class cls, StreamLoader streamLoader) {
        InputStream inputStream = null;
        try {
            try {
                InputStream resourceAsStream = getResourceAsStream(cls, str);
                if (resourceAsStream != null) {
                    streamLoader.load(resourceAsStream);
                    if (this.debug) {
                        pr(new StringBuffer().append("DEBUG: successfully loaded resource: ").append(str).toString());
                    }
                } else if (this.debug) {
                    pr(new StringBuffer().append("DEBUG: not loading resource: ").append(str).toString());
                }
                if (resourceAsStream != null) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (IOException e3) {
                if (this.debug) {
                    pr(new StringBuffer().append("DEBUG: ").append(e3).toString());
                }
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                    }
                }
            } catch (SecurityException e5) {
                if (this.debug) {
                    pr(new StringBuffer().append("DEBUG: ").append(e5).toString());
                }
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                    }
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException e7) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAllResources(java.lang.String r9, java.lang.Class r10, javax.mail.StreamLoader r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.Session.loadAllResources(java.lang.String, java.lang.Class, javax.mail.StreamLoader):void");
    }

    private void pr(String str) {
        getDebugOut().println(str);
    }

    private static ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.mail.Session.3
            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    return Thread.currentThread().getContextClassLoader();
                } catch (SecurityException e2) {
                    return null;
                }
            }
        });
    }

    private static InputStream getResourceAsStream(Class cls, String str) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new PrivilegedExceptionAction(cls, str) { // from class: javax.mail.Session.4
                private final Class val$c;
                private final String val$name;

                {
                    this.val$c = cls;
                    this.val$name = str;
                }

                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws IOException {
                    return this.val$c.getResourceAsStream(this.val$name);
                }
            });
        } catch (PrivilegedActionException e2) {
            throw ((IOException) e2.getException());
        }
    }

    private static URL[] getResources(ClassLoader classLoader, String str) {
        return (URL[]) AccessController.doPrivileged(new PrivilegedAction(classLoader, str) { // from class: javax.mail.Session.5
            private final ClassLoader val$cl;
            private final String val$name;

            {
                this.val$cl = classLoader;
                this.val$name = str;
            }

            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    Vector vector = new Vector();
                    Enumeration<URL> resources = this.val$cl.getResources(this.val$name);
                    while (resources != null && resources.hasMoreElements()) {
                        URL urlNextElement = resources.nextElement();
                        if (urlNextElement != null) {
                            vector.addElement(urlNextElement);
                        }
                    }
                    if (vector.size() <= 0) {
                        return null;
                    }
                    URL[] urlArr = new URL[vector.size()];
                    try {
                        vector.copyInto(urlArr);
                        return urlArr;
                    } catch (IOException e2) {
                        return urlArr;
                    } catch (SecurityException e3) {
                        return urlArr;
                    }
                } catch (IOException e4) {
                    return null;
                } catch (SecurityException e5) {
                    return null;
                }
            }
        });
    }

    private static URL[] getSystemResources(String str) {
        return (URL[]) AccessController.doPrivileged(new PrivilegedAction(str) { // from class: javax.mail.Session.6
            private final String val$name;

            {
                this.val$name = str;
            }

            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    Vector vector = new Vector();
                    Enumeration<URL> systemResources = ClassLoader.getSystemResources(this.val$name);
                    while (systemResources != null && systemResources.hasMoreElements()) {
                        URL urlNextElement = systemResources.nextElement();
                        if (urlNextElement != null) {
                            vector.addElement(urlNextElement);
                        }
                    }
                    if (vector.size() <= 0) {
                        return null;
                    }
                    URL[] urlArr = new URL[vector.size()];
                    try {
                        vector.copyInto(urlArr);
                        return urlArr;
                    } catch (IOException e2) {
                        return urlArr;
                    } catch (SecurityException e3) {
                        return urlArr;
                    }
                } catch (IOException e4) {
                    return null;
                } catch (SecurityException e5) {
                    return null;
                }
            }
        });
    }

    private static InputStream openStream(URL url) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new PrivilegedExceptionAction(url) { // from class: javax.mail.Session.7
                private final URL val$url;

                {
                    this.val$url = url;
                }

                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws IOException {
                    return this.val$url.openStream();
                }
            });
        } catch (PrivilegedActionException e2) {
            throw ((IOException) e2.getException());
        }
    }
}
