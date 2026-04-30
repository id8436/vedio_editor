package com.google.gdata.data.health;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ProfileEntry.KIND)
public class ProfileEntry extends BaseHealthEntry<ProfileEntry> {
    public static final String KIND = "http://schemas.google.com/health/kinds#profile";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public ProfileEntry() {
        getCategories().add(CATEGORY);
    }

    public ProfileEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ProfileEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ProfileEntry.class, ContinuityOfCareRecord.class);
            extensionProfile.declare(ProfileEntry.class, ProfileMetaData.class);
        }
    }

    public ContinuityOfCareRecord getContinuityOfCareRecord() {
        return (ContinuityOfCareRecord) getExtension(ContinuityOfCareRecord.class);
    }

    public void setContinuityOfCareRecord(ContinuityOfCareRecord continuityOfCareRecord) {
        if (continuityOfCareRecord == null) {
            removeExtension(ContinuityOfCareRecord.class);
        } else {
            setExtension(continuityOfCareRecord);
        }
    }

    public boolean hasContinuityOfCareRecord() {
        return hasExtension(ContinuityOfCareRecord.class);
    }

    public ProfileMetaData getProfileMetaData() {
        return (ProfileMetaData) getExtension(ProfileMetaData.class);
    }

    public void setProfileMetaData(ProfileMetaData profileMetaData) {
        if (profileMetaData == null) {
            removeExtension(ProfileMetaData.class);
        } else {
            setExtension(profileMetaData);
        }
    }

    public boolean hasProfileMetaData() {
        return hasExtension(ProfileMetaData.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    @Override // com.google.gdata.data.health.BaseHealthEntry
    public String toString() {
        return "{ProfileEntry " + super.toString() + "}";
    }
}
