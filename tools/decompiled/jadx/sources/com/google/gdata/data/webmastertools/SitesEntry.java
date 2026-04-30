package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.EntryLink;
import com.google.gdata.data.webmastertools.VerificationMethod;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SitesEntry extends BaseEntry<SitesEntry> {
    private static final Category CATEGORY = Namespaces.createCategory(Namespaces.KIND_SITE_INFO);
    private static final String CRAWLED = "crawled";
    private static final String CRAWL_RATE = "crawl-rate";
    private static final String ENHANCED_IMAGE_SEARCH = "enhanced-image-search";
    private static final String GEOLOCATION = "geolocation";
    private static final String INDEXED = "indexed";
    private static final String PREFERRED_DOMAIN = "preferred-domain";
    private static final String VERIFIED = "verified";

    public SitesEntry() {
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        ExtensionDescription defaultDescription = EntryLink.getDefaultDescription();
        defaultDescription.setRepeatable(true);
        extensionProfile.declare(SitesEntry.class, defaultDescription);
        extensionProfile.declare(SitesEntry.class, ExtensionDescription.getDefaultDescription(Indexed.class));
        extensionProfile.declare(SitesEntry.class, ExtensionDescription.getDefaultDescription(Crawled.class));
        extensionProfile.declare(SitesEntry.class, ExtensionDescription.getDefaultDescription(Verified.class));
        extensionProfile.declare(SitesEntry.class, ExtensionDescription.getDefaultDescription(Geolocation.class));
        extensionProfile.declare(SitesEntry.class, ExtensionDescription.getDefaultDescription(CrawlingRate.class));
        extensionProfile.declare(SitesEntry.class, ExtensionDescription.getDefaultDescription(PreferredDomain.class));
        extensionProfile.declare(SitesEntry.class, ExtensionDescription.getDefaultDescription(EnhancedImageSearch.class));
        ExtensionDescription defaultDescription2 = ExtensionDescription.getDefaultDescription(VerificationMethod.class);
        defaultDescription2.setRepeatable(true);
        extensionProfile.declare(SitesEntry.class, defaultDescription2);
    }

    public void setIndexed(boolean z) {
        Indexed indexed = (Indexed) getExtension(Indexed.class);
        if (indexed == null) {
            indexed = new Indexed();
            setExtension(indexed);
        }
        indexed.setBooleanValue(z);
    }

    public boolean getIndexed() {
        Indexed indexed = (Indexed) getExtension(Indexed.class);
        if (indexed == null) {
            return false;
        }
        return indexed.getBooleanValue();
    }

    public void setCrawled(DateTime dateTime) {
        Crawled crawled = (Crawled) getExtension(Crawled.class);
        if (crawled == null) {
            crawled = new Crawled();
            setExtension(crawled);
        }
        crawled.setDateTime(dateTime);
    }

    public DateTime getCrawled() {
        Crawled crawled = (Crawled) getExtension(Crawled.class);
        if (crawled == null) {
            return null;
        }
        return crawled.getDateTime();
    }

    public void setVerified(boolean z) {
        Verified verified = (Verified) getExtension(Verified.class);
        if (verified == null) {
            verified = new Verified();
            setExtension(verified);
        }
        verified.setBooleanValue(z);
    }

    public boolean getVerified() {
        Verified verified = (Verified) getExtension(Verified.class);
        if (verified == null) {
            return false;
        }
        return verified.getBooleanValue();
    }

    public void setGeolocation(String str) {
        Geolocation geolocation = (Geolocation) getExtension(Geolocation.class);
        if (geolocation == null) {
            geolocation = new Geolocation();
            setExtension(geolocation);
        }
        geolocation.setValue(str);
    }

    public String getGeolocation() {
        Geolocation geolocation = (Geolocation) getExtension(Geolocation.class);
        if (geolocation == null) {
            return null;
        }
        return geolocation.getValue();
    }

    public void setCrawlRate(CrawlRate crawlRate) {
        CrawlingRate crawlingRate = (CrawlingRate) getExtension(CrawlingRate.class);
        if (crawlingRate == null) {
            crawlingRate = new CrawlingRate();
            setExtension(crawlingRate);
        }
        crawlingRate.setCrawlRate(crawlRate);
    }

    public CrawlRate getCrawlRate() {
        CrawlingRate crawlingRate = (CrawlingRate) getExtension(CrawlingRate.class);
        if (crawlingRate == null) {
            return null;
        }
        return crawlingRate.getCrawlRate();
    }

    public void setPreferredDomain(DomainPreference domainPreference) {
        PreferredDomain preferredDomain = (PreferredDomain) getExtension(PreferredDomain.class);
        if (preferredDomain == null) {
            preferredDomain = new PreferredDomain();
            setExtension(preferredDomain);
        }
        preferredDomain.setPreference(domainPreference);
    }

    public DomainPreference getPreferredDomain() {
        PreferredDomain preferredDomain = (PreferredDomain) getExtension(PreferredDomain.class);
        if (preferredDomain == null) {
            return null;
        }
        return preferredDomain.getPreference();
    }

    public void setEnhancedImageSearch(boolean z) {
        EnhancedImageSearch enhancedImageSearch = (EnhancedImageSearch) getExtension(EnhancedImageSearch.class);
        if (enhancedImageSearch == null) {
            enhancedImageSearch = new EnhancedImageSearch();
            setExtension(enhancedImageSearch);
        }
        enhancedImageSearch.setBooleanValue(z);
    }

    public boolean getEnhancedImageSearch() {
        EnhancedImageSearch enhancedImageSearch = (EnhancedImageSearch) getExtension(EnhancedImageSearch.class);
        return enhancedImageSearch != null && enhancedImageSearch.getBooleanValue();
    }

    public void addVerificationMethod(VerificationMethod verificationMethod) {
        addRepeatingExtension(verificationMethod);
    }

    public List<VerificationMethod> getVerificationMethods() {
        return getRepeatingExtension(VerificationMethod.class);
    }

    public List<EntryLink> getEntryLinks() {
        return getRepeatingExtension(EntryLink.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        boolean z = false;
        BitSet bitSet = new BitSet(VerificationMethod.MethodType.values().length);
        Iterator<VerificationMethod> it = getVerificationMethods().iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                VerificationMethod next = it.next();
                int iOrdinal = next.getMethodType().ordinal();
                if (bitSet.get(iOrdinal)) {
                    throw new IllegalStateException("Duplicate verification method.");
                }
                bitSet.set(iOrdinal);
                if (!next.getInUse()) {
                    z = z2;
                } else {
                    if (z2) {
                        throw new IllegalStateException("Only one method can be marked as in-use.");
                    }
                    z = true;
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitesEntry.INDEXED, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class Indexed extends BoolValueConstruct {
        public Indexed() {
            super(SitesEntry.INDEXED);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitesEntry.CRAWLED, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class Crawled extends DateTimeValueConstruct {
        public Crawled() {
            super(SitesEntry.CRAWLED);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitesEntry.VERIFIED, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class Verified extends BoolValueConstruct {
        public Verified() {
            super(SitesEntry.VERIFIED);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitesEntry.GEOLOCATION, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class Geolocation extends RegionCodeValueConstruct {
        public Geolocation() {
            super(SitesEntry.GEOLOCATION);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitesEntry.CRAWL_RATE, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class CrawlingRate extends CrawlRateConstruct {
        public CrawlingRate() {
            super(SitesEntry.CRAWL_RATE);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitesEntry.PREFERRED_DOMAIN, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class PreferredDomain extends DomainPreferenceConstruct {
        public PreferredDomain() {
            super(SitesEntry.PREFERRED_DOMAIN);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitesEntry.ENHANCED_IMAGE_SEARCH, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class EnhancedImageSearch extends BoolValueConstruct {
        public EnhancedImageSearch() {
            super(SitesEntry.ENHANCED_IMAGE_SEARCH);
        }
    }
}
