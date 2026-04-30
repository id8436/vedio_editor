package com.google.gdata.client.blogger;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.Query;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class BlogPostQuery extends Query {
    private OrderBy orderBy;

    public enum OrderBy {
        EDITED("edited"),
        PUBLISHED(BehanceSDKPublishConstants.KEY_PUBLISHED),
        UPDATED(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED);

        private final String value;

        OrderBy(String str) {
            this.value = str;
        }

        public String toValue() {
            return this.value;
        }
    }

    public BlogPostQuery(URL url) {
        super(url);
        this.orderBy = OrderBy.PUBLISHED;
    }

    public OrderBy getOrderBy() {
        return this.orderBy;
    }

    public void setOrderBy(OrderBy orderBy) {
        if (orderBy == null) {
            orderBy = OrderBy.PUBLISHED;
        }
        if (!this.orderBy.equals(orderBy)) {
            this.orderBy = orderBy;
            setStringCustomParameter("orderby", orderBy == OrderBy.PUBLISHED ? null : orderBy.toValue());
        }
    }
}
