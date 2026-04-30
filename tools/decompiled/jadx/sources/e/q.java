package e;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* JADX INFO: compiled from: Okio.java */
/* JADX INFO: loaded from: classes3.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f4738a = Logger.getLogger(q.class.getName());

    private q() {
    }

    public static j a(ab abVar) {
        return new v(abVar);
    }

    public static i a(aa aaVar) {
        return new u(aaVar);
    }

    public static aa a(OutputStream outputStream) {
        return a(outputStream, new ac());
    }

    private static aa a(OutputStream outputStream, ac acVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (acVar == null) {
            throw new IllegalArgumentException("timeout == null");
        }
        return new r(acVar, outputStream);
    }

    public static aa a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        a aVarC = c(socket);
        return aVarC.a(a(socket.getOutputStream(), aVarC));
    }

    public static ab a(InputStream inputStream) {
        return a(inputStream, new ac());
    }

    private static ab a(InputStream inputStream, ac acVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (acVar == null) {
            throw new IllegalArgumentException("timeout == null");
        }
        return new s(acVar, inputStream);
    }

    public static ab a(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return a(new FileInputStream(file));
    }

    public static aa b(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException("file == null");
        }
        return a(new FileOutputStream(file));
    }

    public static ab b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        a aVarC = c(socket);
        return aVarC.a(a(socket.getInputStream(), aVarC));
    }

    private static a c(Socket socket) {
        return new t(socket);
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
