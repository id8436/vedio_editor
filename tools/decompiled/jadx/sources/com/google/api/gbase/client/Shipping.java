package com.google.api.gbase.client;

import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public class Shipping {
    private final String country;
    private final String currency;
    private final float price;
    private final Collection<String> regions;
    private final String service;

    public Shipping(String str, String str2, float f2, String str3) {
        this(str, null, str2, f2, str3);
    }

    public Shipping(String str, Collection<String> collection, String str2, float f2, String str3) {
        this.country = str;
        if (collection != null) {
            this.regions = ImmutableList.copyOf((Collection) collection);
        } else {
            this.regions = Collections.emptySet();
        }
        this.price = f2;
        this.service = str2;
        this.currency = str3;
    }

    public String toString() {
        return "Shipping(country=" + this.country + ", regions=" + this.regions + ", service=" + this.service + ", price= " + this.price + ", currency=" + this.currency + ")";
    }

    public float getPrice() {
        return this.price;
    }

    public String getCurrency() {
        return this.currency;
    }

    public String getCountry() {
        return this.country;
    }

    public Collection<String> getRegions() {
        return this.regions;
    }

    public String getService() {
        return this.service;
    }
}
