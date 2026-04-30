package com.google.gdata.data.projecthosting;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.Link;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = IssuesLink.XML_NAME, nsAlias = "atom", nsUri = Namespaces.atom)
public class IssuesLink extends Link {
    private static final String COUNT = "thr:count";
    private static final String UPDATED = "thr:updated";
    static final String XML_NAME = "link";
    private Integer count = null;
    private DateTime updated = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String REPLIES = "replies";
    }

    public IssuesLink() {
    }

    public IssuesLink(Integer num, String str, Long l, Rel rel, String str2, String str3, DateTime dateTime) {
        setCount(num);
        setUpdated(dateTime);
        setImmutable(true);
    }

    public Integer getCount() {
        return this.count;
    }

    public void setCount(Integer num) {
        throwExceptionIfImmutable();
        this.count = num;
    }

    public boolean hasCount() {
        return getCount() != null;
    }

    public DateTime getUpdated() {
        return this.updated;
    }

    public void setUpdated(DateTime dateTime) {
        throwExceptionIfImmutable();
        this.updated = dateTime;
    }

    public boolean hasUpdated() {
        return getUpdated() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.count != null && this.count.intValue() < 0) {
            throw new IllegalStateException("thr:count attribute must be non-negative: " + this.count);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(IssuesLink.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(COUNT, (Object) this.count);
        attributeGenerator.put(UPDATED, (Object) this.updated);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.count = Integer.valueOf(attributeHelper.consumeInteger("count", false));
        this.updated = attributeHelper.consumeDateTime(AdobePushNotificationPayloadKeys.ADOBE_PUSH_NOTIFICATION_UPDATED, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        IssuesLink issuesLink = (IssuesLink) obj;
        return eq(this.count, issuesLink.count) && eq(this.updated, issuesLink.updated);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.count != null) {
            iHashCode = (iHashCode * 37) + this.count.hashCode();
        }
        if (this.updated != null) {
            return (iHashCode * 37) + this.updated.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{IssuesLink count=" + this.count + " updated=" + this.updated + " " + super.toString() + "}";
    }
}
