package com.google.gdata.client.youtube;

import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.youtube.ChannelFeed;
import com.google.gdata.data.youtube.CommentFeed;
import com.google.gdata.data.youtube.ComplaintFeed;
import com.google.gdata.data.youtube.FormUploadToken;
import com.google.gdata.data.youtube.FriendFeed;
import com.google.gdata.data.youtube.PlaylistFeed;
import com.google.gdata.data.youtube.PlaylistLinkFeed;
import com.google.gdata.data.youtube.RatingFeed;
import com.google.gdata.data.youtube.SubscriptionFeed;
import com.google.gdata.data.youtube.UserEventFeed;
import com.google.gdata.data.youtube.UserProfileFeed;
import com.google.gdata.data.youtube.VideoFeed;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class YouTubeService extends MediaService {
    private static final URL DEFAULT_AUTH_URL;
    public static final Version DEFAULT_VERSION;
    private static final String SERVICE_NAME = "youtube";
    private static final String SERVICE_VERSION = "YouTube-Java/1.0";

    public class Versions {
        public static final Version V1 = new Version(YouTubeService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(YouTubeService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version LATEST = V2;
        public static final Version[] ALL = {V1, V2};
    }

    static {
        try {
            DEFAULT_AUTH_URL = new URL("https://www.google.com/youtube");
            DEFAULT_VERSION = Service.initServiceVersion(YouTubeService.class, Versions.V2);
        } catch (MalformedURLException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public YouTubeService(String str) {
        this(str, null, DEFAULT_AUTH_URL);
    }

    public YouTubeService(String str, String str2) {
        this(str, str2, DEFAULT_AUTH_URL);
    }

    protected YouTubeService(String str, String str2, URL url) {
        super(SERVICE_NAME, str, url.getProtocol(), url.getHost() + (url.getPort() == -1 ? "" : ":" + url.getPort()) + url.getPath());
        getRequestFactory().setHeader("X-GData-Key", str2 != null ? "key=" + str2 : null);
        getRequestFactory().setHeader("X-GData-Client", str);
        ExtensionProfile extensionProfile = getExtensionProfile();
        extensionProfile.addDeclarations(new ChannelFeed());
        extensionProfile.addDeclarations(new ComplaintFeed());
        extensionProfile.addDeclarations(new CommentFeed());
        extensionProfile.addDeclarations(new FriendFeed());
        extensionProfile.addDeclarations(new UserEventFeed());
        extensionProfile.addDeclarations(new PlaylistFeed());
        extensionProfile.addDeclarations(new PlaylistLinkFeed());
        extensionProfile.addDeclarations(new RatingFeed());
        extensionProfile.addDeclarations(new SubscriptionFeed());
        extensionProfile.addDeclarations(new UserProfileFeed());
        extensionProfile.addDeclarations(new VideoFeed());
        setStrictValidation(false);
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return SERVICE_VERSION + ' ' + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(YouTubeService.class);
    }

    public static boolean isCompatible(Version version) {
        if (version == null) {
            throw new NullPointerException("Version cannot be null.");
        }
        return getVersion().isCompatible(version);
    }

    public <E extends IEntry> FormUploadToken getFormUploadToken(URL url, E e2) throws IOException, ServiceException {
        if (e2 == null) {
            throw new NullPointerException("Must supply entry");
        }
        Service.GDataRequest gDataRequestCreateInsertRequest = createInsertRequest(url);
        writeRequestData(gDataRequestCreateInsertRequest, e2);
        gDataRequestCreateInsertRequest.execute();
        try {
            return FormUploadToken.parse(gDataRequestCreateInsertRequest.getParseSource().getInputStream());
        } finally {
            gDataRequestCreateInsertRequest.end();
        }
    }
}
