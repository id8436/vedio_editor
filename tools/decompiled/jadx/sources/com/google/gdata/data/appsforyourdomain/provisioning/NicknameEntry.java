package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.appsforyourdomain.Login;
import com.google.gdata.data.appsforyourdomain.Namespaces;
import com.google.gdata.data.appsforyourdomain.Nickname;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(NicknameEntry.NICKNAME_KIND)
public class NicknameEntry extends BaseEntry<NicknameEntry> {
    public static final String NICKNAME_KIND = "http://schemas.google.com/apps/2006#nickname";
    public static final Category NICKNAME_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", NICKNAME_KIND);

    public NicknameEntry() {
        getCategories().add(NICKNAME_CATEGORY);
    }

    public NicknameEntry(BaseEntry baseEntry) {
        super(baseEntry);
        getCategories().add(NICKNAME_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        ExtensionDescription defaultDescription = Nickname.getDefaultDescription();
        defaultDescription.setRequired(true);
        extensionProfile.declare(NicknameEntry.class, defaultDescription);
        ExtensionDescription defaultDescription2 = Login.getDefaultDescription();
        defaultDescription2.setRequired(true);
        extensionProfile.declare(NicknameEntry.class, defaultDescription2);
        extensionProfile.declareAdditionalNamespace(Namespaces.APPS_NAMESPACE);
    }

    public Nickname getNickname() {
        return (Nickname) getExtension(Nickname.class);
    }

    public Login getLogin() {
        return (Login) getExtension(Login.class);
    }
}
