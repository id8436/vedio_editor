package com.adobe.sync.database;

/* JADX INFO: loaded from: classes2.dex */
public class PreferenceCompositeLoader extends CompositeLoader {
    private static PreferenceCompositeLoader instance = null;

    PreferenceCompositeLoader() {
    }

    public static PreferenceCompositeLoader getInstance() {
        if (instance == null) {
            instance = new PreferenceCompositeLoader();
        }
        return instance;
    }
}
