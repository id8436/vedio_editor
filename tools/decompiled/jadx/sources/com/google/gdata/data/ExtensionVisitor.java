package com.google.gdata.data;

/* JADX INFO: loaded from: classes3.dex */
public interface ExtensionVisitor {
    boolean visit(ExtensionPoint extensionPoint, Extension extension) throws StoppedException;

    void visitComplete(ExtensionPoint extensionPoint) throws StoppedException;

    public class StoppedException extends RuntimeException {
        public StoppedException(String str, Throwable th) {
            super(str, th);
        }

        public StoppedException(String str) {
            super(str);
        }

        public StoppedException(Throwable th) {
            super(th);
        }
    }
}
