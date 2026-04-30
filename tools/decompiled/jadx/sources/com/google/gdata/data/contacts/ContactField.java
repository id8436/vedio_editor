package com.google.gdata.data.contacts;

/* JADX INFO: loaded from: classes3.dex */
public interface ContactField {
    String getLinksto();

    Boolean getReadonly();

    String getSource();

    boolean hasLinksto();

    boolean hasReadonly();

    boolean hasSource();

    boolean isReadonly();

    void setLinksto(String str);

    void setReadonly(Boolean bool);

    void setSource(String str);
}
