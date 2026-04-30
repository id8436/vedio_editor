package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import java.util.ArrayList;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommunityCategory {
    static final String CATEGORIES = "categories";
    static final String EMBEDDED = "_embedded";
    static final String ID = "id";
    static final String NAME = "name";
    static final String SUB_CATEGORIES = "sub_categories";
    String _category_id;
    String _category_name;
    ArrayList<AdobeCommunityCategory> _subCategories;

    AdobeCommunityCategory(JSONObject jSONObject) {
        this._category_id = null;
        this._category_name = null;
        try {
            this._category_id = jSONObject.getString("id");
            this._category_name = jSONObject.getString("name");
            JSONArray jSONArray = jSONObject.getJSONArray("sub_categories");
            for (int i = 0; i < jSONArray.length(); i++) {
                this._subCategories.add(new AdobeCommunityCategory(jSONArray.getJSONObject(i)));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    static ArrayList<AdobeCommunity> parseResponse(String str) {
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONObject("_embedded").getJSONArray("categories");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(new AdobeCommunityCategory(jSONArray.getJSONObject(i)));
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    static Future getCategoriesForCommunityID(String str, IAdobeGenericCompletionCallback<ArrayList<AdobeCommunityCategory>> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<String> iAdobeGenericErrorCallback) {
        return null;
    }

    ArrayList<AdobeCommunityCategory> getSubCategories() {
        return this._subCategories;
    }
}
