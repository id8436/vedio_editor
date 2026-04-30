package com.google.gdata.data.sites;

import com.adobe.creativesdk.foundation.internal.pushnotification.model.AdobePushNotificationPayloadKeys;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.Link;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = SitesLink.XML_NAME, nsAlias = "atom", nsUri = Namespaces.atom)
public class SitesLink extends Link {
    private static final String COUNT = "thr:count";
    private static final String UPDATED = "thr:updated";
    static final String XML_NAME = "link";
    private Integer count = null;
    private DateTime updated = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class Rel {
        public static final String ATTACHMENTS = "http://schemas.google.com/sites/2008#attachments";
        public static final String CURRENT = "http://schemas.google.com/sites/2008#current";
        public static final String INVITE = "http://schemas.google.com/sites/2008#invite";
        public static final String PARENT = "http://schemas.google.com/sites/2008#parent";
        public static final String REPLIES = "replies";
        public static final String REVISION = "http://schemas.google.com/sites/2008#revision";
        public static final String SOURCE = "http://schemas.google.com/sites/2008#source";
        public static final String TEMPLATE = "http://schemas.google.com/sites/2008#template";
        public static final String WEBADDRESSMAPPING = "http://schemas.google.com/sites/2008#webAddressMapping";
    }

    /* JADX INFO: loaded from: classes3.dex */
    public final class Type {
        public static final String APPLICATION_XHTML_XML = "application/xhtml+xml";
    }

    public SitesLink() {
    }

    public SitesLink(Integer num, String str, String str2, Long l, String str3, String str4, String str5, String str6, DateTime dateTime) {
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
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(SitesLink.class);
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
        SitesLink sitesLink = (SitesLink) obj;
        return eq(this.count, sitesLink.count) && eq(this.updated, sitesLink.updated);
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
        return "{SitesLink count=" + this.count + " updated=" + this.updated + " " + super.toString() + "}";
    }
}
