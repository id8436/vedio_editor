package com.google.gdata.data.media.mediarss;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
public class MediaAttributeHelper {
    public static NormalPlayTime consumeNormalPlayTime(AttributeHelper attributeHelper, String str) throws ParseException {
        String strConsume = attributeHelper.consume(str, false);
        if (strConsume == null) {
            return null;
        }
        try {
            return NormalPlayTime.parse(strConsume);
        } catch (java.text.ParseException e2) {
            throw new ParseException(CoreErrorDomain.ERR.invalidTimeOffset.withInternalReason("Invalid time offset value for attribute '" + str + "'"), e2);
        }
    }
}
