package a;

/* JADX INFO: compiled from: ExecutorException.java */
/* JADX INFO: loaded from: classes.dex */
public class k extends RuntimeException {
    public k(Exception exc) {
        super("An exception was thrown by an Executor", exc);
    }
}
