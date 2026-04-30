package com.google.gdata.data.acl;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(AclEntry.ACCESS_RULE_KIND)
public class AclFeed extends BaseFeed<AclFeed, AclEntry> {
    public AclFeed() {
        super(AclEntry.class);
        getCategories().add(AclEntry.ACCESS_RULE_CATEGORY);
    }
}
