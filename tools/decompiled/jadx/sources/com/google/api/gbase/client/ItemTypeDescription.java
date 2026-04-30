package com.google.api.gbase.client;

import com.google.api.gbase.client.GmAttributes;
import com.google.gdata.data.BaseEntry;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ItemTypeDescription {
    private final BaseEntry owner;

    ItemTypeDescription(BaseEntry baseEntry) {
        this.owner = baseEntry;
    }

    void setName(String str) {
        if (str == null) {
            this.owner.removeExtension(GmItemType.class);
        } else {
            this.owner.setExtension(new GmItemType(str));
        }
    }

    public String getName() {
        GmItemType gmItemType = (GmItemType) this.owner.getExtension(GmItemType.class);
        if (gmItemType == null) {
            return null;
        }
        return gmItemType.getItemType();
    }

    public List<? extends GoogleBaseAttributeId> getAttributeIds() {
        return getGmAttributesExtension().getAttributeIds();
    }

    public Collection<GmAttributes.GmAttribute> getAttributes() {
        return getGmAttributesExtension().getAttributes();
    }

    private GmAttributes getGmAttributesExtension() {
        GmAttributes gmAttributes = (GmAttributes) this.owner.getExtension(GmAttributes.class);
        if (gmAttributes == null) {
            GmAttributes gmAttributes2 = new GmAttributes();
            this.owner.setExtension(gmAttributes2);
            return gmAttributes2;
        }
        return gmAttributes;
    }
}
