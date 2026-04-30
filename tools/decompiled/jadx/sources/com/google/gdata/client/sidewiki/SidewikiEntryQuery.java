package com.google.gdata.client.sidewiki;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class SidewikiEntryQuery extends Query {
    private SortOrder sortOrder;

    public enum SortOrder {
        PUBLISHED(BehanceSDKPublishConstants.KEY_PUBLISHED),
        QUALITY("quality"),
        UPDATED(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);

        private final String value;

        SortOrder(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public SidewikiEntryQuery(URL url) {
        super(url);
    }

    public SortOrder getSortOrder() {
        return this.sortOrder;
    }

    public void setSortOrder(SortOrder sortOrder) {
        if (this.sortOrder == null) {
            if (sortOrder == null) {
                return;
            }
        } else if (this.sortOrder.equals(sortOrder)) {
            return;
        }
        this.sortOrder = sortOrder;
        setStringCustomParameter("sortorder", sortOrder == null ? null : sortOrder.toValue());
    }
}
