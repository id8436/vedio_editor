package com.google.gdata.util;

import android.support.v7.widget.ActivityChooserView;
import com.google.gdata.client.Service;
import com.google.gdata.util.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class Version {
    public static final int ANY = -1;
    private static final Pattern VERSION_PROPERTY_PATTERN = Pattern.compile("([^\\d]+-)?(\\d+)(\\.\\d+)?");
    private List<Version> impliedVersions = new ArrayList();
    private int major;
    private int minor;
    private Class<? extends Service> serviceClass;

    public static Version findServiceVersion(Collection<? extends Version> collection, Class<? extends Service> cls) {
        for (Version version : collection) {
            if (version.getServiceClass().equals(cls)) {
                return version;
            }
        }
        return null;
    }

    public static Version anyMinorVersionOf(Version version) {
        return new Version(version.getServiceClass(), version.getMajor(), -1, new Version[0]);
    }

    public Version(Class<? extends Service> cls, int i, int i2, Version... versionArr) throws IllegalArgumentException, NullPointerException {
        if (cls == null) {
            throw new NullPointerException("Null service class");
        }
        if (i < 0 && i != -1) {
            throw new IllegalArgumentException("Invalid major version:" + i);
        }
        if (i2 < 0 && i2 != -1) {
            throw new IllegalArgumentException("Invalid minor version:" + i2);
        }
        this.serviceClass = cls;
        this.major = i;
        this.minor = i2;
        computeImpliedVersions(versionArr);
    }

    public Version(Class<? extends Service> cls, String str, Version... versionArr) throws IllegalArgumentException {
        this.serviceClass = cls;
        Matcher matcher = VERSION_PROPERTY_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Version description does not match expected format[{service}]{major}[.{minor}]:" + str);
        }
        String strGroup = matcher.group(3);
        this.major = Integer.parseInt(matcher.group(2));
        this.minor = strGroup != null ? Integer.parseInt(strGroup.substring(1)) : -1;
        computeImpliedVersions(versionArr);
    }

    public final Class<? extends Service> getServiceClass() {
        return this.serviceClass;
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public final String getVersionString() {
        StringBuilder sb = new StringBuilder();
        if (this.major != -1) {
            sb.append(this.major);
        }
        if (this.minor != -1) {
            sb.append('.');
            sb.append(this.minor);
        }
        return sb.toString();
    }

    public final boolean isSameService(Version version) {
        return version != null && this.serviceClass.equals(version.serviceClass);
    }

    public final boolean isCompatible(Version version) {
        if (isSameService(version) && (this.major == version.major || this.major == -1 || version.major == -1)) {
            return true;
        }
        for (Version version2 : this.impliedVersions) {
            if (version2 != this && version2.isCompatible(version)) {
                return true;
            }
        }
        return false;
    }

    private int raiseAny(int i) {
        return i != -1 ? i : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public final boolean matches(Version version) {
        if (isSameService(version) && ((this.major == version.major || this.major == -1 || version.major == -1) && (this.minor == version.minor || this.minor == -1 || version.minor == -1))) {
            return true;
        }
        for (Version version2 : this.impliedVersions) {
            if (version2 != this && version2.matches(version)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isAfter(Version version) {
        Version versionFindServiceVersion = findServiceVersion(this.impliedVersions, version.getServiceClass());
        Preconditions.checkArgument(versionFindServiceVersion != null, "No relationship between versions");
        int iRaiseAny = raiseAny(versionFindServiceVersion.major);
        int iRaiseAny2 = raiseAny(version.major);
        return iRaiseAny != iRaiseAny2 ? iRaiseAny > iRaiseAny2 : raiseAny(versionFindServiceVersion.minor) > raiseAny(version.minor);
    }

    public final boolean isBefore(Version version) {
        Version versionFindServiceVersion = findServiceVersion(this.impliedVersions, version.getServiceClass());
        Preconditions.checkArgument(versionFindServiceVersion != null, "No relationship between versions");
        return versionFindServiceVersion.major != version.major ? versionFindServiceVersion.major < version.major : versionFindServiceVersion.minor < version.minor;
    }

    public List<Version> getImpliedVersions() {
        return this.impliedVersions;
    }

    private void computeImpliedVersions(Version... versionArr) {
        this.impliedVersions.add(this);
        for (Version version : versionArr) {
            addImpliedVersion(version);
        }
    }

    private void addImpliedVersion(Version version) {
        if (!this.impliedVersions.contains(version)) {
            this.impliedVersions.add(version);
            Iterator<Version> it = version.getImpliedVersions().iterator();
            while (it.hasNext()) {
                addImpliedVersion(it.next());
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return isSameService(version) && this.major == version.major && this.minor == version.minor;
    }

    public int hashCode() {
        return (((this.serviceClass.hashCode() * 37) + this.major) * 37) + this.minor;
    }

    public String toString() {
        return this.serviceClass.getName() + ':' + getVersionString();
    }
}
