package com.dropbox.core.json;

import com.d.a.a.d;
import com.d.a.a.i;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JsonReader<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final JsonReader<byte[]> BinaryReader;
    public static final JsonReader<Boolean> BooleanReader;
    public static final JsonReader<Float> Float32Reader;
    public static final JsonReader<Double> Float64Reader;
    public static final JsonReader<Integer> Int32Reader;
    public static final JsonReader<Long> Int64Reader;
    public static final JsonReader<String> StringReader;
    public static final JsonReader<Long> UInt32Reader;
    public static final JsonReader<Long> UInt64Reader;
    public static final JsonReader<Long> UnsignedLongReader;
    public static final JsonReader<Object> VoidReader;
    static final d jsonFactory;

    public abstract T read(k kVar) throws JsonReadException, IOException;

    static {
        $assertionsDisabled = !JsonReader.class.desiredAssertionStatus();
        UnsignedLongReader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Long read(k kVar) throws JsonReadException, IOException {
                return Long.valueOf(readUnsignedLong(kVar));
            }
        };
        Int64Reader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Long read(k kVar) throws JsonReadException, IOException {
                long jN = kVar.n();
                kVar.a();
                return Long.valueOf(jN);
            }
        };
        Int32Reader = new JsonReader<Integer>() { // from class: com.dropbox.core.json.JsonReader.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Integer read(k kVar) throws JsonReadException, IOException {
                int iM = kVar.m();
                kVar.a();
                return Integer.valueOf(iM);
            }
        };
        UInt64Reader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Long read(k kVar) throws JsonReadException, IOException {
                return Long.valueOf(readUnsignedLong(kVar));
            }
        };
        UInt32Reader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Long read(k kVar) throws JsonReadException, IOException {
                long unsignedLong = readUnsignedLong(kVar);
                if (unsignedLong >= 4294967296L) {
                    throw new JsonReadException("expecting a 32-bit unsigned integer, got: " + unsignedLong, kVar.e());
                }
                return Long.valueOf(unsignedLong);
            }
        };
        Float64Reader = new JsonReader<Double>() { // from class: com.dropbox.core.json.JsonReader.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Double read(k kVar) throws JsonReadException, IOException {
                double dQ = kVar.q();
                kVar.a();
                return Double.valueOf(dQ);
            }
        };
        Float32Reader = new JsonReader<Float>() { // from class: com.dropbox.core.json.JsonReader.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Float read(k kVar) throws JsonReadException, IOException {
                float fP = kVar.p();
                kVar.a();
                return Float.valueOf(fP);
            }
        };
        StringReader = new JsonReader<String>() { // from class: com.dropbox.core.json.JsonReader.8
            @Override // com.dropbox.core.json.JsonReader
            public String read(k kVar) throws JsonReadException, IOException {
                try {
                    String strG = kVar.g();
                    kVar.a();
                    return strG;
                } catch (j e2) {
                    throw JsonReadException.fromJackson(e2);
                }
            }
        };
        BinaryReader = new JsonReader<byte[]>() { // from class: com.dropbox.core.json.JsonReader.9
            @Override // com.dropbox.core.json.JsonReader
            public byte[] read(k kVar) throws JsonReadException, IOException {
                try {
                    byte[] bArrT = kVar.t();
                    kVar.a();
                    return bArrT;
                } catch (j e2) {
                    throw JsonReadException.fromJackson(e2);
                }
            }
        };
        BooleanReader = new JsonReader<Boolean>() { // from class: com.dropbox.core.json.JsonReader.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.dropbox.core.json.JsonReader
            public Boolean read(k kVar) throws JsonReadException, IOException {
                return Boolean.valueOf(readBoolean(kVar));
            }
        };
        VoidReader = new JsonReader<Object>() { // from class: com.dropbox.core.json.JsonReader.11
            @Override // com.dropbox.core.json.JsonReader
            public Object read(k kVar) throws JsonReadException, IOException {
                skipValue(kVar);
                return null;
            }
        };
        jsonFactory = new d();
    }

    public T readFromTags(String[] strArr, k kVar) throws JsonReadException, IOException {
        return null;
    }

    public T readFields(k kVar) throws JsonReadException, IOException {
        return null;
    }

    public void validate(T t) {
    }

    public final T readField(k kVar, String str, T t) throws JsonReadException, IOException {
        if (t != null) {
            throw new JsonReadException("duplicate field \"" + str + "\"", kVar.e());
        }
        return read(kVar);
    }

    public final T readOptional(k kVar) throws JsonReadException, IOException {
        if (kVar.c() != o.VALUE_NULL) {
            return read(kVar);
        }
        kVar.a();
        return null;
    }

    public static String[] readTags(k kVar) throws JsonReadException, IOException {
        if (kVar.c() != o.FIELD_NAME || !".tag".equals(kVar.d())) {
            return null;
        }
        kVar.a();
        if (kVar.c() != o.VALUE_STRING) {
            throw new JsonReadException("expected a string value for .tag field", kVar.e());
        }
        String strG = kVar.g();
        kVar.a();
        return strG.split("\\.");
    }

    public static o nextToken(k kVar) throws JsonReadException, IOException {
        try {
            return kVar.a();
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        }
    }

    public static i expectObjectStart(k kVar) throws JsonReadException, IOException {
        if (kVar.c() != o.START_OBJECT) {
            throw new JsonReadException("expecting the start of an object (\"{\")", kVar.e());
        }
        i iVarE = kVar.e();
        nextToken(kVar);
        return iVarE;
    }

    public static void expectObjectEnd(k kVar) throws JsonReadException, IOException {
        if (kVar.c() != o.END_OBJECT) {
            throw new JsonReadException("expecting the end of an object (\"}\")", kVar.e());
        }
        nextToken(kVar);
    }

    public static i expectArrayStart(k kVar) throws JsonReadException, IOException {
        if (kVar.c() != o.START_ARRAY) {
            throw new JsonReadException("expecting the start of an array (\"[\")", kVar.e());
        }
        i iVarE = kVar.e();
        nextToken(kVar);
        return iVarE;
    }

    public static i expectArrayEnd(k kVar) throws JsonReadException, IOException {
        if (kVar.c() != o.END_ARRAY) {
            throw new JsonReadException("expecting the end of an array (\"[\")", kVar.e());
        }
        i iVarE = kVar.e();
        nextToken(kVar);
        return iVarE;
    }

    public static boolean isArrayEnd(k kVar) {
        return kVar.c() == o.END_ARRAY;
    }

    public static boolean isArrayStart(k kVar) {
        return kVar.c() == o.START_ARRAY;
    }

    public static void skipValue(k kVar) throws JsonReadException, IOException {
        try {
            kVar.b();
            kVar.a();
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        }
    }

    public static long readUnsignedLong(k kVar) throws JsonReadException, IOException {
        try {
            long jN = kVar.n();
            if (jN < 0) {
                throw new JsonReadException("expecting a non-negative number, got: " + jN, kVar.e());
            }
            kVar.a();
            return jN;
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        }
    }

    public static long readUnsignedLongField(k kVar, String str, long j) throws JsonReadException, IOException {
        if (j >= 0) {
            throw new JsonReadException("duplicate field \"" + str + "\"", kVar.f());
        }
        return readUnsignedLong(kVar);
    }

    public static boolean readBoolean(k kVar) throws JsonReadException, IOException {
        try {
            boolean zS = kVar.s();
            kVar.a();
            return zS;
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        }
    }

    public static double readDouble(k kVar) throws JsonReadException, IOException {
        try {
            double dQ = kVar.q();
            kVar.a();
            return dQ;
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        }
    }

    public static <T> T readEnum(k kVar, HashMap<String, T> map, T t) throws JsonReadException, IOException {
        String strG;
        if (kVar.c() == o.START_OBJECT) {
            kVar.a();
            String[] tags = readTags(kVar);
            if (tags != null && kVar.c() == o.END_OBJECT) {
                if (!$assertionsDisabled && (tags.length != 1 || tags[0] == null)) {
                    throw new AssertionError();
                }
                strG = tags[0];
            } else if (kVar.c() == o.FIELD_NAME) {
                strG = kVar.g();
                if (!$assertionsDisabled && tags != null && !tags[0].equals(strG)) {
                    throw new AssertionError();
                }
                kVar.a();
                skipValue(kVar);
            } else {
                throw new JsonReadException("expecting a field name", kVar.e());
            }
            T t2 = map.get(strG);
            if (t2 == null) {
                t2 = t;
            }
            if (t2 == null) {
                throw new JsonReadException("Expected one of " + map + ", got: " + strG, kVar.e());
            }
            expectObjectEnd(kVar);
            return t2;
        }
        if (kVar.c() != o.VALUE_STRING) {
            throw new JsonReadException("Expected a string value", kVar.e());
        }
        String strG2 = kVar.g();
        T t3 = map.get(strG2);
        if (t3 == null) {
            t3 = t;
        }
        if (t3 == null) {
            throw new JsonReadException("Expected one of " + map + ", got: " + strG2, kVar.e());
        }
        kVar.a();
        return t3;
    }

    public final class FieldMapping {
        static final /* synthetic */ boolean $assertionsDisabled;
        public final HashMap<String, Integer> fields;

        static {
            $assertionsDisabled = !JsonReader.class.desiredAssertionStatus();
        }

        private FieldMapping(HashMap<String, Integer> map) {
            if (!$assertionsDisabled && map == null) {
                throw new AssertionError();
            }
            this.fields = map;
        }

        public int get(String str) {
            Integer num = this.fields.get(str);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        public final class Builder {
            private HashMap<String, Integer> fields = new HashMap<>();

            public void add(String str, int i) {
                if (this.fields == null) {
                    throw new IllegalStateException("already called build(); can't call add() anymore");
                }
                int size = this.fields.size();
                if (i != size) {
                    throw new IllegalStateException("expectedIndex = " + i + ", actual = " + size);
                }
                if (this.fields.put(str, Integer.valueOf(size)) != null) {
                    throw new IllegalStateException("duplicate field name: \"" + str + "\"");
                }
            }

            public FieldMapping build() {
                if (this.fields == null) {
                    throw new IllegalStateException("already called build(); can't call build() again");
                }
                HashMap<String, Integer> map = this.fields;
                this.fields = null;
                return new FieldMapping(map);
            }
        }
    }

    public T readFully(InputStream inputStream) throws JsonReadException, IOException {
        try {
            return readFully(jsonFactory.a(inputStream));
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        }
    }

    public T readFully(String str) throws JsonReadException {
        try {
            k kVarA = jsonFactory.a(str);
            try {
                return readFully(kVarA);
            } finally {
                kVarA.close();
            }
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        } catch (IOException e3) {
            throw LangUtil.mkAssert("IOException reading from String", e3);
        }
    }

    public T readFully(byte[] bArr) throws JsonReadException {
        try {
            k kVarA = jsonFactory.a(bArr);
            try {
                return readFully(kVarA);
            } finally {
                kVarA.close();
            }
        } catch (j e2) {
            throw JsonReadException.fromJackson(e2);
        } catch (IOException e3) {
            throw LangUtil.mkAssert("IOException reading from byte[]", e3);
        }
    }

    public T readFromFile(String str) throws FileLoadException {
        return readFromFile(new File(str));
    }

    public T readFromFile(File file) throws FileLoadException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return readFully(fileInputStream);
            } finally {
                IOUtil.closeInput(fileInputStream);
            }
        } catch (JsonReadException e2) {
            throw new FileLoadException.JsonError(file, e2);
        } catch (IOException e3) {
            throw new FileLoadException.IOError(file, e3);
        }
    }

    public abstract class FileLoadException extends Exception {
        private static final long serialVersionUID = 0;

        protected FileLoadException(String str) {
            super(str);
        }

        public final class IOError extends FileLoadException {
            private static final long serialVersionUID = 0;
            public final IOException reason;

            public IOError(File file, IOException iOException) {
                super("unable to read file \"" + file.getPath() + "\": " + iOException.getMessage());
                this.reason = iOException;
            }
        }

        public final class JsonError extends FileLoadException {
            private static final long serialVersionUID = 0;
            public final JsonReadException reason;

            public JsonError(File file, JsonReadException jsonReadException) {
                super(file.getPath() + ": " + jsonReadException.getMessage());
                this.reason = jsonReadException;
            }
        }
    }

    public T readFully(k kVar) throws JsonReadException, IOException {
        kVar.a();
        T t = read(kVar);
        if (kVar.c() != null) {
            throw new AssertionError("The JSON library should ensure there's no tokens after the main value: " + kVar.c() + "@" + kVar.f());
        }
        validate(t);
        return t;
    }
}
