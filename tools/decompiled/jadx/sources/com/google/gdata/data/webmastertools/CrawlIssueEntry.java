package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CrawlIssueEntry.KIND)
public class CrawlIssueEntry extends BaseEntry<CrawlIssueEntry> {
    public static final String KIND = "http://schemas.google.com/webmasters/tools/2007#crawl_issue_entry";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public CrawlIssueEntry() {
        getCategories().add(CATEGORY);
    }

    public CrawlIssueEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CrawlIssueEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CrawlIssueEntry.class, CrawlIssueCrawlType.getDefaultDescription(true, false));
            extensionProfile.declare(CrawlIssueEntry.class, CrawlIssueDateDetected.class);
            extensionProfile.declare(CrawlIssueEntry.class, CrawlIssueDetail.class);
            extensionProfile.declare(CrawlIssueEntry.class, CrawlIssueIssueType.getDefaultDescription(true, false));
            extensionProfile.declare(CrawlIssueEntry.class, CrawlIssueLinkedFromUrl.getDefaultDescription(false, true));
            extensionProfile.declare(CrawlIssueEntry.class, CrawlIssueUrl.getDefaultDescription(true, false));
        }
    }

    public CrawlIssueCrawlType getCrawlType() {
        return (CrawlIssueCrawlType) getExtension(CrawlIssueCrawlType.class);
    }

    public void setCrawlType(CrawlIssueCrawlType crawlIssueCrawlType) {
        if (crawlIssueCrawlType == null) {
            removeExtension(CrawlIssueCrawlType.class);
        } else {
            setExtension(crawlIssueCrawlType);
        }
    }

    public boolean hasCrawlType() {
        return hasExtension(CrawlIssueCrawlType.class);
    }

    public CrawlIssueDateDetected getDateDetected() {
        return (CrawlIssueDateDetected) getExtension(CrawlIssueDateDetected.class);
    }

    public void setDateDetected(CrawlIssueDateDetected crawlIssueDateDetected) {
        if (crawlIssueDateDetected == null) {
            removeExtension(CrawlIssueDateDetected.class);
        } else {
            setExtension(crawlIssueDateDetected);
        }
    }

    public boolean hasDateDetected() {
        return hasExtension(CrawlIssueDateDetected.class);
    }

    public CrawlIssueDetail getDetail() {
        return (CrawlIssueDetail) getExtension(CrawlIssueDetail.class);
    }

    public void setDetail(CrawlIssueDetail crawlIssueDetail) {
        if (crawlIssueDetail == null) {
            removeExtension(CrawlIssueDetail.class);
        } else {
            setExtension(crawlIssueDetail);
        }
    }

    public boolean hasDetail() {
        return hasExtension(CrawlIssueDetail.class);
    }

    public CrawlIssueIssueType getIssueType() {
        return (CrawlIssueIssueType) getExtension(CrawlIssueIssueType.class);
    }

    public void setIssueType(CrawlIssueIssueType crawlIssueIssueType) {
        if (crawlIssueIssueType == null) {
            removeExtension(CrawlIssueIssueType.class);
        } else {
            setExtension(crawlIssueIssueType);
        }
    }

    public boolean hasIssueType() {
        return hasExtension(CrawlIssueIssueType.class);
    }

    public List<CrawlIssueLinkedFromUrl> getLinkedFroms() {
        return getRepeatingExtension(CrawlIssueLinkedFromUrl.class);
    }

    public void addLinkedFrom(CrawlIssueLinkedFromUrl crawlIssueLinkedFromUrl) {
        getLinkedFroms().add(crawlIssueLinkedFromUrl);
    }

    public boolean hasLinkedFroms() {
        return hasRepeatingExtension(CrawlIssueLinkedFromUrl.class);
    }

    public CrawlIssueUrl getUrl() {
        return (CrawlIssueUrl) getExtension(CrawlIssueUrl.class);
    }

    public void setUrl(CrawlIssueUrl crawlIssueUrl) {
        if (crawlIssueUrl == null) {
            removeExtension(CrawlIssueUrl.class);
        } else {
            setExtension(crawlIssueUrl);
        }
    }

    public boolean hasUrl() {
        return hasExtension(CrawlIssueUrl.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{CrawlIssueEntry " + super.toString() + "}";
    }
}
