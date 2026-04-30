package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.Sets;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import org.apache.commons.io.IOUtils;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public final class ClassPath {
    private static final String CLASS_FILE_NAME_EXTENSION = ".class";
    private final ImmutableSet<ResourceInfo> resources;
    private static final Logger logger = Logger.getLogger(ClassPath.class.getName());
    private static final Predicate<ClassInfo> IS_TOP_LEVEL = new Predicate<ClassInfo>() { // from class: com.google.common.reflect.ClassPath.1
        @Override // com.google.common.base.Predicate
        public boolean apply(ClassInfo classInfo) {
            return classInfo.className.indexOf(36) == -1;
        }
    };
    private static final Splitter CLASS_PATH_ATTRIBUTE_SEPARATOR = Splitter.on(" ").omitEmptyStrings();

    private ClassPath(ImmutableSet<ResourceInfo> immutableSet) {
        this.resources = immutableSet;
    }

    public static ClassPath from(ClassLoader classLoader) throws IOException {
        Scanner scanner = new Scanner();
        Iterator it = getClassPathEntries(classLoader).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            scanner.scan((URI) entry.getKey(), (ClassLoader) entry.getValue());
        }
        return new ClassPath(scanner.getResources());
    }

    public ImmutableSet<ResourceInfo> getResources() {
        return this.resources;
    }

    public ImmutableSet<ClassInfo> getAllClasses() {
        return FluentIterable.from(this.resources).filter(ClassInfo.class).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses() {
        return FluentIterable.from(this.resources).filter(ClassInfo.class).filter(IS_TOP_LEVEL).toSet();
    }

    public ImmutableSet<ClassInfo> getTopLevelClasses(String str) {
        Preconditions.checkNotNull(str);
        ImmutableSet.Builder builder = ImmutableSet.builder();
        for (ClassInfo classInfo : getTopLevelClasses()) {
            if (classInfo.getPackageName().equals(str)) {
                builder.add(classInfo);
            }
        }
        return builder.build();
    }

    public ImmutableSet<ClassInfo> getTopLevelClassesRecursive(String str) {
        Preconditions.checkNotNull(str);
        String str2 = str + '.';
        ImmutableSet.Builder builder = ImmutableSet.builder();
        for (ClassInfo classInfo : getTopLevelClasses()) {
            if (classInfo.getName().startsWith(str2)) {
                builder.add(classInfo);
            }
        }
        return builder.build();
    }

    @Beta
    public class ResourceInfo {
        final ClassLoader loader;
        private final String resourceName;

        static ResourceInfo of(String str, ClassLoader classLoader) {
            return str.endsWith(ClassPath.CLASS_FILE_NAME_EXTENSION) ? new ClassInfo(str, classLoader) : new ResourceInfo(str, classLoader);
        }

        ResourceInfo(String str, ClassLoader classLoader) {
            this.resourceName = (String) Preconditions.checkNotNull(str);
            this.loader = (ClassLoader) Preconditions.checkNotNull(classLoader);
        }

        public final URL url() {
            return (URL) Preconditions.checkNotNull(this.loader.getResource(this.resourceName), "Failed to load resource: %s", this.resourceName);
        }

        public final String getResourceName() {
            return this.resourceName;
        }

        public int hashCode() {
            return this.resourceName.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ResourceInfo)) {
                return false;
            }
            ResourceInfo resourceInfo = (ResourceInfo) obj;
            return this.resourceName.equals(resourceInfo.resourceName) && this.loader == resourceInfo.loader;
        }

        public String toString() {
            return this.resourceName;
        }
    }

    @Beta
    public final class ClassInfo extends ResourceInfo {
        private final String className;

        ClassInfo(String str, ClassLoader classLoader) {
            super(str, classLoader);
            this.className = ClassPath.getClassName(str);
        }

        public String getPackageName() {
            return Reflection.getPackageName(this.className);
        }

        public String getSimpleName() {
            int iLastIndexOf = this.className.lastIndexOf(36);
            if (iLastIndexOf != -1) {
                return CharMatcher.DIGIT.trimLeadingFrom(this.className.substring(iLastIndexOf + 1));
            }
            String packageName = getPackageName();
            if (packageName.length() == 0) {
                return this.className;
            }
            return this.className.substring(packageName.length() + 1);
        }

        public String getName() {
            return this.className;
        }

        public Class<?> load() {
            try {
                return this.loader.loadClass(this.className);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException(e2);
            }
        }

        @Override // com.google.common.reflect.ClassPath.ResourceInfo
        public String toString() {
            return this.className;
        }
    }

    @VisibleForTesting
    static ImmutableMap<URI, ClassLoader> getClassPathEntries(ClassLoader classLoader) {
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        ClassLoader parent = classLoader.getParent();
        if (parent != null) {
            linkedHashMapNewLinkedHashMap.putAll(getClassPathEntries(parent));
        }
        if (classLoader instanceof URLClassLoader) {
            for (URL url : ((URLClassLoader) classLoader).getURLs()) {
                try {
                    URI uri = url.toURI();
                    if (!linkedHashMapNewLinkedHashMap.containsKey(uri)) {
                        linkedHashMapNewLinkedHashMap.put(uri, classLoader);
                    }
                } catch (URISyntaxException e2) {
                    throw new IllegalArgumentException(e2);
                }
            }
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    @VisibleForTesting
    final class Scanner {
        private final ImmutableSortedSet.Builder<ResourceInfo> resources = new ImmutableSortedSet.Builder<>(Ordering.usingToString());
        private final Set<URI> scannedUris = Sets.newHashSet();

        Scanner() {
        }

        ImmutableSortedSet<ResourceInfo> getResources() {
            return this.resources.build();
        }

        void scan(URI uri, ClassLoader classLoader) throws IOException {
            if (uri.getScheme().equals("file") && this.scannedUris.add(uri)) {
                scanFrom(new File(uri), classLoader);
            }
        }

        @VisibleForTesting
        void scanFrom(File file, ClassLoader classLoader) throws IOException {
            if (file.exists()) {
                if (file.isDirectory()) {
                    scanDirectory(file, classLoader);
                } else {
                    scanJar(file, classLoader);
                }
            }
        }

        private void scanDirectory(File file, ClassLoader classLoader) throws IOException {
            scanDirectory(file, classLoader, "", ImmutableSet.of());
        }

        private void scanDirectory(File file, ClassLoader classLoader, String str, ImmutableSet<File> immutableSet) throws IOException {
            File canonicalFile = file.getCanonicalFile();
            if (!immutableSet.contains(canonicalFile)) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    ClassPath.logger.warning("Cannot read directory " + file);
                    return;
                }
                ImmutableSet<File> immutableSetBuild = ImmutableSet.builder().addAll((Iterable) immutableSet).add(canonicalFile).build();
                for (File file2 : fileArrListFiles) {
                    String name = file2.getName();
                    if (file2.isDirectory()) {
                        scanDirectory(file2, classLoader, str + name + URIUtil.SLASH, immutableSetBuild);
                    } else {
                        String str2 = str + name;
                        if (!str2.equals("META-INF/MANIFEST.MF")) {
                            this.resources.add(ResourceInfo.of(str2, classLoader));
                        }
                    }
                }
            }
        }

        private void scanJar(File file, ClassLoader classLoader) throws IOException {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    Iterator it = getClassPathFromManifest(file, jarFile.getManifest()).iterator();
                    while (it.hasNext()) {
                        scan((URI) it.next(), classLoader);
                    }
                    Enumeration<JarEntry> enumerationEntries = jarFile.entries();
                    while (enumerationEntries.hasMoreElements()) {
                        JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                        if (!jarEntryNextElement.isDirectory() && !jarEntryNextElement.getName().equals("META-INF/MANIFEST.MF")) {
                            this.resources.add(ResourceInfo.of(jarEntryNextElement.getName(), classLoader));
                        }
                    }
                } finally {
                    try {
                        jarFile.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (IOException e3) {
            }
        }

        @VisibleForTesting
        static ImmutableSet<URI> getClassPathFromManifest(File file, @Nullable Manifest manifest) {
            if (manifest == null) {
                return ImmutableSet.of();
            }
            ImmutableSet.Builder builder = ImmutableSet.builder();
            String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
            if (value != null) {
                for (String str : ClassPath.CLASS_PATH_ATTRIBUTE_SEPARATOR.split(value)) {
                    try {
                        builder.add(getClassPathEntry(file, str));
                    } catch (URISyntaxException e2) {
                        ClassPath.logger.warning("Invalid Class-Path entry: " + str);
                    }
                }
            }
            return builder.build();
        }

        @VisibleForTesting
        static URI getClassPathEntry(File file, String str) throws URISyntaxException {
            URI uri = new URI(str);
            return uri.isAbsolute() ? uri : new File(file.getParentFile(), str.replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar)).toURI();
        }
    }

    @VisibleForTesting
    static String getClassName(String str) {
        return str.substring(0, str.length() - CLASS_FILE_NAME_EXTENSION.length()).replace(IOUtils.DIR_SEPARATOR_UNIX, '.');
    }
}
