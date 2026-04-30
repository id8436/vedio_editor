package com.google.gdata.client.docs;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.acl.AclEntry;
import com.google.gdata.data.acl.AclFeed;
import com.google.gdata.data.acl.AclRole;
import com.google.gdata.data.acl.AclScope;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.data.docs.AudioEntry;
import com.google.gdata.data.docs.DocumentEntry;
import com.google.gdata.data.docs.DocumentExportEntry;
import com.google.gdata.data.docs.DocumentExportFeed;
import com.google.gdata.data.docs.DocumentListFeed;
import com.google.gdata.data.docs.FolderEntry;
import com.google.gdata.data.docs.MetadataFeed;
import com.google.gdata.data.docs.PdfEntry;
import com.google.gdata.data.docs.PresentationEntry;
import com.google.gdata.data.docs.QueryParameter;
import com.google.gdata.data.docs.RevisionFeed;
import com.google.gdata.data.docs.SpreadsheetEntry;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class DocsService extends MediaService {
    public static final String DOCS_SERVICE = "writely";
    public static final String DOCS_SERVICE_VERSION = "GDocs-Java/" + DocsService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(DocsService.class, Versions.V3);

    public final class Versions {
        public static final Version V1 = new Version(DocsService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(DocsService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V3 = new Version(DocsService.class, "3.0", Service.Versions.V2);

        private Versions() {
        }
    }

    public DocsService(String str) {
        super(DOCS_SERVICE, str);
        declareExtensions();
    }

    public DocsService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public DocsService(String str, String str2, String str3) {
        super(DOCS_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return DOCS_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(DocsService.class);
    }

    private void declareExtensions() {
        new AclFeed().declareExtensions(this.extProfile);
        new DocumentExportFeed().declareExtensions(this.extProfile);
        new MetadataFeed().declareExtensions(this.extProfile);
        new RevisionFeed().declareExtensions(this.extProfile);
        this.extProfile.setAutoExtending(true);
        new AudioEntry().declareExtensions(this.extProfile);
        new DocumentEntry().declareExtensions(this.extProfile);
        new DocumentListFeed().declareExtensions(this.extProfile);
        new FolderEntry().declareExtensions(this.extProfile);
        new PdfEntry().declareExtensions(this.extProfile);
        new PresentationEntry().declareExtensions(this.extProfile);
        new SpreadsheetEntry().declareExtensions(this.extProfile);
        BatchUtils.declareExtensions(this.extProfile);
    }

    public void addExtensions() {
        declareExtensions();
    }

    public AclEntry insert(URL url, AclScope aclScope, AclRole aclRole) throws IOException, ServiceException {
        AclEntry aclEntry = new AclEntry();
        aclEntry.setScope(aclScope);
        aclEntry.setRole(aclRole);
        return (AclEntry) insert(url, aclEntry);
    }

    public AclEntry update(URL url, AclScope aclScope, AclRole aclRole) throws IOException, ServiceException {
        URL urlMakeEntryUrl = makeEntryUrl(url, aclScope);
        AclEntry aclEntry = new AclEntry();
        aclEntry.setScope(aclScope);
        aclEntry.setRole(aclRole);
        aclEntry.setId(urlMakeEntryUrl.toExternalForm());
        return (AclEntry) update(urlMakeEntryUrl, aclEntry);
    }

    public void delete(URL url, AclScope aclScope) throws IOException, ServiceException {
        delete(makeEntryUrl(url, aclScope));
    }

    private URL makeEntryUrl(URL url, AclScope aclScope) throws IOException {
        try {
            return new URI(url.getProtocol(), null, url.getHost(), url.getPort(), url.getPath() + URIUtil.SLASH + aclScope.toExternalForm(), null, null).toURL();
        } catch (URISyntaxException e2) {
            throw new IOException();
        }
    }

    public DocumentExportEntry insert(URL url, List<QueryParameter> list) throws IOException, ServiceException {
        DocumentExportEntry documentExportEntry = new DocumentExportEntry();
        Iterator<QueryParameter> it = list.iterator();
        while (it.hasNext()) {
            documentExportEntry.addQuery(it.next());
        }
        return (DocumentExportEntry) insert(url, documentExportEntry);
    }
}
