package com.behance.sdk.dto.parser;

import com.behance.sdk.dto.BehanceSDKTagDTO;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTagParser {
    public static List<BehanceSDKTagDTO> parse(JSONObject jSONObject) {
        return parse(jSONObject.optJSONArray("tags"));
    }

    public static List<BehanceSDKTagDTO> parse(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            BehanceSDKTagDTO behanceSDKTagDTO = new BehanceSDKTagDTO();
            behanceSDKTagDTO.setId(jSONObjectOptJSONObject.optLong("id"));
            behanceSDKTagDTO.setTitle(jSONObjectOptJSONObject.optString("title"));
            behanceSDKTagDTO.setCategory(jSONObjectOptJSONObject.optString("category"));
            behanceSDKTagDTO.setCategoryLabel(jSONObjectOptJSONObject.optString("category_label"));
            behanceSDKTagDTO.setCategoryId(jSONObjectOptJSONObject.optInt("category_id"));
            behanceSDKTagDTO.setUrl(jSONObjectOptJSONObject.optString("url"));
            behanceSDKTagDTO.setApproved(jSONObjectOptJSONObject.optString("approved").equals("1"));
            arrayList.add(behanceSDKTagDTO);
        }
        return arrayList;
    }
}
