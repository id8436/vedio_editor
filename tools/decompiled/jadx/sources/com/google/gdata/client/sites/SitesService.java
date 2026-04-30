package com.google.gdata.client.sites;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.Service;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.acl.AclFeed;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.data.sites.ActivityFeed;
import com.google.gdata.data.sites.AnnouncementEntry;
import com.google.gdata.data.sites.AnnouncementsPageEntry;
import com.google.gdata.data.sites.AttachmentEntry;
import com.google.gdata.data.sites.CommentEntry;
import com.google.gdata.data.sites.ContentFeed;
import com.google.gdata.data.sites.CreationActivityEntry;
import com.google.gdata.data.sites.DeletionActivityEntry;
import com.google.gdata.data.sites.EditActivityEntry;
import com.google.gdata.data.sites.FileCabinetPageEntry;
import com.google.gdata.data.sites.ListItemEntry;
import com.google.gdata.data.sites.ListPageEntry;
import com.google.gdata.data.sites.MoveActivityEntry;
import com.google.gdata.data.sites.RecoveryActivityEntry;
import com.google.gdata.data.sites.RevisionFeed;
import com.google.gdata.data.sites.SiteFeed;
import com.google.gdata.data.sites.WebAttachmentEntry;
import com.google.gdata.data.sites.WebPageEntry;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class SitesService extends MediaService {
    public static final Version DEFAULT_VERSION;
    public static final String SITES_SERVICE = "jotspot";
    public static final String SITES_SERVICE_VERSION;

    static {
        SITES_SERVICE_VERSION = "GSites-Java/" + (SitesService.class.getPackage() == null ? "unknown" : SitesService.class.getPackage().getImplementationVersion());
        DEFAULT_VERSION = Service.initServiceVersion(SitesService.class, Versions.V1_4);
    }

    public final class Versions {
        public static final Version V1 = new Version(SitesService.class, "1.0", Service.Versions.V2);
        public static final Version V1_1 = new Version(SitesService.class, "1.1", Service.Versions.V2);
        public static final Version V1_2 = new Version(SitesService.class, "1.2", Service.Versions.V2);
        public static final Version V1_3 = new Version(SitesService.class, "1.3", Service.Versions.V2);
        public static final Version V1_4 = new Version(SitesService.class, "1.4", Service.Versions.V2);

        private Versions() {
        }
    }

    public SitesService(String str) {
        super(SITES_SERVICE, str);
        declareExtensions();
    }

    public SitesService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public SitesService(String str, String str2, String str3) {
        super(SITES_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return SITES_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(SitesService.class);
    }

    private void declareExtensions() {
        new AclFeed().declareExtensions(this.extProfile);
        new SiteFeed().declareExtensions(this.extProfile);
        this.extProfile.setAutoExtending(true);
        new ActivityFeed().declareExtensions(this.extProfile);
        new AnnouncementEntry().declareExtensions(this.extProfile);
        new AnnouncementsPageEntry().declareExtensions(this.extProfile);
        new AttachmentEntry().declareExtensions(this.extProfile);
        new CommentEntry().declareExtensions(this.extProfile);
        new ContentFeed().declareExtensions(this.extProfile);
        new CreationActivityEntry().declareExtensions(this.extProfile);
        new DeletionActivityEntry().declareExtensions(this.extProfile);
        new EditActivityEntry().declareExtensions(this.extProfile);
        new FileCabinetPageEntry().declareExtensions(this.extProfile);
        new ListItemEntry().declareExtensions(this.extProfile);
        new ListPageEntry().declareExtensions(this.extProfile);
        new MoveActivityEntry().declareExtensions(this.extProfile);
        new RecoveryActivityEntry().declareExtensions(this.extProfile);
        new RevisionFeed().declareExtensions(this.extProfile);
        new WebAttachmentEntry().declareExtensions(this.extProfile);
        new WebPageEntry().declareExtensions(this.extProfile);
        BatchUtils.declareExtensions(this.extProfile);
    }
}
