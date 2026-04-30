package c.a.a.a;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: compiled from: FabricKitsFinder.java */
/* JADX INFO: loaded from: classes.dex */
class k implements Callable<Map<String, s>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f389a;

    k(String str) {
        this.f389a = str;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Map<String, s> call() throws Exception {
        s sVarA;
        HashMap map = new HashMap();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ZipFile zipFileB = b();
        Enumeration<? extends ZipEntry> enumerationEntries = zipFileB.entries();
        int i = 0;
        while (enumerationEntries.hasMoreElements()) {
            int i2 = i + 1;
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (zipEntryNextElement.getName().startsWith("fabric/") && zipEntryNextElement.getName().length() > "fabric/".length() && (sVarA = a(zipEntryNextElement, zipFileB)) != null) {
                map.put(sVarA.a(), sVarA);
                f.h().b("Fabric", String.format("Found kit:[%s] version:[%s]", sVarA.a(), sVarA.b()));
            }
            i = i2;
        }
        if (zipFileB != null) {
            try {
                zipFileB.close();
            } catch (IOException e2) {
            }
        }
        f.h().b("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " reading:" + i);
        return map;
    }

    private s a(ZipEntry zipEntry, ZipFile zipFile) throws Throwable {
        InputStream inputStream;
        try {
            try {
                inputStream = zipFile.getInputStream(zipEntry);
                try {
                    Properties properties = new Properties();
                    properties.load(inputStream);
                    String property = properties.getProperty("fabric-identifier");
                    String property2 = properties.getProperty("fabric-version");
                    String property3 = properties.getProperty("fabric-build-type");
                    if (TextUtils.isEmpty(property) || TextUtils.isEmpty(property2)) {
                        throw new IllegalStateException("Invalid format of fabric file," + zipEntry.getName());
                    }
                    s sVar = new s(property, property2, property3);
                    c.a.a.a.a.b.m.a((Closeable) inputStream);
                    return sVar;
                } catch (IOException e2) {
                    e = e2;
                    f.h().e("Fabric", "Error when parsing fabric properties " + zipEntry.getName(), e);
                    c.a.a.a.a.b.m.a((Closeable) inputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                c.a.a.a.a.b.m.a((Closeable) null);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            c.a.a.a.a.b.m.a((Closeable) null);
            throw th;
        }
    }

    protected ZipFile b() throws IOException {
        return new ZipFile(this.f389a);
    }
}
