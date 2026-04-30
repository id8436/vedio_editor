package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.appsforyourdomain.Email;
import com.google.gdata.data.appsforyourdomain.Login;
import com.google.gdata.data.appsforyourdomain.Name;
import com.google.gdata.data.appsforyourdomain.Namespaces;
import com.google.gdata.data.appsforyourdomain.Quota;
import com.google.gdata.data.extensions.FeedLink;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(UserEntry.USER_KIND)
public class UserEntry extends BaseEntry<UserEntry> {
    public static final String USER_KIND = "http://schemas.google.com/apps/2006#user";
    public static final Category USER_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", USER_KIND);

    public UserEntry() {
        getCategories().add(USER_CATEGORY);
    }

    public UserEntry(BaseEntry baseEntry) {
        super(baseEntry);
        getCategories().add(USER_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(UserEntry.class, Login.getDefaultDescription());
        extensionProfile.declare(UserEntry.class, Email.getDefaultDescription());
        extensionProfile.declare(UserEntry.class, Name.getDefaultDescription());
        extensionProfile.declare(UserEntry.class, Quota.getDefaultDescription());
        ExtensionDescription defaultDescription = FeedLink.getDefaultDescription();
        defaultDescription.setRepeatable(true);
        extensionProfile.declare(UserEntry.class, defaultDescription);
        extensionProfile.declareAdditionalNamespace(Namespaces.APPS_NAMESPACE);
    }

    public Login getLogin() {
        return (Login) getExtension(Login.class);
    }

    public Name getName() {
        return (Name) getExtension(Name.class);
    }

    public Quota getQuota() {
        return (Quota) getExtension(Quota.class);
    }

    public Email getEmail() {
        return (Email) getExtension(Email.class);
    }
}
