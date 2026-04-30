package com.google.gdata.data.contacts;

import android.support.v4.app.NotificationCompat;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Link;
import com.google.gdata.data.batch.BatchId;
import com.google.gdata.data.batch.BatchInterrupted;
import com.google.gdata.data.batch.BatchOperation;
import com.google.gdata.data.batch.BatchStatus;
import com.google.gdata.data.contacts.BasePersonEntry;
import com.google.gdata.data.contacts.ContactLink;
import com.google.gdata.data.extensions.Email;
import com.google.gdata.data.extensions.ExtendedProperty;
import com.google.gdata.data.extensions.Im;
import com.google.gdata.data.extensions.Name;
import com.google.gdata.data.extensions.Organization;
import com.google.gdata.data.extensions.PhoneNumber;
import com.google.gdata.data.extensions.PostalAddress;
import com.google.gdata.data.extensions.StructuredPostalAddress;
import com.google.gdata.data.extensions.Where;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BasePersonEntry<E extends BasePersonEntry<E>> extends BaseEntry<E> {
    public BasePersonEntry() {
    }

    public BasePersonEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(BasePersonEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(BatchId.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "id", false, false, false));
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(BatchInterrupted.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "interrupted", false, false, false));
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(BatchOperation.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), "operation", false, false, false));
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(BatchStatus.class, new XmlNamespace(Namespaces.batchAlias, Namespaces.batch), NotificationCompat.CATEGORY_STATUS, false, false, false));
            extensionProfile.declare(BasePersonEntry.class, BillingInformation.class);
            extensionProfile.declare(BasePersonEntry.class, Birthday.class);
            extensionProfile.declare(BasePersonEntry.class, CalendarLink.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, DirectoryServer.class);
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(Email.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "email", false, true, false));
            extensionProfile.declare(BasePersonEntry.class, Event.getDefaultDescription(false, true));
            new Event().declareExtensions(extensionProfile);
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(ExtendedProperty.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "extendedProperty", false, true, false));
            extensionProfile.declare(BasePersonEntry.class, ExternalId.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, FileAs.class);
            extensionProfile.declare(BasePersonEntry.class, Gender.class);
            extensionProfile.declare(BasePersonEntry.class, Hobby.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, Im.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, Initials.class);
            extensionProfile.declare(BasePersonEntry.class, Jot.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, Language.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, MaidenName.class);
            extensionProfile.declare(BasePersonEntry.class, Mileage.class);
            extensionProfile.declare(BasePersonEntry.class, Name.class);
            new Name().declareExtensions(extensionProfile);
            extensionProfile.declare(BasePersonEntry.class, Nickname.class);
            extensionProfile.declare(BasePersonEntry.class, Occupation.class);
            extensionProfile.declare(BasePersonEntry.class, Organization.getDefaultDescription(false, true));
            new Organization().declareExtensions(extensionProfile);
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(PhoneNumber.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), AdobeEntitlementSession.AdobeEntitlementUserProfilePhoneNumber, false, true, false));
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(PostalAddress.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "postalAddress", false, true, false));
            extensionProfile.declare(BasePersonEntry.class, Priority.class);
            extensionProfile.declare(BasePersonEntry.class, Relation.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, Sensitivity.class);
            extensionProfile.declare(BasePersonEntry.class, ShortName.class);
            extensionProfile.declare(BasePersonEntry.class, Status.class);
            extensionProfile.declare(BasePersonEntry.class, StructuredPostalAddress.getDefaultDescription(false, true));
            new StructuredPostalAddress().declareExtensions(extensionProfile);
            extensionProfile.declare(BasePersonEntry.class, Subject.class);
            extensionProfile.declare(BasePersonEntry.class, UserDefinedField.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, Website.getDefaultDescription(false, true));
            extensionProfile.declare(BasePersonEntry.class, new ExtensionDescription(Where.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "where", false, false, false));
            new Where().declareExtensions(extensionProfile);
        }
    }

    public BatchId getBatchId() {
        return (BatchId) getExtension(BatchId.class);
    }

    public void setBatchId(BatchId batchId) {
        if (batchId == null) {
            removeExtension(BatchId.class);
        } else {
            setExtension(batchId);
        }
    }

    public boolean hasBatchId() {
        return hasExtension(BatchId.class);
    }

    public BatchInterrupted getBatchInterrupted() {
        return (BatchInterrupted) getExtension(BatchInterrupted.class);
    }

    public void setBatchInterrupted(BatchInterrupted batchInterrupted) {
        if (batchInterrupted == null) {
            removeExtension(BatchInterrupted.class);
        } else {
            setExtension(batchInterrupted);
        }
    }

    public boolean hasBatchInterrupted() {
        return hasExtension(BatchInterrupted.class);
    }

    public BatchOperation getBatchOperation() {
        return (BatchOperation) getExtension(BatchOperation.class);
    }

    public void setBatchOperation(BatchOperation batchOperation) {
        if (batchOperation == null) {
            removeExtension(BatchOperation.class);
        } else {
            setExtension(batchOperation);
        }
    }

    public boolean hasBatchOperation() {
        return hasExtension(BatchOperation.class);
    }

    public BatchStatus getBatchStatus() {
        return (BatchStatus) getExtension(BatchStatus.class);
    }

    public void setBatchStatus(BatchStatus batchStatus) {
        if (batchStatus == null) {
            removeExtension(BatchStatus.class);
        } else {
            setExtension(batchStatus);
        }
    }

    public boolean hasBatchStatus() {
        return hasExtension(BatchStatus.class);
    }

    public BillingInformation getBillingInformation() {
        return (BillingInformation) getExtension(BillingInformation.class);
    }

    public void setBillingInformation(BillingInformation billingInformation) {
        if (billingInformation == null) {
            removeExtension(BillingInformation.class);
        } else {
            setExtension(billingInformation);
        }
    }

    public boolean hasBillingInformation() {
        return hasExtension(BillingInformation.class);
    }

    public Birthday getBirthday() {
        return (Birthday) getExtension(Birthday.class);
    }

    public void setBirthday(Birthday birthday) {
        if (birthday == null) {
            removeExtension(Birthday.class);
        } else {
            setExtension(birthday);
        }
    }

    public boolean hasBirthday() {
        return hasExtension(Birthday.class);
    }

    public List<CalendarLink> getCalendarLinks() {
        return getRepeatingExtension(CalendarLink.class);
    }

    public void addCalendarLink(CalendarLink calendarLink) {
        getCalendarLinks().add(calendarLink);
    }

    public boolean hasCalendarLinks() {
        return hasRepeatingExtension(CalendarLink.class);
    }

    public DirectoryServer getDirectoryServer() {
        return (DirectoryServer) getExtension(DirectoryServer.class);
    }

    public void setDirectoryServer(DirectoryServer directoryServer) {
        if (directoryServer == null) {
            removeExtension(DirectoryServer.class);
        } else {
            setExtension(directoryServer);
        }
    }

    public boolean hasDirectoryServer() {
        return hasExtension(DirectoryServer.class);
    }

    public List<Email> getEmailAddresses() {
        return getRepeatingExtension(Email.class);
    }

    public void addEmailAddress(Email email) {
        getEmailAddresses().add(email);
    }

    public boolean hasEmailAddresses() {
        return hasRepeatingExtension(Email.class);
    }

    public List<Event> getEvents() {
        return getRepeatingExtension(Event.class);
    }

    public void addEvent(Event event) {
        getEvents().add(event);
    }

    public boolean hasEvents() {
        return hasRepeatingExtension(Event.class);
    }

    public List<ExtendedProperty> getExtendedProperties() {
        return getRepeatingExtension(ExtendedProperty.class);
    }

    public void addExtendedProperty(ExtendedProperty extendedProperty) {
        getExtendedProperties().add(extendedProperty);
    }

    public boolean hasExtendedProperties() {
        return hasRepeatingExtension(ExtendedProperty.class);
    }

    public List<ExternalId> getExternalIds() {
        return getRepeatingExtension(ExternalId.class);
    }

    public void addExternalId(ExternalId externalId) {
        getExternalIds().add(externalId);
    }

    public boolean hasExternalIds() {
        return hasRepeatingExtension(ExternalId.class);
    }

    public FileAs getFileAs() {
        return (FileAs) getExtension(FileAs.class);
    }

    public void setFileAs(FileAs fileAs) {
        if (fileAs == null) {
            removeExtension(FileAs.class);
        } else {
            setExtension(fileAs);
        }
    }

    public boolean hasFileAs() {
        return hasExtension(FileAs.class);
    }

    public Gender getGender() {
        return (Gender) getExtension(Gender.class);
    }

    public void setGender(Gender gender) {
        if (gender == null) {
            removeExtension(Gender.class);
        } else {
            setExtension(gender);
        }
    }

    public boolean hasGender() {
        return hasExtension(Gender.class);
    }

    public List<Hobby> getHobbies() {
        return getRepeatingExtension(Hobby.class);
    }

    public void addHobby(Hobby hobby) {
        getHobbies().add(hobby);
    }

    public boolean hasHobbies() {
        return hasRepeatingExtension(Hobby.class);
    }

    public List<Im> getImAddresses() {
        return getRepeatingExtension(Im.class);
    }

    public void addImAddress(Im im) {
        getImAddresses().add(im);
    }

    public boolean hasImAddresses() {
        return hasRepeatingExtension(Im.class);
    }

    public Initials getInitials() {
        return (Initials) getExtension(Initials.class);
    }

    public void setInitials(Initials initials) {
        if (initials == null) {
            removeExtension(Initials.class);
        } else {
            setExtension(initials);
        }
    }

    public boolean hasInitials() {
        return hasExtension(Initials.class);
    }

    public List<Jot> getJots() {
        return getRepeatingExtension(Jot.class);
    }

    public void addJot(Jot jot) {
        getJots().add(jot);
    }

    public boolean hasJots() {
        return hasRepeatingExtension(Jot.class);
    }

    public List<Language> getLanguages() {
        return getRepeatingExtension(Language.class);
    }

    public void addLanguage(Language language) {
        getLanguages().add(language);
    }

    public boolean hasLanguages() {
        return hasRepeatingExtension(Language.class);
    }

    public MaidenName getMaidenName() {
        return (MaidenName) getExtension(MaidenName.class);
    }

    public void setMaidenName(MaidenName maidenName) {
        if (maidenName == null) {
            removeExtension(MaidenName.class);
        } else {
            setExtension(maidenName);
        }
    }

    public boolean hasMaidenName() {
        return hasExtension(MaidenName.class);
    }

    public Mileage getMileage() {
        return (Mileage) getExtension(Mileage.class);
    }

    public void setMileage(Mileage mileage) {
        if (mileage == null) {
            removeExtension(Mileage.class);
        } else {
            setExtension(mileage);
        }
    }

    public boolean hasMileage() {
        return hasExtension(Mileage.class);
    }

    public Name getName() {
        return (Name) getExtension(Name.class);
    }

    public void setName(Name name) {
        if (name == null) {
            removeExtension(Name.class);
        } else {
            setExtension(name);
        }
    }

    public boolean hasName() {
        return hasExtension(Name.class);
    }

    public Nickname getNickname() {
        return (Nickname) getExtension(Nickname.class);
    }

    public void setNickname(Nickname nickname) {
        if (nickname == null) {
            removeExtension(Nickname.class);
        } else {
            setExtension(nickname);
        }
    }

    public boolean hasNickname() {
        return hasExtension(Nickname.class);
    }

    public Occupation getOccupation() {
        return (Occupation) getExtension(Occupation.class);
    }

    public void setOccupation(Occupation occupation) {
        if (occupation == null) {
            removeExtension(Occupation.class);
        } else {
            setExtension(occupation);
        }
    }

    public boolean hasOccupation() {
        return hasExtension(Occupation.class);
    }

    public List<Organization> getOrganizations() {
        return getRepeatingExtension(Organization.class);
    }

    public void addOrganization(Organization organization) {
        getOrganizations().add(organization);
    }

    public boolean hasOrganizations() {
        return hasRepeatingExtension(Organization.class);
    }

    public List<PhoneNumber> getPhoneNumbers() {
        return getRepeatingExtension(PhoneNumber.class);
    }

    public void addPhoneNumber(PhoneNumber phoneNumber) {
        getPhoneNumbers().add(phoneNumber);
    }

    public boolean hasPhoneNumbers() {
        return hasRepeatingExtension(PhoneNumber.class);
    }

    public List<PostalAddress> getPostalAddresses() {
        return getRepeatingExtension(PostalAddress.class);
    }

    public void addPostalAddress(PostalAddress postalAddress) {
        getPostalAddresses().add(postalAddress);
    }

    public boolean hasPostalAddresses() {
        return hasRepeatingExtension(PostalAddress.class);
    }

    public Priority getPriority() {
        return (Priority) getExtension(Priority.class);
    }

    public void setPriority(Priority priority) {
        if (priority == null) {
            removeExtension(Priority.class);
        } else {
            setExtension(priority);
        }
    }

    public boolean hasPriority() {
        return hasExtension(Priority.class);
    }

    public List<Relation> getRelations() {
        return getRepeatingExtension(Relation.class);
    }

    public void addRelation(Relation relation) {
        getRelations().add(relation);
    }

    public boolean hasRelations() {
        return hasRepeatingExtension(Relation.class);
    }

    public Sensitivity getSensitivity() {
        return (Sensitivity) getExtension(Sensitivity.class);
    }

    public void setSensitivity(Sensitivity sensitivity) {
        if (sensitivity == null) {
            removeExtension(Sensitivity.class);
        } else {
            setExtension(sensitivity);
        }
    }

    public boolean hasSensitivity() {
        return hasExtension(Sensitivity.class);
    }

    public ShortName getShortName() {
        return (ShortName) getExtension(ShortName.class);
    }

    public void setShortName(ShortName shortName) {
        if (shortName == null) {
            removeExtension(ShortName.class);
        } else {
            setExtension(shortName);
        }
    }

    public boolean hasShortName() {
        return hasExtension(ShortName.class);
    }

    public Status getStatus() {
        return (Status) getExtension(Status.class);
    }

    public void setStatus(Status status) {
        if (status == null) {
            removeExtension(Status.class);
        } else {
            setExtension(status);
        }
    }

    public boolean hasStatus() {
        return hasExtension(Status.class);
    }

    public List<StructuredPostalAddress> getStructuredPostalAddresses() {
        return getRepeatingExtension(StructuredPostalAddress.class);
    }

    public void addStructuredPostalAddress(StructuredPostalAddress structuredPostalAddress) {
        getStructuredPostalAddresses().add(structuredPostalAddress);
    }

    public boolean hasStructuredPostalAddresses() {
        return hasRepeatingExtension(StructuredPostalAddress.class);
    }

    public Subject getSubject() {
        return (Subject) getExtension(Subject.class);
    }

    public void setSubject(Subject subject) {
        if (subject == null) {
            removeExtension(Subject.class);
        } else {
            setExtension(subject);
        }
    }

    public boolean hasSubject() {
        return hasExtension(Subject.class);
    }

    public List<UserDefinedField> getUserDefinedFields() {
        return getRepeatingExtension(UserDefinedField.class);
    }

    public void addUserDefinedField(UserDefinedField userDefinedField) {
        getUserDefinedFields().add(userDefinedField);
    }

    public boolean hasUserDefinedFields() {
        return hasRepeatingExtension(UserDefinedField.class);
    }

    public List<Website> getWebsites() {
        return getRepeatingExtension(Website.class);
    }

    public void addWebsite(Website website) {
        getWebsites().add(website);
    }

    public boolean hasWebsites() {
        return hasRepeatingExtension(Website.class);
    }

    public Where getWhere() {
        return (Where) getExtension(Where.class);
    }

    public void setWhere(Where where) {
        if (where == null) {
            removeExtension(Where.class);
        } else {
            setExtension(where);
        }
    }

    public boolean hasWhere() {
        return hasExtension(Where.class);
    }

    public Link getContactEditPhotoLink() {
        return getLink(ContactLink.Rel.EDIT_CONTACT_PHOTO, ContactLink.Type.IMAGE);
    }

    public Link getContactPhotoLink() {
        return getLink(ContactLink.Rel.CONTACT_PHOTO, ContactLink.Type.IMAGE);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{BasePersonEntry " + super.toString() + "}";
    }
}
