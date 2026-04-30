package com.google.api.client.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class IOUtils {
    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        copy(inputStream, outputStream, true);
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        try {
            ByteStreams.copy(inputStream, outputStream);
        } finally {
            if (z) {
                inputStream.close();
            }
        }
    }

    public static long computeLength(StreamingContent streamingContent) throws IOException {
        ByteCountingOutputStream byteCountingOutputStream = new ByteCountingOutputStream();
        try {
            streamingContent.writeTo(byteCountingOutputStream);
            byteCountingOutputStream.close();
            return byteCountingOutputStream.count;
        } catch (Throwable th) {
            byteCountingOutputStream.close();
            throw th;
        }
    }

    public static byte[] serialize(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        serialize(obj, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void serialize(Object obj, OutputStream outputStream) throws IOException {
        try {
            new ObjectOutputStream(outputStream).writeObject(obj);
        } finally {
            outputStream.close();
        }
    }

    public static <S extends Serializable> S deserialize(byte[] bArr) throws IOException {
        if (bArr == null) {
            return null;
        }
        return (S) deserialize(new ByteArrayInputStream(bArr));
    }

    public static <S extends Serializable> S deserialize(InputStream inputStream) throws IOException {
        try {
            try {
                return (S) new ObjectInputStream(inputStream).readObject();
            } catch (ClassNotFoundException e2) {
                IOException iOException = new IOException("Failed to deserialize object");
                iOException.initCause(e2);
                throw iOException;
            }
        } finally {
            inputStream.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSymbolicLink(java.io.File r8) throws java.lang.Throwable {
        /*
            r1 = 1
            r2 = 0
            java.lang.String r0 = "java.nio.file.Files"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.String r3 = "java.nio.file.Path"
            java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.Class<java.io.File> r4 = java.io.File.class
            java.lang.String r5 = "toPath"
            r6 = 0
            java.lang.Class[] r6 = new java.lang.Class[r6]     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.reflect.Method r4 = r4.getMethod(r5, r6)     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.Object r4 = r4.invoke(r8, r5)     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.String r5 = "isSymbolicLink"
            r6 = 1
            java.lang.Class[] r6 = new java.lang.Class[r6]     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            r7 = 0
            r6[r7] = r3     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.reflect.Method r0 = r0.getMethod(r5, r6)     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            r3 = 0
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            r6 = 0
            r5[r6] = r4     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.Object r0 = r0.invoke(r3, r5)     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
            boolean r2 = r0.booleanValue()     // Catch: java.lang.reflect.InvocationTargetException -> L42 java.lang.NoSuchMethodException -> L52 java.lang.IllegalAccessException -> L84 java.lang.SecurityException -> L86 java.lang.IllegalArgumentException -> L88 java.lang.ClassNotFoundException -> L8a
        L41:
            return r2
        L42:
            r0 = move-exception
            java.lang.Throwable r0 = r0.getCause()
            java.lang.Class<java.io.IOException> r1 = java.io.IOException.class
            com.google.api.client.util.Throwables.propagateIfPossible(r0, r1)
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            r1.<init>(r0)
            throw r1
        L52:
            r0 = move-exception
        L53:
            char r0 = java.io.File.separatorChar
            r3 = 92
            if (r0 == r3) goto L41
            java.lang.String r0 = r8.getParent()
            if (r0 == 0) goto L71
            java.io.File r0 = new java.io.File
            java.io.File r3 = r8.getParentFile()
            java.io.File r3 = r3.getCanonicalFile()
            java.lang.String r4 = r8.getName()
            r0.<init>(r3, r4)
            r8 = r0
        L71:
            java.io.File r0 = r8.getCanonicalFile()
            java.io.File r3 = r8.getAbsoluteFile()
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L82
            r0 = r1
        L80:
            r2 = r0
            goto L41
        L82:
            r0 = r2
            goto L80
        L84:
            r0 = move-exception
            goto L53
        L86:
            r0 = move-exception
            goto L53
        L88:
            r0 = move-exception
            goto L53
        L8a:
            r0 = move-exception
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.util.IOUtils.isSymbolicLink(java.io.File):boolean");
    }
}
