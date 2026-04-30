package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.data.appsforyourdomain.provisioning.EmailListFeed;

/* JADX INFO: loaded from: classes3.dex */
public class EmailListService extends AppsForYourDomainService {
    public EmailListService(String str) {
        super(str, "https", AppsForYourDomainService.DOMAIN_NAME);
        new EmailListFeed().declareExtensions(getExtensionProfile());
    }
}
