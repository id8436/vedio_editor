package com.google.gdata.util;

import com.google.common.annotations.VisibleForTesting;
import com.google.gdata.client.Service;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class VersionRegistry {
    private static VersionRegistry versionRegistry;
    private ThreadLocal<List<Version>> threadVersions = new ThreadLocal<>();
    private List<Version> defaultVersions = new ArrayList();

    public static synchronized VersionRegistry ensureRegistry() {
        if (versionRegistry == null) {
            versionRegistry = new VersionRegistry();
        }
        return versionRegistry;
    }

    @VisibleForTesting
    static void reset() {
        versionRegistry = null;
    }

    public static final VersionRegistry get() {
        if (versionRegistry == null) {
            throw new IllegalStateException("Uninitialized version registry");
        }
        return versionRegistry;
    }

    public static Version getVersionFromProperty(Class<? extends Service> cls) {
        String str = cls.getName() + ".version";
        String property = System.getProperty(str);
        if (property == null) {
            return null;
        }
        try {
            return new Version(cls, property, new Version[0]);
        } catch (IllegalArgumentException e2) {
            throw new IllegalStateException("Invalid version property value: " + str, e2);
        }
    }

    @VisibleForTesting
    static void mergeVersions(List<Version> list, List<Version> list2) {
        Iterator<Version> it = list2.iterator();
        while (it.hasNext()) {
            Version versionFindServiceVersion = Version.findServiceVersion(list, it.next().getServiceClass());
            if (versionFindServiceVersion != null) {
                list.remove(versionFindServiceVersion);
            }
        }
        list.addAll(list2);
    }

    @VisibleForTesting
    static void mergeVersions(List<Version> list, Version version) {
        mergeVersions(list, (List<Version>) Arrays.asList(version));
    }

    public List<Version> getDefaultVersions() {
        return this.defaultVersions;
    }

    public void addDefaultVersion(Version version, boolean z) {
        ArrayList arrayList = new ArrayList(this.defaultVersions);
        if (z) {
            mergeVersions(arrayList, version.getImpliedVersions());
        } else {
            mergeVersions(arrayList, version);
        }
        this.defaultVersions = Collections.unmodifiableList(arrayList);
    }

    public void setThreadVersion(Version version) {
        this.threadVersions.set(Collections.unmodifiableList(version.getImpliedVersions()));
    }

    public List<Version> getThreadVersions() {
        return this.threadVersions.get();
    }

    public void resetThreadVersion() {
        if (this.threadVersions != null) {
            this.threadVersions.remove();
        }
    }

    @VisibleForTesting
    List<Version> getVersions() {
        List<Version> defaultVersions = getDefaultVersions();
        List<Version> threadVersions = getThreadVersions();
        if (threadVersions != null) {
            ArrayList arrayList = new ArrayList(defaultVersions.size() + threadVersions.size());
            arrayList.addAll(defaultVersions);
            mergeVersions(arrayList, threadVersions);
            return arrayList;
        }
        return defaultVersions;
    }

    public Version getVersion(Class<? extends Service> cls) {
        Version versionFindServiceVersion = null;
        List<Version> threadVersions = getThreadVersions();
        if (threadVersions != null) {
            versionFindServiceVersion = Version.findServiceVersion(threadVersions, cls);
        }
        if (versionFindServiceVersion == null && (versionFindServiceVersion = Version.findServiceVersion(getDefaultVersions(), cls)) == null) {
            throw new IllegalStateException("Attempt to access version information for unversioned service:" + cls);
        }
        return versionFindServiceVersion;
    }

    @VisibleForTesting
    public synchronized void reset(List<Version> list) {
        this.threadVersions = new ThreadLocal<>();
        if (list != null) {
            this.defaultVersions = new ArrayList(list);
        } else {
            this.defaultVersions = new ArrayList();
        }
    }
}
