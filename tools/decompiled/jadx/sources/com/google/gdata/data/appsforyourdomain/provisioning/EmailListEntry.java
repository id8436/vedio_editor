package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.appsforyourdomain.EmailList;
import com.google.gdata.data.appsforyourdomain.Namespaces;
import com.google.gdata.data.extensions.FeedLink;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(EmailListEntry.EMAIL_LIST_KIND)
public class EmailListEntry extends BaseEntry<EmailListEntry> {
    public static final String EMAIL_LIST_KIND = "http://schemas.google.com/apps/2006#emailList";
    public static final Category EMAIL_LIST_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", EMAIL_LIST_KIND);

    public EmailListEntry() {
        getCategories().add(EMAIL_LIST_CATEGORY);
    }

    public EmailListEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(EMAIL_LIST_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        ExtensionDescription defaultDescription = EmailList.getDefaultDescription();
        defaultDescription.setRequired(true);
        extensionProfile.declare(EmailListEntry.class, defaultDescription);
        ExtensionDescription defaultDescription2 = FeedLink.getDefaultDescription();
        defaultDescription2.setRepeatable(true);
        extensionProfile.declare(EmailListEntry.class, defaultDescription2);
        extensionProfile.declareAdditionalNamespace(Namespaces.APPS_NAMESPACE);
    }

    public EmailList getEmailList() {
        return (EmailList) getExtension(EmailList.class);
    }
}
