package com.facebook.e;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: IncreasingQualityDataSourceSupplier.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class n<T> implements com.facebook.d.d.m<f<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.facebook.d.d.m<f<T>>> f2226a;

    private n(List<com.facebook.d.d.m<f<T>>> list) {
        com.facebook.d.d.k.a(!list.isEmpty(), "List of suppliers is empty!");
        this.f2226a = list;
    }

    public static <T> n<T> a(List<com.facebook.d.d.m<f<T>>> list) {
        return new n<>(list);
    }

    @Override // com.facebook.d.d.m
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f<T> b() {
        return new o(this);
    }

    public int hashCode() {
        return this.f2226a.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        return com.facebook.d.d.g.a(this.f2226a, ((n) obj).f2226a);
    }

    public String toString() {
        return com.facebook.d.d.g.a(this).a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_VIEW_TYPE_LIST, this.f2226a).toString();
    }
}
