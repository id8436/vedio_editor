package com.google.api.gbase.client;

import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public class Tax {
    private final String country;
    private final float rate;
    private final Collection<String> regions;
    private final Boolean taxShip;

    public Tax(String str, Collection<String> collection, float f2, Boolean bool) {
        this.country = str;
        if (collection != null) {
            this.regions = ImmutableList.copyOf((Collection) collection);
        } else {
            this.regions = Collections.emptySet();
        }
        this.rate = f2;
        this.taxShip = bool;
    }

    public String toString() {
        return "Tax(country=" + this.country + ", regions=" + this.regions + ", rate=" + this.rate + ", taxShip= " + this.taxShip;
    }

    public float getRate() {
        return this.rate;
    }

    public String getCountry() {
        return this.country;
    }

    public Collection<String> getRegions() {
        return this.regions;
    }

    public Boolean getTaxShip() {
        return this.taxShip;
    }
}
