package com.google.gdata.data.appsforyourdomain.migration;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.appsforyourdomain.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class MailItemProperty extends ValueConstruct {
    private static final String ATTRIBUTE_VALUE = "value";
    private static final String EXTENSION_LOCAL_NAME = "mailItemProperty";
    public static final MailItemProperty DRAFT = new MailItemProperty(MailItemAttribute.IS_DRAFT);
    public static final MailItemProperty INBOX = new MailItemProperty(MailItemAttribute.IS_INBOX);
    public static final MailItemProperty SENT = new MailItemProperty(MailItemAttribute.IS_SENT);
    public static final MailItemProperty TRASH = new MailItemProperty(MailItemAttribute.IS_TRASH);
    public static final MailItemProperty STARRED = new MailItemProperty(MailItemAttribute.IS_STARRED);
    public static final MailItemProperty UNREAD = new MailItemProperty(MailItemAttribute.IS_UNREAD);
    private static ExtensionDescription EXTENSION_DESC = new ExtensionDescription();

    enum MailItemAttribute {
        IS_DRAFT,
        IS_INBOX,
        IS_STARRED,
        IS_SENT,
        IS_TRASH,
        IS_UNREAD
    }

    static {
        EXTENSION_DESC.setExtensionClass(MailItemProperty.class);
        EXTENSION_DESC.setNamespace(Namespaces.APPS_NAMESPACE);
        EXTENSION_DESC.setLocalName(EXTENSION_LOCAL_NAME);
        EXTENSION_DESC.setRepeatable(true);
    }

    public MailItemProperty() {
        super(Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME, ATTRIBUTE_VALUE);
    }

    public MailItemProperty(MailItemAttribute mailItemAttribute) {
        super(Namespaces.APPS_NAMESPACE, EXTENSION_LOCAL_NAME, ATTRIBUTE_VALUE, mailItemAttribute.toString());
    }

    public static ExtensionDescription getDefaultDescription() {
        return EXTENSION_DESC;
    }
}
