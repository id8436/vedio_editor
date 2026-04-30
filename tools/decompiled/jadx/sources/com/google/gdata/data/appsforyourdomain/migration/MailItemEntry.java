package com.google.gdata.data.appsforyourdomain.migration;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.extensions.Email;
import com.google.gdata.data.media.MediaEntry;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(MailItemEntry.MAILITEM_KIND)
public class MailItemEntry extends MediaEntry<MailItemEntry> {
    public static final String MAILITEM_KIND = "http://schemas.google.com/apps/2006#mailItem";
    public static final Category MAILITEM_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", MAILITEM_KIND);

    public MailItemEntry() {
        getCategories().add(MAILITEM_CATEGORY);
    }

    public MailItemEntry(BaseEntry<MailItemEntry> baseEntry) {
        super(baseEntry);
        getCategories().add(MAILITEM_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(MailItemEntry.class, Email.getDefaultDescription());
        extensionProfile.declare(MailItemEntry.class, Label.getDefaultDescription());
        extensionProfile.declare(MailItemEntry.class, MailItemProperty.getDefaultDescription());
        extensionProfile.declare(MailItemEntry.class, Rfc822Msg.getDefaultDescription());
    }

    public Rfc822Msg getRfc822Msg() {
        return (Rfc822Msg) getExtension(Rfc822Msg.class);
    }

    public void setRfc822Msg(Rfc822Msg rfc822Msg) {
        setExtension(rfc822Msg);
    }

    public List<MailItemProperty> getMailProperties() {
        return getRepeatingExtension(MailItemProperty.class);
    }

    public void addMailProperty(MailItemProperty mailItemProperty) {
        addRepeatingExtension(mailItemProperty);
    }

    public List<Label> getLabels() {
        return getRepeatingExtension(Label.class);
    }

    public void addLabel(Label label) {
        addRepeatingExtension(label);
    }

    public List<Email> getRecipients() {
        return getRepeatingExtension(Email.class);
    }

    public void addRecipient(Email email) {
        addRepeatingExtension(email);
    }
}
