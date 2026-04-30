package com.behance.sdk.dto.parser;

import android.graphics.Color;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.behance.sdk.dto.BehanceSDKTextSelectionState;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextFont;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextStyle;
import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKTextSelectionStateParser {
    public static BehanceSDKTextSelectionState parseState(String str) throws JSONException {
        BehanceSDKTextSelectionState behanceSDKTextSelectionState = new BehanceSDKTextSelectionState();
        JSONObject jSONObject = new JSONObject(str);
        String strReplace = jSONObject.optString("color").replace("rgb(", "").replace(")", "");
        if (strReplace != null) {
            List listAsList = Arrays.asList(strReplace.split("\\s*,\\s*"));
            if (listAsList.size() == 3) {
                behanceSDKTextSelectionState.setColor(Color.rgb(Integer.valueOf((String) listAsList.get(0)).intValue(), Integer.valueOf((String) listAsList.get(1)).intValue(), Integer.valueOf((String) listAsList.get(2)).intValue()));
            }
        }
        behanceSDKTextSelectionState.setBold(jSONObject.optBoolean("bold"));
        behanceSDKTextSelectionState.setItalic(jSONObject.optBoolean("italic"));
        behanceSDKTextSelectionState.setUnderline(jSONObject.optBoolean("underline"));
        behanceSDKTextSelectionState.setUppercased(jSONObject.optBoolean("upper"));
        behanceSDKTextSelectionState.setStyleRemoveable(jSONObject.optBoolean("removeStyle"));
        behanceSDKTextSelectionState.setSizePX(Integer.valueOf(jSONObject.optString(AdobeCommunityConstants.AdobeCommunityResourceSizeKey).replace("px", "")).intValue());
        behanceSDKTextSelectionState.setLink(jSONObject.optBoolean("link"));
        behanceSDKTextSelectionState.setStyle(BehanceSDKProjectEditorTextStyle.fromName(jSONObject.optString(TtmlNode.TAG_STYLE)));
        String strOptString = jSONObject.optString("font");
        if (strOptString.contains(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR)) {
            Iterator it = Arrays.asList(strOptString.split("\\s*,\\s*")).iterator();
            while (it.hasNext()) {
                behanceSDKTextSelectionState.setFont(BehanceSDKProjectEditorTextFont.fromPartialName((String) it.next()));
                if (behanceSDKTextSelectionState.getFont() != null) {
                    break;
                }
            }
        } else {
            behanceSDKTextSelectionState.setFont(BehanceSDKProjectEditorTextFont.fromName(strOptString));
        }
        if (jSONObject.optBoolean(AdobePSDCompositeConstants.AdobePSDCompositeBoundsLeftKey, false)) {
            behanceSDKTextSelectionState.setAlignment(BehanceSDKProjectModuleAlignment.LEFT);
        } else if (jSONObject.optBoolean("center", false)) {
            behanceSDKTextSelectionState.setAlignment(BehanceSDKProjectModuleAlignment.CENTER);
        } else if (jSONObject.optBoolean(AdobePSDCompositeConstants.AdobePSDCompositeBoundsRightKey, false)) {
            behanceSDKTextSelectionState.setAlignment(BehanceSDKProjectModuleAlignment.RIGHT);
        }
        return behanceSDKTextSelectionState;
    }
}
