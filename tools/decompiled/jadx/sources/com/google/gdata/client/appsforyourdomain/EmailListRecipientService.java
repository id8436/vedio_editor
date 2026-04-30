package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.data.appsforyourdomain.provisioning.EmailListRecipientFeed;

/* JADX INFO: loaded from: classes3.dex */
public class EmailListRecipientService extends AppsForYourDomainService {
    public EmailListRecipientService(String str) {
        super(str, "https", AppsForYourDomainService.DOMAIN_NAME);
        new EmailListRecipientFeed().declareExtensions(getExtensionProfile());
    }
}
