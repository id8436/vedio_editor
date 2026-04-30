package javax.activation;

import com.l.a.a.b;
import com.l.a.a.g;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

/* JADX INFO: loaded from: classes3.dex */
public class MimetypesFileTypeMap extends FileTypeMap {
    private static final int PROG = 0;
    static Class class$javax$activation$MimetypesFileTypeMap;
    private static g defDB = null;
    private static String defaultType = "application/octet-stream";
    private g[] DB;

    public MimetypesFileTypeMap() throws Throwable {
        Class clsClass$;
        g gVarLoadFile;
        Vector vector = new Vector(5);
        vector.addElement(null);
        b.a("MimetypesFileTypeMap: load HOME");
        try {
            String property = System.getProperty("user.home");
            if (property != null && (gVarLoadFile = loadFile(new StringBuffer().append(property).append(File.separator).append(".mime.types").toString())) != null) {
                vector.addElement(gVarLoadFile);
            }
        } catch (SecurityException e2) {
        }
        b.a("MimetypesFileTypeMap: load SYS");
        try {
            g gVarLoadFile2 = loadFile(new StringBuffer().append(System.getProperty("java.home")).append(File.separator).append("lib").append(File.separator).append("mime.types").toString());
            if (gVarLoadFile2 != null) {
                vector.addElement(gVarLoadFile2);
            }
        } catch (SecurityException e3) {
        }
        b.a("MimetypesFileTypeMap: load JAR");
        loadAllResources(vector, "META-INF/mime.types");
        b.a("MimetypesFileTypeMap: load DEF");
        if (class$javax$activation$MimetypesFileTypeMap == null) {
            clsClass$ = class$("javax.activation.MimetypesFileTypeMap");
            class$javax$activation$MimetypesFileTypeMap = clsClass$;
        } else {
            clsClass$ = class$javax$activation$MimetypesFileTypeMap;
        }
        synchronized (clsClass$) {
            if (defDB == null) {
                defDB = loadResource("/META-INF/mimetypes.default");
            }
        }
        if (defDB != null) {
            vector.addElement(defDB);
        }
        this.DB = new g[vector.size()];
        vector.copyInto(this.DB);
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.l.a.a.g loadResource(java.lang.String r6) throws java.lang.Throwable {
        /*
            r5 = this;
            r1 = 0
            java.lang.Class r0 = r5.getClass()     // Catch: java.io.IOException -> L57 java.lang.SecurityException -> L7e java.lang.Throwable -> La5
            java.io.InputStream r2 = javax.activation.SecuritySupport.getResourceAsStream(r0, r6)     // Catch: java.io.IOException -> L57 java.lang.SecurityException -> L7e java.lang.Throwable -> La5
            if (r2 == 0) goto L33
            com.l.a.a.g r0 = new com.l.a.a.g     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            r0.<init>(r2)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            boolean r3 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            if (r3 == 0) goto L2d
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            r3.<init>()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r4 = "MimetypesFileTypeMap: successfully loaded mime types file: "
            java.lang.StringBuffer r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.StringBuffer r3 = r3.append(r6)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            com.l.a.a.b.a(r3)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
        L2d:
            if (r2 == 0) goto L32
            r2.close()     // Catch: java.io.IOException -> Lad
        L32:
            return r0
        L33:
            boolean r0 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            if (r0 == 0) goto L50
            java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            r0.<init>()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r3 = "MimetypesFileTypeMap: not loading mime types file: "
            java.lang.StringBuffer r0 = r0.append(r3)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.StringBuffer r0 = r0.append(r6)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
            com.l.a.a.b.a(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.SecurityException -> Lb5 java.io.IOException -> Lb7
        L50:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> Laf
        L55:
            r0 = r1
            goto L32
        L57:
            r0 = move-exception
            r2 = r1
        L59:
            boolean r3 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto L76
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3
            r3.<init>()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r4 = "MimetypesFileTypeMap: can't load "
            java.lang.StringBuffer r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Lb3
            java.lang.StringBuffer r3 = r3.append(r6)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb3
            com.l.a.a.b.a(r3, r0)     // Catch: java.lang.Throwable -> Lb3
        L76:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> L7c
            goto L55
        L7c:
            r0 = move-exception
            goto L55
        L7e:
            r0 = move-exception
            r2 = r1
        L80:
            boolean r3 = com.l.a.a.b.a()     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto L9d
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> Lb3
            r3.<init>()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r4 = "MimetypesFileTypeMap: can't load "
            java.lang.StringBuffer r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Lb3
            java.lang.StringBuffer r3 = r3.append(r6)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb3
            com.l.a.a.b.a(r3, r0)     // Catch: java.lang.Throwable -> Lb3
        L9d:
            if (r2 == 0) goto L55
            r2.close()     // Catch: java.io.IOException -> La3
            goto L55
        La3:
            r0 = move-exception
            goto L55
        La5:
            r0 = move-exception
            r2 = r1
        La7:
            if (r2 == 0) goto Lac
            r2.close()     // Catch: java.io.IOException -> Lb1
        Lac:
            throw r0
        Lad:
            r1 = move-exception
            goto L32
        Laf:
            r0 = move-exception
            goto L55
        Lb1:
            r1 = move-exception
            goto Lac
        Lb3:
            r0 = move-exception
            goto La7
        Lb5:
            r0 = move-exception
            goto L80
        Lb7:
            r0 = move-exception
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MimetypesFileTypeMap.loadResource(java.lang.String):com.l.a.a.g");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAllResources(java.util.Vector r10, java.lang.String r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.activation.MimetypesFileTypeMap.loadAllResources(java.util.Vector, java.lang.String):void");
    }

    private g loadFile(String str) {
        try {
            return new g(str);
        } catch (IOException e2) {
            return null;
        }
    }

    public MimetypesFileTypeMap(String str) throws IOException {
        this();
        this.DB[0] = new g(str);
    }

    public MimetypesFileTypeMap(InputStream inputStream) {
        this();
        try {
            this.DB[0] = new g(inputStream);
        } catch (IOException e2) {
        }
    }

    public synchronized void addMimeTypes(String str) {
        if (this.DB[0] == null) {
            this.DB[0] = new g();
        }
        this.DB[0].c(str);
    }

    @Override // javax.activation.FileTypeMap
    public String getContentType(File file) {
        return getContentType(file.getName());
    }

    @Override // javax.activation.FileTypeMap
    public synchronized String getContentType(String str) {
        String strB;
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf < 0) {
            strB = defaultType;
        } else {
            String strSubstring = str.substring(iLastIndexOf + 1);
            if (strSubstring.length() == 0) {
                strB = defaultType;
            } else {
                int i = 0;
                while (true) {
                    if (i < this.DB.length) {
                        if (this.DB[i] != null && (strB = this.DB[i].b(strSubstring)) != null) {
                            break;
                        }
                        i++;
                    } else {
                        strB = defaultType;
                        break;
                    }
                }
            }
        }
        return strB;
    }
}
