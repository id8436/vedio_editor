package c.a.a.a.a.c;

import java.util.Collection;

/* JADX INFO: compiled from: Dependency.java */
/* JADX INFO: loaded from: classes.dex */
public interface l<T> {
    void addDependency(T t);

    boolean areDependenciesMet();

    Collection<T> getDependencies();
}
