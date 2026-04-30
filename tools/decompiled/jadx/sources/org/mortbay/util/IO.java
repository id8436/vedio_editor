package org.mortbay.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import org.mortbay.log.Log;
import org.mortbay.thread.BoundedThreadPool;

/* JADX INFO: loaded from: classes3.dex */
public class IO extends BoundedThreadPool {
    public static final String CRLF = "\r\n";
    public static final byte[] CRLF_BYTES = {13, 10};
    public static int bufferSize = 16384;
    private static NullOS __nullStream = new NullOS(null);
    private static ClosedIS __closedStream = new ClosedIS(null);
    private static NullWrite __nullWriter = new NullWrite(null);

    /* JADX INFO: renamed from: org.mortbay.util.IO$1, reason: invalid class name */
    class AnonymousClass1 {
    }

    class Singleton {
        static final IO __instance = new IO();

        private Singleton() {
        }

        static {
            try {
                __instance.start();
            } catch (Exception e2) {
                Log.warn(e2);
                System.exit(1);
            }
        }
    }

    public static IO instance() {
        return Singleton.__instance;
    }

    class Job implements Runnable {
        InputStream in;
        OutputStream out;
        Reader read;
        Writer write;

        Job(InputStream inputStream, OutputStream outputStream) {
            this.in = inputStream;
            this.out = outputStream;
            this.read = null;
            this.write = null;
        }

        Job(Reader reader, Writer writer) {
            this.in = null;
            this.out = null;
            this.read = reader;
            this.write = writer;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.in != null) {
                    IO.copy(this.in, this.out, -1L);
                } else {
                    IO.copy(this.read, this.write, -1L);
                }
            } catch (IOException e2) {
                Log.ignore(e2);
                try {
                    if (this.out != null) {
                        this.out.close();
                    }
                    if (this.write != null) {
                        this.write.close();
                    }
                } catch (IOException e3) {
                    Log.ignore(e3);
                }
            }
        }
    }

    public static void copyThread(InputStream inputStream, OutputStream outputStream) {
        try {
            Job job = new Job(inputStream, outputStream);
            if (!instance().dispatch(job)) {
                job.run();
            }
        } catch (Exception e2) {
            Log.warn(e2);
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        copy(inputStream, outputStream, -1L);
    }

    public static void copyThread(Reader reader, Writer writer) {
        try {
            Job job = new Job(reader, writer);
            if (!instance().dispatch(job)) {
                job.run();
            }
        } catch (Exception e2) {
            Log.warn(e2);
        }
    }

    public static void copy(Reader reader, Writer writer) throws IOException {
        copy(reader, writer, -1L);
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        int i;
        byte[] bArr = new byte[bufferSize];
        int i2 = bufferSize;
        if (j >= 0) {
            while (j > 0) {
                if (j < bufferSize) {
                    i = inputStream.read(bArr, 0, (int) j);
                } else {
                    i = inputStream.read(bArr, 0, bufferSize);
                }
                if (i != -1) {
                    j -= (long) i;
                    outputStream.write(bArr, 0, i);
                } else {
                    return;
                }
            }
            return;
        }
        while (true) {
            int i3 = inputStream.read(bArr, 0, bufferSize);
            if (i3 >= 0) {
                outputStream.write(bArr, 0, i3);
            } else {
                return;
            }
        }
    }

    public static void copy(Reader reader, Writer writer, long j) throws IOException {
        int i;
        int i2;
        char[] cArr = new char[bufferSize];
        int i3 = bufferSize;
        if (j < 0) {
            if (writer instanceof PrintWriter) {
                PrintWriter printWriter = (PrintWriter) writer;
                while (!printWriter.checkError() && (i = reader.read(cArr, 0, bufferSize)) != -1) {
                    writer.write(cArr, 0, i);
                }
                return;
            }
            while (true) {
                int i4 = reader.read(cArr, 0, bufferSize);
                if (i4 != -1) {
                    writer.write(cArr, 0, i4);
                } else {
                    return;
                }
            }
        } else {
            while (j > 0) {
                if (j < bufferSize) {
                    i2 = reader.read(cArr, 0, (int) j);
                } else {
                    i2 = reader.read(cArr, 0, bufferSize);
                }
                if (i2 != -1) {
                    j -= (long) i2;
                    writer.write(cArr, 0, i2);
                } else {
                    return;
                }
            }
        }
    }

    public static void copy(File file, File file2) throws IOException {
        if (file.isDirectory()) {
            copyDir(file, file2);
        } else {
            copyFile(file, file2);
        }
    }

    public static void copyDir(File file, File file2) throws IOException {
        if (file2.exists()) {
            if (!file2.isDirectory()) {
                throw new IllegalArgumentException(file2.toString());
            }
        } else {
            file2.mkdirs();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                String name = fileArrListFiles[i].getName();
                if (!".".equals(name) && !"..".equals(name)) {
                    copy(fileArrListFiles[i], new File(file2, name));
                }
            }
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        copy(fileInputStream, fileOutputStream);
        fileInputStream.close();
        fileOutputStream.close();
    }

    public static String toString(InputStream inputStream) throws IOException {
        return toString(inputStream, null);
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }

    public static String toString(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(reader, stringWriter);
        return stringWriter.toString();
    }

    public static boolean delete(File file) {
        if (!file.exists()) {
            return false;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i = 0; fileArrListFiles != null && i < fileArrListFiles.length; i++) {
                delete(fileArrListFiles[i]);
            }
        }
        return file.delete();
    }

    public static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.ignore(e2);
            }
        }
    }

    public static byte[] readBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void close(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                Log.ignore(e2);
            }
        }
    }

    public static OutputStream getNullStream() {
        return __nullStream;
    }

    public static InputStream getClosedStream() {
        return __closedStream;
    }

    class NullOS extends OutputStream {
        private NullOS() {
        }

        NullOS(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }
    }

    class ClosedIS extends InputStream {
        private ClosedIS() {
        }

        ClosedIS(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            return -1;
        }
    }

    public static Writer getNullWriter() {
        return __nullWriter;
    }

    class NullWrite extends Writer {
        private NullWrite() {
        }

        NullWrite(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
        }

        @Override // java.io.Writer
        public void write(int i) {
        }

        @Override // java.io.Writer
        public void write(String str) {
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
        }
    }
}
