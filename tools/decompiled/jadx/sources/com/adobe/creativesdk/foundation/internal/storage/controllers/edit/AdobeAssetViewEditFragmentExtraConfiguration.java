package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetViewEditFragmentExtraConfiguration {
    public static final String CREATE_MOVE_BUTTON_ARRAY_KEY = "CREATE_MOVE_BUTTON";
    public static final String EDIT_MULTI_SELECT_TARGET_HREF_KEY = "EDIT_MULTI_SELECT_TARGET_HREF";
    public static final String FRAGMENT_IS_FOR_COPY = "FRAGMENT_IS_FOR_COPY";
    public static final String SHOULD_SHOW_CREATE_NEW_FOLDER_KEY = "SHOULD_SHOW_CREATE_NEW_FOLDER";
    public static final String SHOULD_SHOW_ONLY_FOLDERS_KEY = "SHOULD_SHOW_ONLY_FOLDERS";
    public static final String TITLE_FOR_MAIN_VIEW_KEY = "TITLE_FOR_MAIN_VIEW";
    private HashMap<String, Object> _configuration = new HashMap<>();

    public void setMoveButton(boolean z) {
        this._configuration.put("CREATE_MOVE_BUTTON", Boolean.valueOf(z));
    }

    public boolean getMoveButton() {
        return this._configuration.containsKey("CREATE_MOVE_BUTTON") && ((Boolean) this._configuration.get("CREATE_MOVE_BUTTON")).booleanValue();
    }

    public void setIsCopy(boolean z) {
        this._configuration.put(FRAGMENT_IS_FOR_COPY, Boolean.valueOf(z));
    }

    public boolean getIsCopy() {
        return this._configuration.containsKey(FRAGMENT_IS_FOR_COPY) && ((Boolean) this._configuration.get(FRAGMENT_IS_FOR_COPY)).booleanValue();
    }

    public void setShouldShowOnlyFolders(boolean z) {
        this._configuration.put(SHOULD_SHOW_ONLY_FOLDERS_KEY, Boolean.valueOf(z));
    }

    public boolean shouldShowOnlyFolders() {
        return this._configuration.containsKey(SHOULD_SHOW_ONLY_FOLDERS_KEY) && ((Boolean) this._configuration.get(SHOULD_SHOW_ONLY_FOLDERS_KEY)).booleanValue();
    }

    public void setTitleForMainView(String str) {
        this._configuration.put(TITLE_FOR_MAIN_VIEW_KEY, str);
    }

    public String getTitleForMainView() {
        return (String) this._configuration.get(TITLE_FOR_MAIN_VIEW_KEY);
    }

    public boolean shouldShowCreateNewFolder() {
        return this._configuration.containsKey(SHOULD_SHOW_CREATE_NEW_FOLDER_KEY) && ((Boolean) this._configuration.get(SHOULD_SHOW_CREATE_NEW_FOLDER_KEY)).booleanValue();
    }

    public void setShouldShowCreateNewFolder(boolean z) {
        this._configuration.put(SHOULD_SHOW_CREATE_NEW_FOLDER_KEY, Boolean.valueOf(z));
    }
}
