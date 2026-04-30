package com.google.gdata.client.appsforyourdomain;

import com.google.gdata.data.appsforyourdomain.generic.GenericFeed;

/* JADX INFO: loaded from: classes3.dex */
public class AppsPropertyService extends AppsForYourDomainService {
    public AppsPropertyService(String str) {
        super(str, "https", AppsForYourDomainService.DOMAIN_NAME);
        new GenericFeed().declareExtensions(getExtensionProfile());
    }
}
