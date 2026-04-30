package com.behance.sdk.dto.editor;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKModulePrepareDTO implements Serializable {
    private String data;
    private int id;

    public BehanceSDKModulePrepareDTO(int i, String str) {
        this.id = i;
        this.data = str;
    }

    public String getData() {
        return this.data;
    }

    public int getId() {
        return this.id;
    }
}
