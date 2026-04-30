package javax.activation;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes3.dex */
class SecuritySupport {
    private SecuritySupport() {
    }

    public static ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.activation.SecuritySupport.1
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

    public static InputStream getResourceAsStream(Class cls, String str) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new PrivilegedExceptionAction(cls, str) { // from class: javax.activation.SecuritySupport.2
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

    public static URL[] getResources(ClassLoader classLoader, String str) {
        return (URL[]) AccessController.doPrivileged(new PrivilegedAction(classLoader, str) { // from class: javax.activation.SecuritySupport.3
            private final ClassLoader val$cl;
            private final String val$name;

            {
                this.val$cl = classLoader;
                this.val$name = str;
            }

            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    ArrayList arrayList = new ArrayList();
                    Enumeration<URL> resources = this.val$cl.getResources(this.val$name);
                    while (resources != null && resources.hasMoreElements()) {
                        URL urlNextElement = resources.nextElement();
                        if (urlNextElement != null) {
                            arrayList.add(urlNextElement);
                        }
                    }
                    if (arrayList.size() <= 0) {
                        return null;
                    }
                    URL[] urlArr = new URL[arrayList.size()];
                    try {
                        return (URL[]) arrayList.toArray(urlArr);
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

    public static URL[] getSystemResources(String str) {
        return (URL[]) AccessController.doPrivileged(new PrivilegedAction(str) { // from class: javax.activation.SecuritySupport.4
            private final String val$name;

            {
                this.val$name = str;
            }

            @Override // java.security.PrivilegedAction
            public Object run() {
                try {
                    ArrayList arrayList = new ArrayList();
                    Enumeration<URL> systemResources = ClassLoader.getSystemResources(this.val$name);
                    while (systemResources != null && systemResources.hasMoreElements()) {
                        URL urlNextElement = systemResources.nextElement();
                        if (urlNextElement != null) {
                            arrayList.add(urlNextElement);
                        }
                    }
                    if (arrayList.size() <= 0) {
                        return null;
                    }
                    URL[] urlArr = new URL[arrayList.size()];
                    try {
                        return (URL[]) arrayList.toArray(urlArr);
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

    public static InputStream openStream(URL url) throws IOException {
        try {
            return (InputStream) AccessController.doPrivileged(new PrivilegedExceptionAction(url) { // from class: javax.activation.SecuritySupport.5
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
