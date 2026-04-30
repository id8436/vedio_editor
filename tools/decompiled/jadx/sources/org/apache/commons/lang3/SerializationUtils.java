package org.apache.commons.lang3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class SerializationUtils {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T extends java.io.Serializable> T clone(T r5) throws java.lang.Throwable {
        /*
            r0 = 0
            if (r5 != 0) goto L4
        L3:
            return r0
        L4:
            byte[] r1 = serialize(r5)
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream
            r2.<init>(r1)
            org.apache.commons.lang3.SerializationUtils$ClassLoaderAwareObjectInputStream r1 = new org.apache.commons.lang3.SerializationUtils$ClassLoaderAwareObjectInputStream     // Catch: java.lang.ClassNotFoundException -> L30 java.io.IOException -> L44 java.lang.Throwable -> L5b
            java.lang.Class r3 = r5.getClass()     // Catch: java.lang.ClassNotFoundException -> L30 java.io.IOException -> L44 java.lang.Throwable -> L5b
            java.lang.ClassLoader r3 = r3.getClassLoader()     // Catch: java.lang.ClassNotFoundException -> L30 java.io.IOException -> L44 java.lang.Throwable -> L5b
            r1.<init>(r2, r3)     // Catch: java.lang.ClassNotFoundException -> L30 java.io.IOException -> L44 java.lang.Throwable -> L5b
            java.lang.Object r0 = r1.readObject()     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L60 java.lang.ClassNotFoundException -> L62
            java.io.Serializable r0 = (java.io.Serializable) r0     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L60 java.lang.ClassNotFoundException -> L62
            if (r1 == 0) goto L3
            r1.close()     // Catch: java.io.IOException -> L26
            goto L3
        L26:
            r0 = move-exception
            org.apache.commons.lang3.SerializationException r1 = new org.apache.commons.lang3.SerializationException
            java.lang.String r2 = "IOException on closing cloned object data InputStream."
            r1.<init>(r2, r0)
            throw r1
        L30:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L34:
            org.apache.commons.lang3.SerializationException r2 = new org.apache.commons.lang3.SerializationException     // Catch: java.lang.Throwable -> L3d
            java.lang.String r3 = "ClassNotFoundException while reading cloned object data"
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L3d
            throw r2     // Catch: java.lang.Throwable -> L3d
        L3d:
            r0 = move-exception
        L3e:
            if (r1 == 0) goto L43
            r1.close()     // Catch: java.io.IOException -> L51
        L43:
            throw r0
        L44:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L48:
            org.apache.commons.lang3.SerializationException r2 = new org.apache.commons.lang3.SerializationException     // Catch: java.lang.Throwable -> L3d
            java.lang.String r3 = "IOException while reading cloned object data"
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L3d
            throw r2     // Catch: java.lang.Throwable -> L3d
        L51:
            r0 = move-exception
            org.apache.commons.lang3.SerializationException r1 = new org.apache.commons.lang3.SerializationException
            java.lang.String r2 = "IOException on closing cloned object data InputStream."
            r1.<init>(r2, r0)
            throw r1
        L5b:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L3e
        L60:
            r0 = move-exception
            goto L48
        L62:
            r0 = move-exception
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.SerializationUtils.clone(java.io.Serializable):java.io.Serializable");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0025 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void serialize(java.io.Serializable r3, java.io.OutputStream r4) throws java.lang.Throwable {
        /*
            if (r4 != 0) goto Lb
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "The OutputStream must not be null"
            r0.<init>(r1)
            throw r0
        Lb:
            r2 = 0
            java.io.ObjectOutputStream r1 = new java.io.ObjectOutputStream     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L2d
            r1.<init>(r4)     // Catch: java.io.IOException -> L1a java.lang.Throwable -> L2d
            r1.writeObject(r3)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L30
            if (r1 == 0) goto L19
            r1.close()     // Catch: java.io.IOException -> L29
        L19:
            return
        L1a:
            r0 = move-exception
            r1 = r2
        L1c:
            org.apache.commons.lang3.SerializationException r2 = new org.apache.commons.lang3.SerializationException     // Catch: java.lang.Throwable -> L22
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L22
            throw r2     // Catch: java.lang.Throwable -> L22
        L22:
            r0 = move-exception
        L23:
            if (r1 == 0) goto L28
            r1.close()     // Catch: java.io.IOException -> L2b
        L28:
            throw r0
        L29:
            r0 = move-exception
            goto L19
        L2b:
            r1 = move-exception
            goto L28
        L2d:
            r0 = move-exception
            r1 = r2
            goto L23
        L30:
            r0 = move-exception
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.SerializationUtils.serialize(java.io.Serializable, java.io.OutputStream):void");
    }

    public static byte[] serialize(Serializable serializable) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        serialize(serializable, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0024: MOVE (r2 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:16:0x0024 */
    public static Object deserialize(InputStream inputStream) throws Throwable {
        ObjectInputStream objectInputStream;
        if (inputStream == null) {
            throw new IllegalArgumentException("The InputStream must not be null");
        }
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                try {
                    ObjectInputStream objectInputStream3 = new ObjectInputStream(inputStream);
                    try {
                        Object object = objectInputStream3.readObject();
                        if (objectInputStream3 != null) {
                            try {
                                objectInputStream3.close();
                            } catch (IOException e2) {
                            }
                        }
                        return object;
                    } catch (IOException e3) {
                        e = e3;
                        throw new SerializationException(e);
                    } catch (ClassNotFoundException e4) {
                        e = e4;
                        throw new SerializationException(e);
                    }
                } catch (Throwable th) {
                    th = th;
                    if (objectInputStream2 != null) {
                        try {
                            objectInputStream2.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
            } catch (ClassNotFoundException e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
        }
    }

    public static Object deserialize(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("The byte[] must not be null");
        }
        return deserialize(new ByteArrayInputStream(bArr));
    }

    class ClassLoaderAwareObjectInputStream extends ObjectInputStream {
        private ClassLoader classLoader;

        public ClassLoaderAwareObjectInputStream(InputStream inputStream, ClassLoader classLoader) throws IOException {
            super(inputStream);
            this.classLoader = classLoader;
        }

        @Override // java.io.ObjectInputStream
        protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            String name = objectStreamClass.getName();
            try {
                return Class.forName(name, false, this.classLoader);
            } catch (ClassNotFoundException e2) {
                return Class.forName(name, false, Thread.currentThread().getContextClassLoader());
            }
        }
    }
}
