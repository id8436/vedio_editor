package com.adobe.creativesdk.foundation.internal.comments.models;

import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetCommentsDataSource {
    private ArrayList<AdobeAssetCommentData> comments = new ArrayList<>();

    private AdobeAssetCommentsDataSource() {
    }

    public static AdobeAssetCommentsDataSource commentsFromJSONData(JSONArray jSONArray, AdobeAsset adobeAsset) {
        AdobeAssetCommentsDataSource adobeAssetCommentsDataSource = new AdobeAssetCommentsDataSource();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(AppsForYourDomainQuery.USERNAME);
                String string2 = jSONObject.getString("url");
                adobeAssetCommentsDataSource.comments.add(new AdobeAssetCommentData(string, jSONObject.getString("content") != null ? jSONObject.getString("content").replace(IOUtils.LINE_SEPARATOR_UNIX, "<br/>") : null, jSONObject.getLong("created"), jSONObject.getString("avatar"), string2, adobeAsset.getHref().toString()));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return adobeAssetCommentsDataSource;
    }

    public List<AdobeAssetCommentData> getComments() {
        return this.comments;
    }
}
