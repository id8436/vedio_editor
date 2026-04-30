package com.facebook.e;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: FirstAvailableDataSourceSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class j<T> implements com.facebook.d.d.m<f<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.facebook.d.d.m<f<T>>> f2220a;

    private j(List<com.facebook.d.d.m<f<T>>> list) {
        com.facebook.d.d.k.a(!list.isEmpty(), "List of suppliers is empty!");
        this.f2220a = list;
    }

    public static <T> j<T> a(List<com.facebook.d.d.m<f<T>>> list) {
        return new j<>(list);
    }

    @Override // com.facebook.d.d.m
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f<T> b() {
        return new l(this);
    }

    public int hashCode() {
        return this.f2220a.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        return com.facebook.d.d.g.a(this.f2220a, ((j) obj).f2220a);
    }

    public String toString() {
        return com.facebook.d.d.g.a(this).a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_LIST, this.f2220a).toString();
    }
}
