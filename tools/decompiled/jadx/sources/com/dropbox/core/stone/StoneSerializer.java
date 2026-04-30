package com.dropbox.core.stone;

import com.d.a.a.f;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StoneSerializer<T> {
    private static final Charset UTF8 = Charset.forName("UTF-8");

    public abstract T deserialize(k kVar) throws IOException;

    public abstract void serialize(T t, g gVar) throws IOException;

    public String serialize(T t) {
        return serialize((Object) t, false);
    }

    public String serialize(T t, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            serialize(t, byteArrayOutputStream, z);
            return new String(byteArrayOutputStream.toByteArray(), UTF8);
        } catch (f e2) {
            throw new IllegalStateException("Impossible JSON exception", e2);
        } catch (IOException e3) {
            throw new IllegalStateException("Impossible I/O exception", e3);
        }
    }

    public void serialize(T t, OutputStream outputStream) throws IOException {
        serialize(t, outputStream, false);
    }

    public void serialize(T t, OutputStream outputStream, boolean z) throws IOException {
        g gVarA = Util.JSON.a(outputStream);
        if (z) {
            gVarA.b();
        }
        try {
            serialize(t, gVarA);
            gVarA.flush();
        } catch (f e2) {
            throw new IllegalStateException("Impossible JSON generation exception", e2);
        }
    }

    public T deserialize(String str) throws j {
        try {
            k kVarA = Util.JSON.a(str);
            kVarA.a();
            return deserialize(kVarA);
        } catch (j e2) {
            throw e2;
        } catch (IOException e3) {
            throw new IllegalStateException("Impossible I/O exception", e3);
        }
    }

    public T deserialize(InputStream inputStream) throws IOException {
        k kVarA = Util.JSON.a(inputStream);
        kVarA.a();
        return deserialize(kVarA);
    }

    protected static String getStringValue(k kVar) throws IOException {
        if (kVar.c() != o.VALUE_STRING) {
            throw new j(kVar, "expected string value, but was " + kVar.c());
        }
        return kVar.g();
    }

    protected static void expectField(String str, k kVar) throws IOException {
        if (kVar.c() != o.FIELD_NAME) {
            throw new j(kVar, "expected field name, but was: " + kVar.c());
        }
        if (!str.equals(kVar.d())) {
            throw new j(kVar, "expected field '" + str + "', but was: '" + kVar.d() + "'");
        }
        kVar.a();
    }

    protected static void expectStartObject(k kVar) throws IOException {
        if (kVar.c() != o.START_OBJECT) {
            throw new j(kVar, "expected object value.");
        }
        kVar.a();
    }

    protected static void expectEndObject(k kVar) throws IOException {
        if (kVar.c() != o.END_OBJECT) {
            throw new j(kVar, "expected end of object value.");
        }
        kVar.a();
    }

    protected static void expectStartArray(k kVar) throws IOException {
        if (kVar.c() != o.START_ARRAY) {
            throw new j(kVar, "expected array value.");
        }
        kVar.a();
    }

    protected static void expectEndArray(k kVar) throws IOException {
        if (kVar.c() != o.END_ARRAY) {
            throw new j(kVar, "expected end of array value.");
        }
        kVar.a();
    }

    protected static void skipValue(k kVar) throws IOException {
        if (kVar.c().d()) {
            kVar.b();
            kVar.a();
        } else {
            if (kVar.c().f()) {
                kVar.a();
                return;
            }
            throw new j(kVar, "Can't skip JSON value token: " + kVar.c());
        }
    }

    protected static void skipFields(k kVar) throws IOException {
        while (kVar.c() != null && !kVar.c().e()) {
            if (kVar.c().d()) {
                kVar.b();
            } else if (kVar.c() == o.FIELD_NAME) {
                kVar.a();
            } else if (kVar.c().f()) {
                kVar.a();
            } else {
                throw new j(kVar, "Can't skip token: " + kVar.c());
            }
        }
    }
}
