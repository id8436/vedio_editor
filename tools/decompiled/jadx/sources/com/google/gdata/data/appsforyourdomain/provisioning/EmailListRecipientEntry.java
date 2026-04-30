package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.appsforyourdomain.Namespaces;
import com.google.gdata.data.extensions.Who;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/apps/2006#emailList.recipient")
public class EmailListRecipientEntry extends BaseEntry<EmailListRecipientEntry> {
    public static final Category EMAILLIST_RECIPIENT_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/apps/2006#emailList.recipient");
    public static final String EMAILLIST_RECIPIENT_KIND = "http://schemas.google.com/apps/2006#emailList.recipient";

    public EmailListRecipientEntry() {
        getCategories().add(EMAILLIST_RECIPIENT_CATEGORY);
    }

    public EmailListRecipientEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(EMAILLIST_RECIPIENT_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        ExtensionDescription defaultDescription = Who.getDefaultDescription();
        defaultDescription.setRepeatable(false);
        defaultDescription.setRequired(true);
        extensionProfile.declare(EmailListRecipientEntry.class, defaultDescription);
        extensionProfile.declareAdditionalNamespace(Namespaces.APPS_NAMESPACE);
    }
}
