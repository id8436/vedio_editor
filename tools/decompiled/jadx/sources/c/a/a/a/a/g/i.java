package c.a.a.a.a.g;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;

/* JADX INFO: compiled from: DefaultCachedSettingsIo.java */
/* JADX INFO: loaded from: classes.dex */
class i implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a.a.a.q f311a;

    public i(c.a.a.a.q qVar) {
        this.f311a = qVar;
    }

    @Override // c.a.a.a.a.g.g
    public JSONObject a() throws Throwable {
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        FileInputStream fileInputStream2 = null;
        c.a.a.a.f.h().a("Fabric", "Reading cached settings...");
        try {
            File file = new File(new c.a.a.a.a.f.b(this.f311a).a(), "com.crashlytics.settings.json");
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        jSONObject = new JSONObject(c.a.a.a.a.b.m.a((InputStream) fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e2) {
                        e = e2;
                        c.a.a.a.f.h().e("Fabric", "Failed to fetch cached settings", e);
                        c.a.a.a.a.b.m.a((Closeable) fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    c.a.a.a.a.b.m.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                c.a.a.a.f.h().a("Fabric", "No cached settings found.");
                jSONObject = null;
            }
            c.a.a.a.a.b.m.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            c.a.a.a.a.b.m.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
    }

    @Override // c.a.a.a.a.g.g
    public void a(long j, JSONObject jSONObject) throws Throwable {
        FileWriter fileWriter;
        c.a.a.a.f.h().a("Fabric", "Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            try {
                jSONObject.put("expires_at", j);
                fileWriter = new FileWriter(new File(new c.a.a.a.a.f.b(this.f311a).a(), "com.crashlytics.settings.json"));
                try {
                    try {
                        fileWriter.write(jSONObject.toString());
                        fileWriter.flush();
                        c.a.a.a.a.b.m.a((Closeable) fileWriter, "Failed to close settings writer.");
                    } catch (Exception e2) {
                        e = e2;
                        c.a.a.a.f.h().e("Fabric", "Failed to cache settings", e);
                        c.a.a.a.a.b.m.a((Closeable) fileWriter, "Failed to close settings writer.");
                    }
                } catch (Throwable th) {
                    th = th;
                    fileWriter2 = fileWriter;
                    c.a.a.a.a.b.m.a((Closeable) fileWriter2, "Failed to close settings writer.");
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileWriter = null;
            } catch (Throwable th2) {
                th = th2;
                c.a.a.a.a.b.m.a((Closeable) fileWriter2, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
