package com.google.gdata.data.gtt;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.media.MediaEntry;

/* JADX INFO: loaded from: classes3.dex */
public class TranslationMemoryEntry extends MediaEntry<TranslationMemoryEntry> {
    public TranslationMemoryEntry() {
    }

    public TranslationMemoryEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(TranslationMemoryEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(TranslationMemoryEntry.class, ScopeEntry.class);
        }
    }

    public ScopeEntry getScope() {
        return (ScopeEntry) getExtension(ScopeEntry.class);
    }

    public void setScope(ScopeEntry scopeEntry) {
        if (scopeEntry == null) {
            removeExtension(ScopeEntry.class);
        } else {
            setExtension(scopeEntry);
        }
    }

    public boolean hasScope() {
        return hasExtension(ScopeEntry.class);
    }

    public Link getAccessControlListLink() {
        return getLink("http://schemas.google.com/acl/2007#accessControlList", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{TranslationMemoryEntry " + super.toString() + "}";
    }
}
