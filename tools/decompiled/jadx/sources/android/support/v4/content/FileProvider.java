package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.GuardedBy;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.google.gdata.data.webmastertools.Namespaces;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.URIUtil;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class FileProvider extends ContentProvider {
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PATH = "path";
    private static final String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
    private static final String TAG_CACHE_PATH = "cache-path";
    private static final String TAG_EXTERNAL = "external-path";
    private static final String TAG_EXTERNAL_CACHE = "external-cache-path";
    private static final String TAG_EXTERNAL_FILES = "external-files-path";
    private static final String TAG_FILES_PATH = "files-path";
    private static final String TAG_ROOT_PATH = "root-path";
    private PathStrategy mStrategy;
    private static final String[] COLUMNS = {"_display_name", "_size"};
    private static final File DEVICE_ROOT = new File(URIUtil.SLASH);

    @GuardedBy("sCache")
    private static HashMap<String, PathStrategy> sCache = new HashMap<>();

    interface PathStrategy {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        this.mStrategy = getPathStrategy(context, providerInfo.authority);
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        return getPathStrategy(context, str).getUriForFile(file);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        File fileForUri = this.mStrategy.getFileForUri(uri);
        if (strArr == null) {
            strArr = COLUMNS;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int length = strArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            String str3 = strArr[i2];
            if ("_display_name".equals(str3)) {
                strArr3[i3] = "_display_name";
                i = i3 + 1;
                objArr[i3] = fileForUri.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i3] = "_size";
                i = i3 + 1;
                objArr[i3] = Long.valueOf(fileForUri.length());
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        String[] strArrCopyOf = copyOf(strArr3, i3);
        Object[] objArrCopyOf = copyOf(objArr, i3);
        MatrixCursor matrixCursor = new MatrixCursor(strArrCopyOf, 1);
        matrixCursor.addRow(objArrCopyOf);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File fileForUri = this.mStrategy.getFileForUri(uri);
        int iLastIndexOf = fileForUri.getName().lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(iLastIndexOf + 1));
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.mStrategy.getFileForUri(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        return ParcelFileDescriptor.open(this.mStrategy.getFileForUri(uri), modeToMode(str));
    }

    private static PathStrategy getPathStrategy(Context context, String str) {
        PathStrategy pathStrategy;
        synchronized (sCache) {
            pathStrategy = sCache.get(str);
            if (pathStrategy == null) {
                try {
                    try {
                        pathStrategy = parsePathStrategy(context, str);
                        sCache.put(str, pathStrategy);
                    } catch (IOException e2) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                    }
                } catch (XmlPullParserException e3) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e3);
                }
            }
        }
        return pathStrategy;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.support.v4.content.FileProvider.PathStrategy parsePathStrategy(android.content.Context r9, java.lang.String r10) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r8 = 1
            r7 = 0
            r1 = 0
            android.support.v4.content.FileProvider$SimplePathStrategy r2 = new android.support.v4.content.FileProvider$SimplePathStrategy
            r2.<init>(r10)
            android.content.pm.PackageManager r0 = r9.getPackageManager()
            r3 = 128(0x80, float:1.794E-43)
            android.content.pm.ProviderInfo r0 = r0.resolveContentProvider(r10, r3)
            android.content.pm.PackageManager r3 = r9.getPackageManager()
            java.lang.String r4 = "android.support.FILE_PROVIDER_PATHS"
            android.content.res.XmlResourceParser r3 = r0.loadXmlMetaData(r3, r4)
            if (r3 != 0) goto L28
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Missing android.support.FILE_PROVIDER_PATHS meta-data"
            r0.<init>(r1)
            throw r0
        L28:
            int r0 = r3.next()
            if (r0 == r8) goto Lac
            r4 = 2
            if (r0 != r4) goto L28
            java.lang.String r0 = r3.getName()
            java.lang.String r4 = "name"
            java.lang.String r4 = r3.getAttributeValue(r1, r4)
            java.lang.String r5 = "path"
            java.lang.String r5 = r3.getAttributeValue(r1, r5)
            java.lang.String r6 = "root-path"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L5c
            java.io.File r0 = android.support.v4.content.FileProvider.DEVICE_ROOT
        L4e:
            if (r0 == 0) goto L28
            java.lang.String[] r6 = new java.lang.String[r8]
            r6[r7] = r5
            java.io.File r0 = buildPath(r0, r6)
            r2.addRoot(r4, r0)
            goto L28
        L5c:
            java.lang.String r6 = "files-path"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L6a
            java.io.File r0 = r9.getFilesDir()
            goto L4e
        L6a:
            java.lang.String r6 = "cache-path"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L78
            java.io.File r0 = r9.getCacheDir()
            goto L4e
        L78:
            java.lang.String r6 = "external-path"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L86
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()
            goto L4e
        L86:
            java.lang.String r6 = "external-files-path"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L99
            java.io.File[] r0 = android.support.v4.content.ContextCompat.getExternalFilesDirs(r9, r1)
            int r6 = r0.length
            if (r6 <= 0) goto Lad
            r0 = r0[r7]
            goto L4e
        L99:
            java.lang.String r6 = "external-cache-path"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto Lad
            java.io.File[] r0 = android.support.v4.content.ContextCompat.getExternalCacheDirs(r9)
            int r6 = r0.length
            if (r6 <= 0) goto Lad
            r0 = r0[r7]
            goto L4e
        Lac:
            return r2
        Lad:
            r0 = r1
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.FileProvider.parsePathStrategy(android.content.Context, java.lang.String):android.support.v4.content.FileProvider$PathStrategy");
    }

    class SimplePathStrategy implements PathStrategy {
        private final String mAuthority;
        private final HashMap<String, File> mRoots = new HashMap<>();

        public SimplePathStrategy(String str) {
            this.mAuthority = str;
        }

        public void addRoot(String str, File file) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                this.mRoots.put(str, file.getCanonicalFile());
            } catch (IOException e2) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e2);
            }
        }

        @Override // android.support.v4.content.FileProvider.PathStrategy
        public Uri getUriForFile(File file) {
            String strSubstring;
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.mRoots.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (!canonicalPath.startsWith(path) || (entry != null && path.length() <= entry.getValue().getPath().length())) {
                        entry2 = entry;
                    }
                    entry = entry2;
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                if (path2.endsWith(URIUtil.SLASH)) {
                    strSubstring = canonicalPath.substring(path2.length());
                } else {
                    strSubstring = canonicalPath.substring(path2.length() + 1);
                }
                return new Uri.Builder().scheme("content").authority(this.mAuthority).encodedPath(Uri.encode(entry.getKey()) + IOUtils.DIR_SEPARATOR_UNIX + Uri.encode(strSubstring, URIUtil.SLASH)).build();
            } catch (IOException e2) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }

        @Override // android.support.v4.content.FileProvider.PathStrategy
        public File getFileForUri(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
            String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
            File file = this.mRoots.get(strDecode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, strDecode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (!canonicalFile.getPath().startsWith(file.getPath())) {
                    throw new SecurityException("Resolved path jumped beyond configured root");
                }
                return canonicalFile;
            } catch (IOException e2) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }
    }

    private static int modeToMode(String str) {
        if ("r".equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || Namespaces.WT_ALIAS.equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }

    private static File buildPath(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        File file2 = file;
        while (i < length) {
            String str = strArr[i];
            i++;
            file2 = str != null ? new File(file2, str) : file2;
        }
        return file2;
    }

    private static String[] copyOf(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    private static Object[] copyOf(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }
}
