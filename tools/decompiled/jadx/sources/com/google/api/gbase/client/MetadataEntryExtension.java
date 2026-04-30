package com.google.api.gbase.client;

import com.google.api.gbase.client.GmPublishingPriority;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.PubControl;

/* JADX INFO: loaded from: classes3.dex */
public class MetadataEntryExtension {
    private final ItemTypeDescription itemType;
    private final BaseEntry<?> owner;

    public MetadataEntryExtension(BaseEntry<?> baseEntry) {
        this.owner = baseEntry;
        this.itemType = new ItemTypeDescription(baseEntry);
    }

    public AttributeHistogram getAttributeHistogram() {
        AttributeHistogram attributeHistogram = (AttributeHistogram) this.owner.getExtension(AttributeHistogram.class);
        if (attributeHistogram == null) {
            throw new IllegalStateException("Not a histogram feed entry.");
        }
        return attributeHistogram;
    }

    public Stats getStats() {
        return (Stats) this.owner.getExtension(Stats.class);
    }

    public boolean isEmpty() {
        return hasAttributeHistogram() || hasItemTypeDescription() || hasStats();
    }

    public boolean hasStats() {
        return this.owner.getExtension(Stats.class) != null;
    }

    public boolean hasAttributeHistogram() {
        return this.owner.getExtension(AttributeHistogram.class) != null;
    }

    public ItemTypeDescription getItemTypeDescription() {
        if (!hasItemTypeDescription()) {
            throw new IllegalStateException("Not an item-type entry.");
        }
        return this.itemType;
    }

    public boolean hasItemTypeDescription() {
        return this.itemType.getName() != null;
    }

    public boolean hasGmDisapproved() {
        return (this.owner.getPubControl() == null || this.owner.getPubControl().getExtension(GmDisapproved.class) == null) ? false : true;
    }

    public GmPublishingPriority.Value getGmPublishingPriority() {
        GmPublishingPriority gmPublishingPriority;
        PubControl pubControl = this.owner.getPubControl();
        if (pubControl != null && (gmPublishingPriority = (GmPublishingPriority) pubControl.getExtension(GmPublishingPriority.class)) != null) {
            return gmPublishingPriority.getValue();
        }
        return null;
    }

    public void setGmPublishingPriority(GmPublishingPriority.Value value) {
        GmPublishingPriority gmPublishingPriority = new GmPublishingPriority();
        gmPublishingPriority.setValue(value);
        PubControl pubControl = this.owner.getPubControl();
        if (pubControl == null) {
            pubControl = new PubControl();
            this.owner.setPubControl(pubControl);
        }
        pubControl.setExtension(gmPublishingPriority);
    }
}
