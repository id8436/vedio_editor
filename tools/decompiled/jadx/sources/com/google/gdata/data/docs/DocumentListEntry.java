package com.google.gdata.data.docs;

import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.MediaContent;
import com.google.gdata.data.Person;
import com.google.gdata.data.acl.AclFeed;
import com.google.gdata.data.extensions.Deleted;
import com.google.gdata.data.extensions.Labels;
import com.google.gdata.data.extensions.LastModifiedBy;
import com.google.gdata.data.extensions.LastViewed;
import com.google.gdata.data.extensions.QuotaBytesUsed;
import com.google.gdata.data.extensions.ResourceId;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.data.media.MediaFileSource;
import com.google.gdata.util.ContentType;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@Kind.Term(DocumentListEntry.KIND)
public class DocumentListEntry extends MediaEntry<DocumentListEntry> {
    public static final String PARENT_NAMESPACE = "http://schemas.google.com/docs/2007#parent";
    public static final String REVISIONS_NAMESPACE = "http://schemas.google.com/docs/2007/revisions";
    public static final String THUMBNAIL_NAMESPACE = "http://schemas.google.com/docs/2007/thumbnail";

    @Deprecated
    public static final String UNKNOWN_LABEL = "unknown";

    @Deprecated
    public static final String UNKNOWN_KIND = "http://schemas.google.com/docs/2007#unknown";

    @Deprecated
    public static final Category UNKNOWN_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", UNKNOWN_KIND, "unknown");
    public static final String KIND = "http://schemas.google.com/docs/2007#item";
    public static final String LABEL = "item";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, LABEL);
    public static final String FOLDERS_NAMESPACE = "http://schemas.google.com/docs/2007/folders";
    private static final Pattern FOLDER_PATTERN = Pattern.compile("^" + Pattern.quote(FOLDERS_NAMESPACE) + "(:?/[^/]+)?$");

    /* JADX INFO: loaded from: classes3.dex */
    public enum MediaType {
        JPG("image/jpeg"),
        JPEG("image/jpeg"),
        PNG("image/png"),
        BMP(AdobeAssetFileExtensions.kAdobeMimeTypeBMP),
        GIF("image/gif"),
        TXT(MimeTypes.TEXT_PLAIN),
        HTML(MimeTypes.TEXT_HTML),
        HTM(MimeTypes.TEXT_HTML),
        ODT("application/vnd.oasis.opendocument.text"),
        SXW("application/vnd.sun.xml.writer"),
        DOC("application/msword"),
        DOCX("application/vnd.openxmlformats-officedocument.wordprocessingml.document"),
        RTF("application/rtf"),
        PDF(AdobeAssetFileExtensions.kAdobeMimeTypePDF),
        PPS("application/vnd.ms-powerpoint"),
        PPT("application/vnd.ms-powerpoint"),
        XLS("application/vnd.ms-excel"),
        XLSX("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"),
        ODS("application/x-vnd.oasis.opendocument.spreadsheet"),
        CSV("text/csv"),
        TAB("text/tab-separated-value"),
        TSV("text/tab-separated-value"),
        SWF("application/x-shockwave-flash"),
        ZIP("application/zip"),
        WMF("application/x-msmetafile");

        private String mimeType;

        MediaType(String str) {
            this.mimeType = str;
        }

        public String getMimeType() {
            return this.mimeType;
        }

        public static MediaType fromFileName(String str) {
            int iLastIndexOf = str.lastIndexOf(46);
            return iLastIndexOf > 0 ? valueOf(str.substring(iLastIndexOf + 1).toUpperCase()) : valueOf(str);
        }
    }

    protected static String getMimeTypeFromFileName(String str) {
        return MediaType.fromFileName(str).getMimeType();
    }

    public DocumentListEntry() {
    }

    public DocumentListEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(DocumentListEntry.class, Description.class);
        extensionProfile.declare(DocumentListEntry.class, DocumentListAclFeedLink.class);
        extensionProfile.declare(DocumentListEntry.class, Filename.class);
        extensionProfile.declare(DocumentListEntry.class, LastCommented.class);
        extensionProfile.declare(DocumentListEntry.class, LastModifiedBy.class);
        extensionProfile.declare(DocumentListEntry.class, LastViewed.class);
        extensionProfile.declare(DocumentListEntry.class, Md5Checksum.class);
        extensionProfile.declare(DocumentListEntry.class, QuotaBytesUsed.class);
        extensionProfile.declare(DocumentListEntry.class, ResourceId.class);
        extensionProfile.declare(DocumentListEntry.class, SuggestedFilename.class);
        extensionProfile.declare(DocumentListEntry.class, WritersCanInvite.class);
    }

    public Link getDocumentLink() {
        return super.getHtmlLink();
    }

    @Deprecated
    public String getKey() {
        int iLastIndexOf;
        String str = this.state.id;
        if (str != null && (iLastIndexOf = str.lastIndexOf(URIUtil.SLASH)) > 0) {
            return str.substring(iLastIndexOf + 1);
        }
        return str;
    }

    public String getDocId() {
        int iLastIndexOf;
        String resourceId = getResourceId();
        if (resourceId != null && (iLastIndexOf = resourceId.lastIndexOf(":")) > 0) {
            return resourceId.substring(iLastIndexOf + 1);
        }
        return resourceId;
    }

    public String getType() {
        int iLastIndexOf;
        String resourceId = getResourceId();
        if (resourceId != null && (iLastIndexOf = resourceId.lastIndexOf(":")) > 0) {
            return resourceId.substring(0, iLastIndexOf);
        }
        return resourceId;
    }

    @Deprecated
    public void setFile(File file) {
        setFile(file, getMimeTypeFromFileName(file.getName()));
    }

    public void setFile(File file, String str) {
        MediaFileSource mediaFileSource = new MediaFileSource(file, str);
        MediaContent mediaContent = new MediaContent();
        mediaContent.setMediaSource(mediaFileSource);
        mediaContent.setMimeType(new ContentType(str));
        setContent(mediaContent);
    }

    public void setHidden(boolean z) {
        if (z) {
            getCategories().add(Labels.HIDDEN);
        } else {
            getCategories().remove(Labels.HIDDEN);
        }
    }

    public boolean isHidden() {
        return getCategories().contains(Labels.HIDDEN);
    }

    public void setStarred(boolean z) {
        if (z) {
            getCategories().add(Labels.STARRED);
        } else {
            getCategories().remove(Labels.STARRED);
        }
    }

    public boolean isStarred() {
        return getCategories().contains(Labels.STARRED);
    }

    public void setViewed(boolean z) {
        if (z) {
            getCategories().add(Labels.VIEWED);
        } else {
            getCategories().remove(Labels.VIEWED);
        }
    }

    public boolean isViewed() {
        return getCategories().contains(Labels.VIEWED);
    }

    public void setTrashed(boolean z) {
        if (z) {
            getCategories().add(Labels.TRASHED);
            setExtension(new Deleted());
        } else {
            getCategories().remove(Labels.TRASHED);
            removeExtension(Deleted.class);
        }
    }

    public boolean isTrashed() {
        return getCategories().contains(Labels.TRASHED) || hasExtension(Deleted.class);
    }

    public void setRestrictedDownload(boolean z) {
        if (z) {
            getCategories().add(Labels.RESTRICTED_DOWNLOAD);
        } else {
            getCategories().remove(Labels.RESTRICTED_DOWNLOAD);
        }
    }

    public boolean isRestrictedDownload() {
        return getCategories().contains(Labels.RESTRICTED_DOWNLOAD);
    }

    @Deprecated
    public void addFolder(Person person, String str) {
        getCategories().add(new Category("http://schemas.google.com/docs/2007/folders/" + person.getEmail(), str, str));
    }

    @Deprecated
    public Set<String> getFolders() {
        HashSet hashSet = new HashSet();
        for (Category category : getCategories()) {
            if (FOLDER_PATTERN.matcher(category.getScheme()).matches()) {
                String label = category.getLabel();
                hashSet.add((label == null || label.length() == 0) ? category.getTerm() : label);
            }
        }
        return hashSet;
    }

    public DocumentListAclFeedLink getAclFeedLink() {
        for (DocumentListAclFeedLink documentListAclFeedLink : getRepeatingExtension(DocumentListAclFeedLink.class)) {
            if ("http://schemas.google.com/acl/2007#accessControlList".equals(documentListAclFeedLink.getRel())) {
                return documentListAclFeedLink;
            }
        }
        return null;
    }

    public AclFeed getAclFeed() {
        DocumentListAclFeedLink aclFeedLink = getAclFeedLink();
        if (aclFeedLink != null) {
            return aclFeedLink.getFeed();
        }
        return null;
    }

    public List<Link> getParentLinks() {
        return getLinks("http://schemas.google.com/docs/2007#parent", ILink.Type.ATOM);
    }

    public String getDescription() {
        Description description = (Description) getExtension(Description.class);
        if (description == null) {
            return null;
        }
        return description.getValue() == null ? "" : description.getValue();
    }

    public void setDescription(String str) {
        if (str == null) {
            removeExtension(Description.class);
        } else {
            setExtension(new Description(str));
        }
    }

    public String getFilename() {
        Filename filename = (Filename) getExtension(Filename.class);
        if (filename == null) {
            return null;
        }
        return filename.getValue();
    }

    public void setFilename(String str) {
        if (str == null) {
            removeExtension(Filename.class);
        } else {
            setExtension(new Filename(str));
        }
    }

    public String getSuggestedFilename() {
        SuggestedFilename suggestedFilename = (SuggestedFilename) getExtension(SuggestedFilename.class);
        if (suggestedFilename == null) {
            return null;
        }
        return suggestedFilename.getValue();
    }

    public void setSuggestedFilename(String str) {
        if (str == null) {
            removeExtension(SuggestedFilename.class);
        } else {
            setExtension(new SuggestedFilename(str));
        }
    }

    public DateTime getLastCommented() {
        LastCommented lastCommented = (LastCommented) getExtension(LastCommented.class);
        if (lastCommented == null) {
            return null;
        }
        return lastCommented.getValue();
    }

    public void setLastCommented(DateTime dateTime) {
        if (dateTime == null) {
            removeExtension(LastCommented.class);
        } else {
            setExtension(new LastCommented(dateTime));
        }
    }

    public DateTime getLastViewed() {
        LastViewed lastViewed = (LastViewed) getExtension(LastViewed.class);
        if (lastViewed == null) {
            return null;
        }
        return lastViewed.getValue();
    }

    public void setLastViewed(DateTime dateTime) {
        if (dateTime == null) {
            removeExtension(LastViewed.class);
        } else {
            setExtension(new LastViewed(dateTime));
        }
    }

    public String getMd5Checksum() {
        Md5Checksum md5Checksum = (Md5Checksum) getExtension(Md5Checksum.class);
        if (md5Checksum == null) {
            return null;
        }
        return md5Checksum.getValue();
    }

    public void setMd5Checksum(String str) {
        if (str == null) {
            removeExtension(Md5Checksum.class);
        } else {
            setExtension(new Md5Checksum(str));
        }
    }

    public Long getQuotaBytesUsed() {
        QuotaBytesUsed quotaBytesUsed = (QuotaBytesUsed) getExtension(QuotaBytesUsed.class);
        if (quotaBytesUsed == null) {
            return null;
        }
        return quotaBytesUsed.getValue();
    }

    public void setQuotaBytesUsed(Long l) {
        if (l == null) {
            removeExtension(QuotaBytesUsed.class);
        } else {
            setExtension(new QuotaBytesUsed(l));
        }
    }

    public Boolean isWritersCanInvite() {
        WritersCanInvite writersCanInvite = (WritersCanInvite) getExtension(WritersCanInvite.class);
        if (writersCanInvite == null) {
            return null;
        }
        return writersCanInvite.getValue();
    }

    public void setWritersCanInvite(Boolean bool) {
        if (bool == null) {
            removeExtension(WritersCanInvite.class);
        } else {
            setExtension(new WritersCanInvite(bool));
        }
    }

    public LastModifiedBy getLastModifiedBy() {
        LastModifiedBy lastModifiedBy = (LastModifiedBy) getExtension(LastModifiedBy.class);
        if (lastModifiedBy == null) {
            return null;
        }
        return lastModifiedBy;
    }

    public void setLastModifiedBy(LastModifiedBy lastModifiedBy) {
        if (lastModifiedBy == null) {
            removeExtension(LastModifiedBy.class);
        } else {
            setExtension(lastModifiedBy);
        }
    }

    public String getResourceId() {
        ResourceId resourceId = (ResourceId) getExtension(ResourceId.class);
        if (resourceId == null) {
            return null;
        }
        return resourceId.getValue();
    }

    public void setResourceId(String str) {
        if (str == null) {
            removeExtension(ResourceId.class);
        } else {
            setExtension(new ResourceId(str));
        }
    }
}
