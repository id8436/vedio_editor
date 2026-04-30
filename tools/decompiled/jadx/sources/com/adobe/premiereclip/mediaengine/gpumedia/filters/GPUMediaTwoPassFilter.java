package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaTwoPassFilter extends GPUMediaFilterGroup {
    public GPUMediaTwoPassFilter(String str, String str2, String str3, String str4) {
        super(null);
        addFilter(new GPUMediaFilter(str, str2));
        addFilter(new GPUMediaFilter(str3, str4));
    }
}
