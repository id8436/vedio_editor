package com.google.gdata.data.extensions;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Kind.Term(ContactEntry.CONTACT_KIND)
@Deprecated
public class ContactEntry extends BaseEntry<ContactEntry> {
    public static final String CONTACT_KIND = "http://schemas.google.com/g/2005#contact";
    public static final Category CONTACT_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", CONTACT_KIND);

    public ContactEntry() {
        getCategories().add(CONTACT_CATEGORY);
    }

    public ContactEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(CONTACT_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(ContactEntry.class, Email.getDefaultDescription());
        extensionProfile.declare(ContactEntry.class, Im.getDefaultDescription(false, true));
        extensionProfile.declare(ContactEntry.class, PhoneNumber.getDefaultDescription());
        extensionProfile.declare(ContactEntry.class, PostalAddress.getDefaultDescription());
        extensionProfile.declare(ContactEntry.class, Organization.getDefaultDescription(false, false));
        extensionProfile.declare(ContactEntry.class, GeoPt.getDefaultDescription());
        extensionProfile.declare(ContactEntry.class, Deleted.class);
    }

    public List<Email> getEmailAddresses() {
        return getRepeatingExtension(Email.class);
    }

    public void addEmailAddress(Email email) {
        getEmailAddresses().add(email);
    }

    public List<Im> getImAddresses() {
        return getRepeatingExtension(Im.class);
    }

    public void addImAddress(Im im) {
        getImAddresses().add(im);
    }

    public List<PhoneNumber> getPhoneNumbers() {
        return getRepeatingExtension(PhoneNumber.class);
    }

    public void addPhoneNumber(PhoneNumber phoneNumber) {
        getPhoneNumbers().add(phoneNumber);
    }

    public List<PostalAddress> getPostalAddresses() {
        return getRepeatingExtension(PostalAddress.class);
    }

    public void addPostalAddress(PostalAddress postalAddress) {
        getPostalAddresses().add(postalAddress);
    }

    public Organization getOrganization() {
        return (Organization) getExtension(Organization.class);
    }

    public void setOrganization(Organization organization) {
        setExtension(organization);
    }

    public List<GeoPt> getLocations() {
        return getRepeatingExtension(GeoPt.class);
    }

    public void addLocation(GeoPt geoPt) {
        getLocations().add(geoPt);
    }

    public void setDeleted() {
        addExtension(new Deleted());
        setCanEdit(false);
    }

    public boolean isDeleted() {
        return getExtension(Deleted.class) != null;
    }
}
