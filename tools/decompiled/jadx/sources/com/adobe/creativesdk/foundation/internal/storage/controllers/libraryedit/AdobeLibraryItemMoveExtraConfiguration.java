package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryItemMoveExtraConfiguration {
    public static final String CREATE_MOVE_BUTTON_ARRAY_KEY = "CREATE_MOVE_BUTTON";
    public static final String SHOULD_SHOW_ONLY_COLLECTIONS_KEY = "SHOULD_SHOW_ONLY_COLLECTIONS";
    private HashMap<String, Object> configuration = new HashMap<>();

    public void setMoveButton(boolean z) {
        this.configuration.put("CREATE_MOVE_BUTTON", Boolean.valueOf(z));
    }

    public boolean getMoveButton() {
        return this.configuration.containsKey("CREATE_MOVE_BUTTON") && ((Boolean) this.configuration.get("CREATE_MOVE_BUTTON")).booleanValue();
    }

    public void setShouldShowOnlyCollections(boolean z) {
        this.configuration.put(SHOULD_SHOW_ONLY_COLLECTIONS_KEY, Boolean.valueOf(z));
    }

    public boolean shouldShowOnlyCollections() {
        return this.configuration.containsKey(SHOULD_SHOW_ONLY_COLLECTIONS_KEY) && ((Boolean) this.configuration.get(SHOULD_SHOW_ONLY_COLLECTIONS_KEY)).booleanValue();
    }
}
