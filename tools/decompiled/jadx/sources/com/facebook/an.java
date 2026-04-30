package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.facebook.GraphRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: GraphRequest.java */
/* JADX INFO: loaded from: classes2.dex */
class an implements ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OutputStream f1763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.i.ag f1764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1765c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1766d;

    public an(OutputStream outputStream, com.facebook.i.ag agVar, boolean z) {
        this.f1766d = false;
        this.f1763a = outputStream;
        this.f1764b = agVar;
        this.f1766d = z;
    }

    public void a(String str, Object obj, GraphRequest graphRequest) throws IOException {
        if (this.f1763a instanceof bi) {
            ((bi) this.f1763a).a(graphRequest);
        }
        if (GraphRequest.e(obj)) {
            a(str, GraphRequest.f(obj));
            return;
        }
        if (obj instanceof Bitmap) {
            a(str, (Bitmap) obj);
            return;
        }
        if (obj instanceof byte[]) {
            a(str, (byte[]) obj);
            return;
        }
        if (obj instanceof Uri) {
            a(str, (Uri) obj, (String) null);
            return;
        }
        if (obj instanceof ParcelFileDescriptor) {
            a(str, (ParcelFileDescriptor) obj, (String) null);
            return;
        }
        if (obj instanceof GraphRequest.ParcelableResourceWithMimeType) {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = (GraphRequest.ParcelableResourceWithMimeType) obj;
            Parcelable parcelableB = parcelableResourceWithMimeType.b();
            String strA = parcelableResourceWithMimeType.a();
            if (parcelableB instanceof ParcelFileDescriptor) {
                a(str, (ParcelFileDescriptor) parcelableB, strA);
                return;
            } else {
                if (parcelableB instanceof Uri) {
                    a(str, (Uri) parcelableB, strA);
                    return;
                }
                throw b();
            }
        }
        throw b();
    }

    private RuntimeException b() {
        return new IllegalArgumentException("value is not a supported type.");
    }

    public void a(String str, JSONArray jSONArray, Collection<GraphRequest> collection) throws JSONException, IOException {
        if (!(this.f1763a instanceof bi)) {
            a(str, jSONArray.toString());
            return;
        }
        bi biVar = (bi) this.f1763a;
        a(str, (String) null, (String) null);
        a("[", new Object[0]);
        int i = 0;
        for (GraphRequest graphRequest : collection) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            biVar.a(graphRequest);
            if (i > 0) {
                a(",%s", jSONObject.toString());
            } else {
                a("%s", jSONObject.toString());
            }
            i++;
        }
        a("]", new Object[0]);
        if (this.f1764b != null) {
            this.f1764b.a("    " + str, (Object) jSONArray.toString());
        }
    }

    @Override // com.facebook.ak
    public void a(String str, String str2) throws IOException {
        a(str, (String) null, (String) null);
        b("%s", str2);
        a();
        if (this.f1764b != null) {
            this.f1764b.a("    " + str, (Object) str2);
        }
    }

    public void a(String str, Bitmap bitmap) throws IOException {
        a(str, str, "image/png");
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f1763a);
        b("", new Object[0]);
        a();
        if (this.f1764b != null) {
            this.f1764b.a("    " + str, (Object) "<Image>");
        }
    }

    public void a(String str, byte[] bArr) throws IOException {
        a(str, str, "content/unknown");
        this.f1763a.write(bArr);
        b("", new Object[0]);
        a();
        if (this.f1764b != null) {
            this.f1764b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
        }
    }

    public void a(String str, Uri uri, String str2) throws IOException {
        int iA;
        if (str2 == null) {
            str2 = "content/unknown";
        }
        a(str, str, str2);
        InputStream inputStreamOpenInputStream = w.f().getContentResolver().openInputStream(uri);
        if (this.f1763a instanceof ba) {
            ((ba) this.f1763a).a(com.facebook.i.as.a(uri));
            iA = 0;
        } else {
            iA = com.facebook.i.as.a(inputStreamOpenInputStream, this.f1763a) + 0;
        }
        b("", new Object[0]);
        a();
        if (this.f1764b != null) {
            this.f1764b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(iA)));
        }
    }

    public void a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws IOException {
        int iA;
        if (str2 == null) {
            str2 = "content/unknown";
        }
        a(str, str, str2);
        if (this.f1763a instanceof ba) {
            ((ba) this.f1763a).a(parcelFileDescriptor.getStatSize());
            iA = 0;
        } else {
            iA = com.facebook.i.as.a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f1763a) + 0;
        }
        b("", new Object[0]);
        a();
        if (this.f1764b != null) {
            this.f1764b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(iA)));
        }
    }

    public void a() throws IOException {
        if (!this.f1766d) {
            b("--%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        } else {
            this.f1763a.write("&".getBytes());
        }
    }

    public void a(String str, String str2, String str3) throws IOException {
        if (!this.f1766d) {
            a("Content-Disposition: form-data; name=\"%s\"", str);
            if (str2 != null) {
                a("; filename=\"%s\"", str2);
            }
            b("", new Object[0]);
            if (str3 != null) {
                b("%s: %s", "Content-Type", str3);
            }
            b("", new Object[0]);
            return;
        }
        this.f1763a.write(String.format("%s=", str).getBytes());
    }

    public void a(String str, Object... objArr) throws IOException {
        if (!this.f1766d) {
            if (this.f1765c) {
                this.f1763a.write("--".getBytes());
                this.f1763a.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
                this.f1763a.write("\r\n".getBytes());
                this.f1765c = false;
            }
            this.f1763a.write(String.format(str, objArr).getBytes());
            return;
        }
        this.f1763a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), "UTF-8").getBytes());
    }

    public void b(String str, Object... objArr) throws IOException {
        a(str, objArr);
        if (!this.f1766d) {
            a("\r\n", new Object[0]);
        }
    }
}
