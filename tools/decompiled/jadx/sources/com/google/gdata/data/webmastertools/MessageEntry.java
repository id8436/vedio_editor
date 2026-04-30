package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.extensions.EntryLink;

/* JADX INFO: loaded from: classes3.dex */
public class MessageEntry extends BaseEntry<MessageEntry> {
    private static final String BODY = "body";
    private static final Category CATEGORY = Namespaces.createCategory(Namespaces.KIND_MESSAGE);
    private static final String DATE = "date";
    private static final String LANGUAGE = "language";
    private static final String READ = "read";
    private static final String SUBJECT = "subject";

    public MessageEntry() {
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        ExtensionDescription defaultDescription = EntryLink.getDefaultDescription();
        defaultDescription.setRepeatable(true);
        extensionProfile.declare(MessageEntry.class, defaultDescription);
        extensionProfile.declare(MessageEntry.class, ExtensionDescription.getDefaultDescription(LanguageExtension.class));
        extensionProfile.declare(MessageEntry.class, ExtensionDescription.getDefaultDescription(SubjectExtension.class));
        extensionProfile.declare(MessageEntry.class, ExtensionDescription.getDefaultDescription(DateExtension.class));
        extensionProfile.declare(MessageEntry.class, ExtensionDescription.getDefaultDescription(ReadExtension.class));
        extensionProfile.declare(MessageEntry.class, ExtensionDescription.getDefaultDescription(BodyExtension.class));
    }

    public void setLanguage(String str) {
        LanguageExtension languageExtension = (LanguageExtension) getExtension(LanguageExtension.class);
        if (languageExtension == null) {
            languageExtension = new LanguageExtension();
            setExtension(languageExtension);
        }
        languageExtension.setValue(str);
    }

    public String getLanguage() {
        LanguageExtension languageExtension = (LanguageExtension) getExtension(LanguageExtension.class);
        if (languageExtension == null) {
            return null;
        }
        return languageExtension.getValue();
    }

    public void setSubject(String str) {
        SubjectExtension subjectExtension = (SubjectExtension) getExtension(SubjectExtension.class);
        if (subjectExtension == null) {
            subjectExtension = new SubjectExtension();
            setExtension(subjectExtension);
        }
        subjectExtension.setValue(str);
    }

    public String getSubject() {
        SubjectExtension subjectExtension = (SubjectExtension) getExtension(SubjectExtension.class);
        if (subjectExtension == null) {
            return null;
        }
        return subjectExtension.getValue();
    }

    public void setDate(DateTime dateTime) {
        DateExtension dateExtension = (DateExtension) getExtension(DateExtension.class);
        if (dateExtension == null) {
            dateExtension = new DateExtension();
            setExtension(dateExtension);
        }
        dateExtension.setDateTime(dateTime);
    }

    public DateTime getDate() {
        DateExtension dateExtension = (DateExtension) getExtension(DateExtension.class);
        if (dateExtension == null) {
            return null;
        }
        return dateExtension.getDateTime();
    }

    public void setRead(boolean z) {
        ReadExtension readExtension = (ReadExtension) getExtension(ReadExtension.class);
        if (readExtension == null) {
            readExtension = new ReadExtension();
            setExtension(readExtension);
        }
        readExtension.setBooleanValue(z);
    }

    public boolean getRead() {
        ReadExtension readExtension = (ReadExtension) getExtension(ReadExtension.class);
        return readExtension != null && readExtension.getBooleanValue();
    }

    public void setBody(String str) {
        BodyExtension bodyExtension = (BodyExtension) getExtension(BodyExtension.class);
        if (bodyExtension == null) {
            bodyExtension = new BodyExtension();
            setExtension(bodyExtension);
        }
        bodyExtension.setValue(str);
    }

    public String getBody() {
        BodyExtension bodyExtension = (BodyExtension) getExtension(BodyExtension.class);
        if (bodyExtension == null) {
            return null;
        }
        return bodyExtension.getValue();
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = MessageEntry.LANGUAGE, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class LanguageExtension extends ValueConstruct {
        public LanguageExtension() {
            super(MessageEntry.LANGUAGE);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = MessageEntry.SUBJECT, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class SubjectExtension extends ValueConstruct {
        public SubjectExtension() {
            super(MessageEntry.SUBJECT);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = MessageEntry.DATE, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class DateExtension extends DateTimeValueConstruct {
        public DateExtension() {
            super(MessageEntry.DATE);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = MessageEntry.READ, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class ReadExtension extends BoolValueConstruct {
        public ReadExtension() {
            super(MessageEntry.READ);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = "body", nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class BodyExtension extends ValueConstruct {
        public BodyExtension() {
            super("body");
        }
    }
}
