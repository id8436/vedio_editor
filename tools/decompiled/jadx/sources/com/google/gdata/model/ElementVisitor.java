package com.google.gdata.model;

/* JADX INFO: loaded from: classes3.dex */
public interface ElementVisitor {
    boolean visit(Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws StoppedException;

    void visitComplete(Element element, Element element2, ElementMetadata<?, ?> elementMetadata) throws StoppedException;

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
