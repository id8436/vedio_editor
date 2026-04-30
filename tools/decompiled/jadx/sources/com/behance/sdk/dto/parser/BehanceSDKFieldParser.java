package com.behance.sdk.dto.parser;

import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKFieldParser {
    public static List<BehanceSDKCreativeFieldDTO> parseFields(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO = new BehanceSDKCreativeFieldDTO();
            behanceSDKCreativeFieldDTO.setId(jSONObjectOptJSONObject.optString("id"));
            behanceSDKCreativeFieldDTO.setName(jSONObjectOptJSONObject.optString("name"));
            arrayList.add(behanceSDKCreativeFieldDTO);
        }
        return arrayList;
    }
}
