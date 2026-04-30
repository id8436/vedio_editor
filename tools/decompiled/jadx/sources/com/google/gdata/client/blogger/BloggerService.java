package com.google.gdata.client.blogger;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.blogger.BlogCommentFeed;
import com.google.gdata.data.blogger.BlogFeed;
import com.google.gdata.data.blogger.BlogPostFeed;
import com.google.gdata.data.blogger.PostCommentFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class BloggerService extends GoogleService {
    public static final String BLOGGER_SERVICE = "blogger";
    public static final String BLOGGER_SERVICE_VERSION = "GBlogger-Java/" + BloggerService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(BloggerService.class, Versions.V2);
    public static final Version BLOGSPOT_VERSION = Versions.V2;

    public final class Versions {
        public static final Version V1 = new Version(BloggerService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(BloggerService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
    }

    public BloggerService(String str) {
        super(BLOGGER_SERVICE, str);
        declareExtensions();
    }

    public BloggerService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public BloggerService(String str, String str2, String str3) {
        super(BLOGGER_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return BLOGGER_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(BloggerService.class);
    }

    private void declareExtensions() {
        new BlogCommentFeed().declareExtensions(this.extProfile);
        new BlogFeed().declareExtensions(this.extProfile);
        new BlogPostFeed().declareExtensions(this.extProfile);
        new PostCommentFeed().declareExtensions(this.extProfile);
    }
}
