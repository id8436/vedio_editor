package javax.activation;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FileTypeMap {
    static Class class$javax$activation$FileTypeMap;
    private static FileTypeMap defaultMap = null;

    public abstract String getContentType(File file);

    public abstract String getContentType(String str);

    public static void setDefaultFileTypeMap(FileTypeMap fileTypeMap) throws Throwable {
        Class clsClass$;
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            try {
                securityManager.checkSetFactory();
            } catch (SecurityException e2) {
                if (class$javax$activation$FileTypeMap == null) {
                    clsClass$ = class$("javax.activation.FileTypeMap");
                    class$javax$activation$FileTypeMap = clsClass$;
                } else {
                    clsClass$ = class$javax$activation$FileTypeMap;
                }
                if (clsClass$.getClassLoader() != fileTypeMap.getClass().getClassLoader()) {
                    throw e2;
                }
            }
        }
        defaultMap = fileTypeMap;
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static FileTypeMap getDefaultFileTypeMap() {
        if (defaultMap == null) {
            defaultMap = new MimetypesFileTypeMap();
        }
        return defaultMap;
    }
}
