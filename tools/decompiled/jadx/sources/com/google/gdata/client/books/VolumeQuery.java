package com.google.gdata.client.books;

import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class VolumeQuery extends Query {
    private String ebook;
    private MinViewability minViewability;

    public enum MinViewability {
        FULL("full"),
        NONE("none"),
        PARTIAL("partial");

        private final String value;

        MinViewability(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public VolumeQuery(URL url) {
        super(url);
        this.minViewability = MinViewability.NONE;
    }

    public String getEbook() {
        return this.ebook;
    }

    public void setEbook(String str) {
        if (this.ebook == null) {
            if (str == null) {
                return;
            }
        } else if (this.ebook.equals(str)) {
            return;
        }
        this.ebook = str;
        setStringCustomParameter("ebook", str);
    }

    public MinViewability getMinViewability() {
        return this.minViewability;
    }

    public void setMinViewability(MinViewability minViewability) {
        if (minViewability == null) {
            minViewability = MinViewability.NONE;
        }
        if (!this.minViewability.equals(minViewability)) {
            this.minViewability = minViewability;
            setStringCustomParameter("min-viewability", minViewability == MinViewability.NONE ? null : minViewability.toValue());
        }
    }
}
