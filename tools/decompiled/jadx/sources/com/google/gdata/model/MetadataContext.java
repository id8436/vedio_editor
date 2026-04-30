package com.google.gdata.model;

import com.google.gdata.util.Version;
import com.google.gdata.wireformats.AltFormat;

/* JADX INFO: loaded from: classes3.dex */
public final class MetadataContext implements Comparable<MetadataContext> {
    public static final MetadataContext ATOM = forAlt(AltFormat.ATOM);
    public static final MetadataContext RSS = forAlt(AltFormat.RSS);
    private final AltFormat altFormat;
    private final String projection;
    private final Version version;

    public static MetadataContext forAlt(AltFormat altFormat) {
        return forContext(altFormat, null, null);
    }

    public static MetadataContext forProjection(String str) {
        return forContext(null, str, null);
    }

    public static MetadataContext forVersion(Version version) {
        return forContext(null, null, version);
    }

    public static MetadataContext forContext(AltFormat altFormat, String str, Version version) {
        if (altFormat == null && str == null && version == null) {
            return null;
        }
        return new MetadataContext(altFormat, str, version);
    }

    private MetadataContext(AltFormat altFormat, String str, Version version) {
        this.altFormat = altFormat;
        this.projection = str;
        this.version = version;
    }

    public boolean matches(MetadataContext metadataContext) {
        return metadataContext != null && (this.altFormat == null || this.altFormat.equals(metadataContext.altFormat)) && ((this.projection == null || this.projection.equals(metadataContext.projection)) && (this.version == null || (metadataContext.version != null && metadataContext.version.isCompatible(this.version))));
    }

    public AltFormat getAltFormat() {
        return this.altFormat;
    }

    public String getProjection() {
        return this.projection;
    }

    public Version getVersion() {
        return this.version;
    }

    @Override // java.lang.Comparable
    public int compareTo(MetadataContext metadataContext) {
        if (this == metadataContext) {
            return 0;
        }
        int iCompareAltFormat = compareAltFormat(this.altFormat, metadataContext.altFormat);
        if (iCompareAltFormat == 0) {
            int iCompareString = compareString(this.projection, metadataContext.projection);
            return iCompareString == 0 ? compareVersion(this.version, metadataContext.version) : iCompareString;
        }
        return iCompareAltFormat;
    }

    static int compareAltFormat(AltFormat altFormat, AltFormat altFormat2) {
        return compareString(altFormat == null ? null : altFormat.getName(), altFormat2 != null ? altFormat2.getName() : null);
    }

    static int compareString(String str, String str2) {
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        return str.compareTo(str2);
    }

    static int compareVersion(Version version, Version version2) {
        if (version == version2) {
            return 0;
        }
        if (version == null) {
            return -1;
        }
        if (version2 == null) {
            return 1;
        }
        int iCompareClass = MetadataKey.compareClass(version.getServiceClass(), version2.getServiceClass());
        if (iCompareClass != 0) {
            return iCompareClass;
        }
        int major = version.getMajor();
        int major2 = version2.getMajor();
        if (major != major2) {
            return major >= major2 ? 1 : -1;
        }
        int minor = version.getMinor();
        int minor2 = version2.getMinor();
        if (minor >= minor2) {
            return minor == minor2 ? 0 : 1;
        }
        return -1;
    }

    public int hashCode() {
        int iHashCode = this.altFormat != null ? 0 + this.altFormat.hashCode() : 0;
        if (this.projection != null) {
            iHashCode = (iHashCode * 37) + this.projection.hashCode();
        }
        if (this.version != null) {
            return (iHashCode * 37) + this.version.hashCode();
        }
        return iHashCode;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetadataContext)) {
            return false;
        }
        MetadataContext metadataContext = (MetadataContext) obj;
        if (this.altFormat == null) {
            if (metadataContext.altFormat != null) {
                return false;
            }
        } else if (!this.altFormat.equals(metadataContext.altFormat)) {
            return false;
        }
        if (this.projection == null) {
            if (metadataContext.projection != null) {
                return false;
            }
        } else if (!this.projection.equals(metadataContext.projection)) {
            return false;
        }
        return this.version == null ? metadataContext.version == null : this.version.equals(metadataContext.version);
    }

    public String toString() {
        return "{MetadataContext(" + this.altFormat + ',' + this.projection + ',' + this.version + ")}";
    }
}
