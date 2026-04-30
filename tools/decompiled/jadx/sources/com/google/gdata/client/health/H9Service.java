package com.google.gdata.client.health;

import com.google.gdata.client.GoogleService;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import com.google.gdata.data.health.ProfileFeed;
import com.google.gdata.data.health.RegisterFeed;

/* JADX INFO: loaded from: classes3.dex */
public class H9Service extends GoogleService {
    public static final String H9_SERVICE = "weaver";
    public static final String H9_SERVICE_VERSION = "GHealth-Java/" + H9Service.class.getPackage().getImplementationVersion();

    public H9Service(String str) {
        this(str, "https", AppsForYourDomainService.DOMAIN_NAME);
    }

    public H9Service(String str, String str2, String str3) {
        super(H9_SERVICE, str, str2, str3);
        new ProfileFeed().declareExtensions(getExtensionProfile());
        new RegisterFeed().declareExtensions(getExtensionProfile());
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return H9_SERVICE_VERSION + " " + super.getServiceVersion();
    }
}
