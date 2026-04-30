package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.Person;

/* JADX INFO: loaded from: classes3.dex */
public class RevisionEntry extends BaseEntry<RevisionEntry> {
    public static final String PUBLISH_NAMESPACE = "http://schemas.google.com/docs/2007#publish";
    public static final String KIND = "http://schemas.google.com/docs/2007#revision";
    public static final String LABEL = "revision";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, LABEL);

    public RevisionEntry() {
        getCategories().add(CATEGORY);
    }

    public RevisionEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(RevisionEntry.class, Md5Checksum.class);
        extensionProfile.declare(RevisionEntry.class, Publish.class);
        extensionProfile.declare(RevisionEntry.class, PublishAuto.class);
        extensionProfile.declare(RevisionEntry.class, PublishOutsideDomain.class);
    }

    public String getMd5Checksum() {
        Md5Checksum md5Checksum = (Md5Checksum) getExtension(Md5Checksum.class);
        if (md5Checksum == null) {
            return null;
        }
        return md5Checksum.getValue();
    }

    public void setMd5Checksum(String str) {
        if (str == null) {
            removeExtension(Md5Checksum.class);
        } else {
            setExtension(new Md5Checksum(str));
        }
    }

    public void setModifyingUser(Person person) {
        getAuthors().clear();
        if (person != null) {
            getAuthors().add(person);
        }
    }

    public Person getModifyingUser() {
        if (getAuthors().size() > 0) {
            return getAuthors().get(0);
        }
        return null;
    }

    public Link getPublishLink() {
        return getLink("http://schemas.google.com/docs/2007#publish", ILink.Type.HTML);
    }

    public Boolean isPublish() {
        Publish publish = (Publish) getExtension(Publish.class);
        if (publish == null) {
            return null;
        }
        return publish.getValue();
    }

    public void setPublish(Boolean bool) {
        if (bool == null) {
            removeExtension(Publish.class);
        } else {
            setExtension(new Publish(bool));
        }
    }

    public Boolean isPublishAuto() {
        PublishAuto publishAuto = (PublishAuto) getExtension(PublishAuto.class);
        if (publishAuto == null) {
            return null;
        }
        return publishAuto.getValue();
    }

    public void setPublishAuto(Boolean bool) {
        if (bool == null) {
            removeExtension(PublishAuto.class);
        } else {
            setExtension(new PublishAuto(bool));
        }
    }

    public Boolean isPublishOutsideDomain() {
        PublishOutsideDomain publishOutsideDomain = (PublishOutsideDomain) getExtension(PublishOutsideDomain.class);
        if (publishOutsideDomain == null) {
            return null;
        }
        return publishOutsideDomain.getValue();
    }

    public void setPublishOutsideDomain(Boolean bool) {
        if (bool == null) {
            removeExtension(PublishOutsideDomain.class);
        } else {
            setExtension(new PublishOutsideDomain(bool));
        }
    }
}
