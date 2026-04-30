package com.adobe.mobile;

import c.a.a.a.a.d.d;
import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
class RemoteDownload {
    private static final int DEFAULT_CONNECTION_TIMEOUT = 10000;
    private static final int DEFAULT_READ_TIMEOUT = 10000;

    public interface RemoteDownloadBlock {
        void call(boolean z, File file);
    }

    RemoteDownload() {
    }

    protected static boolean stringIsUrl(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        try {
            new URL(str);
            return true;
        } catch (MalformedURLException e2) {
            return false;
        }
    }

    protected static void remoteDownloadAsync(String str, int i, int i2, RemoteDownloadBlock remoteDownloadBlock, String str2) {
        new Thread(new DownloadFileTask(str, remoteDownloadBlock, i, i2, str2)).start();
    }

    protected static void remoteDownloadAsync(String str, int i, int i2, RemoteDownloadBlock remoteDownloadBlock) {
        remoteDownloadAsync(str, i, i2, remoteDownloadBlock, "adbdownloadcache");
    }

    protected static void remoteDownloadAsync(String str, RemoteDownloadBlock remoteDownloadBlock) {
        remoteDownloadAsync(str, 10000, 10000, remoteDownloadBlock, "adbdownloadcache");
    }

    protected static void remoteDownloadAsync(String str, String str2, RemoteDownloadBlock remoteDownloadBlock) {
        remoteDownloadAsync(str, 10000, 10000, remoteDownloadBlock, str2);
    }

    protected static void remoteDownloadSync(String str, int i, int i2, RemoteDownloadBlock remoteDownloadBlock, String str2) {
        new DownloadFileTask(str, remoteDownloadBlock, i, i2, str2).run();
    }

    protected static void remoteDownloadSync(String str, int i, int i2, RemoteDownloadBlock remoteDownloadBlock) {
        remoteDownloadSync(str, i, i2, remoteDownloadBlock, "adbdownloadcache");
    }

    protected static void remoteDownloadSync(String str, RemoteDownloadBlock remoteDownloadBlock) {
        remoteDownloadSync(str, 10000, 10000, remoteDownloadBlock, "adbdownloadcache");
    }

    protected static void remoteDownloadSync(String str, String str2, RemoteDownloadBlock remoteDownloadBlock) {
        remoteDownloadSync(str, 10000, 10000, remoteDownloadBlock, str2);
    }

    protected static File getFileForCachedURL(String str) {
        return getFileForCachedURL(str, "adbdownloadcache");
    }

    protected static File getFileForCachedURL(String str, String str2) {
        File downloadCacheDirectory;
        if (str == null || str.length() < 1 || (downloadCacheDirectory = getDownloadCacheDirectory(str2)) == null) {
            return null;
        }
        String[] list = downloadCacheDirectory.list();
        if (list == null || list.length < 1) {
            StaticMethods.logDebugFormat("Cached Files - Directory is empty (%s).", downloadCacheDirectory.getAbsolutePath());
            return null;
        }
        String strMd5hash = md5hash(str);
        for (String str3 : list) {
            if (str3.substring(0, str3.lastIndexOf(46)).equals(strMd5hash)) {
                return new File(downloadCacheDirectory, str3);
            }
        }
        StaticMethods.logDebugFormat("Cached Files - This file has not previously been cached (%s).", str);
        return null;
    }

    protected static void deleteFilesForDirectoryNotInList(String str, List<String> list) {
        File[] fileArrListFiles;
        if (list == null || list.size() <= 0) {
            deleteFilesInDirectory(str);
            return;
        }
        File downloadCacheDirectory = getDownloadCacheDirectory(str);
        if (downloadCacheDirectory != null && (fileArrListFiles = downloadCacheDirectory.listFiles()) != null && fileArrListFiles.length > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(md5hash(it.next()));
            }
            for (File file : fileArrListFiles) {
                String name = file.getName();
                if (!arrayList.contains(name.substring(0, name.indexOf(".")))) {
                    if (file.delete()) {
                        StaticMethods.logDebugFormat("Cached File - Removed unused cache file", new Object[0]);
                    } else {
                        StaticMethods.logWarningFormat("Cached File - Failed to remove unused cache file", new Object[0]);
                    }
                }
            }
        }
    }

    protected static void deleteFilesInDirectory(String str) {
        File[] fileArrListFiles;
        File downloadCacheDirectory = getDownloadCacheDirectory(str);
        if (downloadCacheDirectory != null && (fileArrListFiles = downloadCacheDirectory.listFiles()) != null && fileArrListFiles.length > 0) {
            for (File file : fileArrListFiles) {
                if (file.delete()) {
                    StaticMethods.logDebugFormat("Cached File - Removed unused cache file", new Object[0]);
                } else {
                    StaticMethods.logWarningFormat("Cached File - Failed to remove unused cache file", new Object[0]);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File getNewCachedFile(String str, Date date, String str2, String str3) {
        String strMd5hash;
        if (str == null || str.length() < 1) {
            StaticMethods.logWarningFormat("Cached File - Invalid url parameter while attempting to create cache file. Could not save data.", new Object[0]);
            return null;
        }
        if (date == null) {
            StaticMethods.logWarningFormat("Cached File - Invalid lastModified parameter while attempting to create cache file. Could not save data.", new Object[0]);
            return null;
        }
        if (str2 == null || str2.length() < 1) {
            StaticMethods.logWarningFormat("Cached File - Invalid etag parameter while attempting to create cache file. Could not save data.", new Object[0]);
            return null;
        }
        File downloadCacheDirectory = getDownloadCacheDirectory(str3);
        if (downloadCacheDirectory == null || (strMd5hash = md5hash(str)) == null || strMd5hash.length() < 1) {
            return null;
        }
        return new File(downloadCacheDirectory.getPath() + File.separator + md5hash(str) + "." + date.getTime() + d.ROLL_OVER_FILE_NAME_SEPARATOR + str2);
    }

    protected static File getDownloadCacheDirectory(String str) {
        File file = new File(StaticMethods.getCacheDirectory(), str);
        if (!file.exists() && !file.mkdir()) {
            StaticMethods.logWarningFormat("Cached File - unable to open/make download cache directory", new Object[0]);
            return null;
        }
        return file;
    }

    protected static boolean deleteCachedDataForURL(String str, String str2) {
        if (str == null || str.length() < 1) {
            StaticMethods.logWarningFormat("Cached File - tried to delete cached file, but file path was empty", new Object[0]);
            return false;
        }
        File fileForCachedURL = getFileForCachedURL(str, str2);
        return fileForCachedURL != null && fileForCachedURL.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getLastModifiedOfFile(String str) {
        if (str == null || str.length() < 1) {
            StaticMethods.logWarningFormat("Cached File - Path was null or empty for Cache File. Could not get Last Modified Date.", new Object[0]);
            return 0L;
        }
        String[] strArrSplitPathExtension = splitPathExtension(getPathExtension(str));
        if (strArrSplitPathExtension == null || strArrSplitPathExtension.length < 1) {
            StaticMethods.logWarningFormat("Cached File - No last modified date for file. Extension had no values after split.", new Object[0]);
            return 0L;
        }
        return Long.parseLong(strArrSplitPathExtension[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getEtagOfFile(String str) {
        if (str == null || str.length() < 1) {
            StaticMethods.logWarningFormat("Cached File - Path was null or empty for Cache File", new Object[0]);
            return null;
        }
        String[] strArrSplitPathExtension = splitPathExtension(getPathExtension(str));
        if (strArrSplitPathExtension == null || strArrSplitPathExtension.length < 2) {
            StaticMethods.logWarningFormat("Cached File - No etag for file. Extension had no second value after split.", new Object[0]);
            return null;
        }
        return strArrSplitPathExtension[1];
    }

    private static String getPathExtension(String str) {
        if (str != null && str.length() >= 1) {
            return str.substring(str.lastIndexOf(".") + 1);
        }
        StaticMethods.logWarningFormat("Cached File - Path was null or empty for Cache File", new Object[0]);
        return null;
    }

    private static String[] splitPathExtension(String str) {
        if (str == null || str.length() < 1) {
            StaticMethods.logWarningFormat("Cached File - Extension was null or empty on Cache File", new Object[0]);
            return null;
        }
        String[] strArrSplit = str.split(d.ROLL_OVER_FILE_NAME_SEPARATOR);
        if (strArrSplit.length == 2) {
            return strArrSplit;
        }
        StaticMethods.logWarningFormat("Cached File - Invalid Extension on Cache File (%s)", str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SimpleDateFormat createRFC2822Formatter() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    private static String md5hash(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrDigest) {
                String hexString = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            StaticMethods.logErrorFormat("Cached Files - Unsupported Encoding: UTF-8 (%s)", e2.getMessage());
            return null;
        } catch (NoSuchAlgorithmException e3) {
            StaticMethods.logErrorFormat("Cached Files - unable to get md5 hash (%s)", e3.getMessage());
            return null;
        }
    }

    class DownloadFileTask implements Runnable {
        private final RemoteDownloadBlock callback;
        private final int connectionTimeout;
        private final String directory;
        private final int readTimeout;
        private final String url;

        private DownloadFileTask(String str, RemoteDownloadBlock remoteDownloadBlock, int i, int i2, String str2) {
            this.url = str;
            this.callback = remoteDownloadBlock;
            this.connectionTimeout = i;
            this.readTimeout = i2;
            this.directory = str2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:158:0x0319 A[Catch: IOException -> 0x0320, TryCatch #23 {IOException -> 0x0320, blocks: (B:156:0x0314, B:158:0x0319, B:159:0x031c), top: B:204:0x0314 }] */
        /* JADX WARN: Removed duplicated region for block: B:204:0x0314 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v21, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r1v24, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r1v25 */
        /* JADX WARN: Type inference failed for: r1v31 */
        /* JADX WARN: Type inference failed for: r1v35 */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r1v41 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.text.SimpleDateFormat] */
        /* JADX WARN: Type inference failed for: r2v11, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v13, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v25, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v33, types: [com.adobe.mobile.RemoteDownload$RemoteDownloadBlock] */
        /* JADX WARN: Type inference failed for: r2v37, types: [com.adobe.mobile.RemoteDownload$RemoteDownloadBlock] */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v41, types: [com.adobe.mobile.RemoteDownload$RemoteDownloadBlock] */
        /* JADX WARN: Type inference failed for: r2v42 */
        /* JADX WARN: Type inference failed for: r2v43, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v47 */
        /* JADX WARN: Type inference failed for: r2v48 */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v6 */
        /* JADX WARN: Type inference failed for: r2v7, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v9, types: [java.io.InputStream] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 862
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.adobe.mobile.RemoteDownload.DownloadFileTask.run():void");
        }

        protected static HttpURLConnection requestConnect(String str) {
            try {
                return (HttpURLConnection) new URL(str).openConnection();
            } catch (Exception e2) {
                StaticMethods.logErrorFormat("Cached Files - Exception opening URL(%s)", e2.getLocalizedMessage());
                return null;
            }
        }
    }
}
