package com.google.gdata.client.photos;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.photos.AlbumEntry;
import com.google.gdata.data.photos.AlbumFeed;
import com.google.gdata.data.photos.CommentEntry;
import com.google.gdata.data.photos.PhotoEntry;
import com.google.gdata.data.photos.PhotoFeed;
import com.google.gdata.data.photos.TagEntry;
import com.google.gdata.data.photos.UserEntry;
import com.google.gdata.data.photos.UserFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class PicasawebService extends MediaService {
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(PicasawebService.class, Versions.V2);
    public static final String PWA_SERVICE = "lh2";

    public final class Versions {
        public static final Version V1 = new Version(PicasawebService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(PicasawebService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V3 = new Version(PicasawebService.class, "3.0", Service.Versions.V2);

        private Versions() {
        }
    }

    public PicasawebService(String str) {
        super(PWA_SERVICE, str);
        declareExtensions();
    }

    public PicasawebService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public PicasawebService(String str, String str2, String str3) {
        super(PWA_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return "lh2 " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(PicasawebService.class);
    }

    private void declareExtensions() {
        this.extProfile.setAutoExtending(true);
        new AlbumEntry().declareExtensions(this.extProfile);
        new AlbumFeed().declareExtensions(this.extProfile);
        new CommentEntry().declareExtensions(this.extProfile);
        new PhotoEntry().declareExtensions(this.extProfile);
        new PhotoFeed().declareExtensions(this.extProfile);
        new TagEntry().declareExtensions(this.extProfile);
        new UserEntry().declareExtensions(this.extProfile);
        new UserFeed().declareExtensions(this.extProfile);
    }
}
