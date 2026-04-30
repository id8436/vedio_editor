package com.google.gdata.data.appsforyourdomain;

import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class Namespaces {
    public static final String APPS = "http://schemas.google.com/apps/2006";
    public static final XmlNamespace APPS_NAMESPACE = new XmlNamespace(AppsForYourDomainService.APPS_SERVICE, APPS);
    public static final String APPS_PREFIX = "http://schemas.google.com/apps/2006#";
    public static final String DELIVERY_TIME_REL = "http://schemas.google.com/apps/2006/rel/deliveryTime";
    public static final String DESTINATION_REL = "http://schemas.google.com/apps/2006/rel/destinationAccount";
    public static final String EMAILLISTRECIPIENT_WHO_REL = "http://schemas.google.com/apps/2006#emailList.recipient";
    public static final String EMAILLIST_RECIPIENT_REL = "http://schemas.google.com/apps/2006#emailList.recipients";
    public static final String MIGRATION_REL = "http://schemas.google.com/apps/2006/rel/migration";
    public static final String OWNER_REL = "http://schemas.google.com/apps/2006/rel/owner";
    public static final String TRANSFER_REL = "http://schemas.google.com/apps/2006/rel/migration/transfer";
    public static final String USER_EMAILLIST_REL = "http://schemas.google.com/apps/2006#user.emailLists";
    public static final String USER_NICKNAME_REL = "http://schemas.google.com/apps/2006#user.nicknames";

    private Namespaces() {
    }
}
