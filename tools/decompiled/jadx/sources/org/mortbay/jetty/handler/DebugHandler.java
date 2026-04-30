package org.mortbay.jetty.handler;

import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Locale;
import org.mortbay.util.DateCache;
import org.mortbay.util.RolloverFileOutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class DebugHandler extends HandlerWrapper {
    private DateCache _date = new DateCache("HH:mm:ss", Locale.US);
    private OutputStream _out;
    private PrintStream _print;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0214  */
    /* JADX WARN: Type inference failed for: r14v0, types: [javax.servlet.http.HttpServletRequest] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.StringBuffer] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v42 */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r13, javax.servlet.http.HttpServletRequest r14, javax.servlet.http.HttpServletResponse r15, int r16) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.DebugHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStart() throws Exception {
        if (this._out == null) {
            this._out = new RolloverFileOutputStream("./logs/yyyy_mm_dd.debug.log", true);
        }
        this._print = new PrintStream(this._out);
        super.doStart();
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    protected void doStop() throws Exception {
        super.doStop();
        this._print.close();
    }

    public OutputStream getOutputStream() {
        return this._out;
    }

    public void setOutputStream(OutputStream outputStream) {
        this._out = outputStream;
    }
}
