package org.joda.time.tz;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.io.IOUtils;
import org.joda.time.DateTimeZone;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ZoneInfoProvider implements Provider {
    private final File iFileDir;
    private final ClassLoader iLoader;
    private final String iResourcePath;
    private final Set<String> iZoneInfoKeys;
    private final Map<String, Object> iZoneInfoMap;

    public ZoneInfoProvider(File file) throws IOException {
        if (file == null) {
            throw new IllegalArgumentException("No file directory provided");
        }
        if (!file.exists()) {
            throw new IOException("File directory doesn't exist: " + file);
        }
        if (!file.isDirectory()) {
            throw new IOException("File doesn't refer to a directory: " + file);
        }
        this.iFileDir = file;
        this.iResourcePath = null;
        this.iLoader = null;
        this.iZoneInfoMap = loadZoneInfoMap(openResource("ZoneInfoMap"));
        this.iZoneInfoKeys = Collections.unmodifiableSortedSet(new TreeSet(this.iZoneInfoMap.keySet()));
    }

    public ZoneInfoProvider(String str) throws IOException {
        this(str, null, false);
    }

    public ZoneInfoProvider(String str, ClassLoader classLoader) throws IOException {
        this(str, classLoader, true);
    }

    private ZoneInfoProvider(String str, ClassLoader classLoader, boolean z) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("No resource path provided");
        }
        str = str.endsWith(URIUtil.SLASH) ? str : str + IOUtils.DIR_SEPARATOR_UNIX;
        this.iFileDir = null;
        this.iResourcePath = str;
        if (classLoader == null && !z) {
            classLoader = getClass().getClassLoader();
        }
        this.iLoader = classLoader;
        this.iZoneInfoMap = loadZoneInfoMap(openResource("ZoneInfoMap"));
        this.iZoneInfoKeys = Collections.unmodifiableSortedSet(new TreeSet(this.iZoneInfoMap.keySet()));
    }

    @Override // org.joda.time.tz.Provider
    public DateTimeZone getZone(String str) {
        Object obj;
        if (str != null && (obj = this.iZoneInfoMap.get(str)) != null) {
            if (obj instanceof SoftReference) {
                DateTimeZone dateTimeZone = (DateTimeZone) ((SoftReference) obj).get();
                if (dateTimeZone == null) {
                    return loadZoneData(str);
                }
                return dateTimeZone;
            }
            if (str.equals(obj)) {
                return loadZoneData(str);
            }
            return getZone((String) obj);
        }
        return null;
    }

    @Override // org.joda.time.tz.Provider
    public Set<String> getAvailableIDs() {
        return this.iZoneInfoKeys;
    }

    protected void uncaughtException(Exception exc) {
        exc.printStackTrace();
    }

    private InputStream openResource(String str) throws IOException {
        if (this.iFileDir != null) {
            return new FileInputStream(new File(this.iFileDir, str));
        }
        final String strConcat = this.iResourcePath.concat(str);
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() { // from class: org.joda.time.tz.ZoneInfoProvider.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public InputStream run() {
                return ZoneInfoProvider.this.iLoader != null ? ZoneInfoProvider.this.iLoader.getResourceAsStream(strConcat) : ClassLoader.getSystemResourceAsStream(strConcat);
            }
        });
        if (inputStream == null) {
            throw new IOException(new StringBuilder(40).append("Resource not found: \"").append(strConcat).append("\" ClassLoader: ").append(this.iLoader != null ? this.iLoader.toString() : "system").toString());
        }
        return inputStream;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.joda.time.DateTimeZone loadZoneData(java.lang.String r6) throws java.lang.Throwable {
        /*
            r5 = this;
            r1 = 0
            java.io.InputStream r2 = r5.openResource(r6)     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L2a
            org.joda.time.DateTimeZone r0 = org.joda.time.tz.DateTimeZoneBuilder.readFrom(r2, r6)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            java.util.Map<java.lang.String, java.lang.Object> r3 = r5.iZoneInfoMap     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            java.lang.ref.SoftReference r4 = new java.lang.ref.SoftReference     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r3.put(r6, r4)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            if (r2 == 0) goto L18
            r2.close()     // Catch: java.io.IOException -> L32
        L18:
            return r0
        L19:
            r0 = move-exception
            r2 = r1
        L1b:
            r5.uncaughtException(r0)     // Catch: java.lang.Throwable -> L38
            java.util.Map<java.lang.String, java.lang.Object> r0 = r5.iZoneInfoMap     // Catch: java.lang.Throwable -> L38
            r0.remove(r6)     // Catch: java.lang.Throwable -> L38
            if (r2 == 0) goto L28
            r2.close()     // Catch: java.io.IOException -> L34
        L28:
            r0 = r1
            goto L18
        L2a:
            r0 = move-exception
            r2 = r1
        L2c:
            if (r2 == 0) goto L31
            r2.close()     // Catch: java.io.IOException -> L36
        L31:
            throw r0
        L32:
            r1 = move-exception
            goto L18
        L34:
            r0 = move-exception
            goto L28
        L36:
            r1 = move-exception
            goto L31
        L38:
            r0 = move-exception
            goto L2c
        L3a:
            r0 = move-exception
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.joda.time.tz.ZoneInfoProvider.loadZoneData(java.lang.String):org.joda.time.DateTimeZone");
    }

    private static Map<String, Object> loadZoneInfoMap(InputStream inputStream) throws IOException {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            readZoneInfoMap(dataInputStream, concurrentHashMap);
            concurrentHashMap.put("UTC", new SoftReference(DateTimeZone.UTC));
            return concurrentHashMap;
        } finally {
            try {
                dataInputStream.close();
            } catch (IOException e2) {
            }
        }
    }

    private static void readZoneInfoMap(DataInputStream dataInputStream, Map<String, Object> map) throws IOException {
        int unsignedShort = dataInputStream.readUnsignedShort();
        String[] strArr = new String[unsignedShort];
        for (int i = 0; i < unsignedShort; i++) {
            strArr[i] = dataInputStream.readUTF().intern();
        }
        int unsignedShort2 = dataInputStream.readUnsignedShort();
        for (int i2 = 0; i2 < unsignedShort2; i2++) {
            try {
                map.put(strArr[dataInputStream.readUnsignedShort()], strArr[dataInputStream.readUnsignedShort()]);
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new IOException("Corrupt zone info map");
            }
        }
    }
}
