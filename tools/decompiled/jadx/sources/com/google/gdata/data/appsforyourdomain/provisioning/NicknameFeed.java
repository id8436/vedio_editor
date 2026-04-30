package com.google.gdata.data.appsforyourdomain.provisioning;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(NicknameEntry.NICKNAME_KIND)
public class NicknameFeed extends BaseFeed<NicknameFeed, NicknameEntry> {
    public NicknameFeed() {
        super(NicknameEntry.class);
        getCategories().add(NicknameEntry.NICKNAME_CATEGORY);
    }

    public NicknameFeed(BaseFeed baseFeed) {
        super(NicknameEntry.class, baseFeed);
        getCategories().add(NicknameEntry.NICKNAME_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
