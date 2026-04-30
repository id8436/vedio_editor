package com.google.api.gbase.client;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "item_type", nsAlias = GoogleBaseNamespaces.GM_ALIAS, nsUri = GoogleBaseNamespaces.GM_URI)
public class GmItemType extends AbstractExtension {
    private String itemType;

    public GmItemType() {
    }

    public GmItemType(String str) {
        this.itemType = str;
    }

    public String getItemType() {
        return this.itemType;
    }

    public void setItemType(String str) {
        this.itemType = str;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        super.validate();
        if (this.itemType == null) {
            throw new IllegalStateException("An item type should be set.");
        }
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.setContent(this.itemType);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.itemType = attributeHelper.consumeContent(true);
    }
}
