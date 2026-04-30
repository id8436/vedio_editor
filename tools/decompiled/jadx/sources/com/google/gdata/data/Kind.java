package com.google.gdata.data;

import com.google.gdata.util.ServiceException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class Kind {
    public static final String META_DIRECTORY = "META-INF/gdata/kinds/";
    private static Map<String, List<Class<Adaptor>>> kindAdaptors = new HashMap();

    public interface Adaptable {
        void addAdaptor(Adaptor adaptor);

        <E extends Adaptor> E getAdaptor(Class<E> cls);

        Collection<Adaptor> getAdaptors();
    }

    public interface Adaptor {
        void declareExtensions(ExtensionProfile extensionProfile);
    }

    /* JADX INFO: loaded from: classes.dex */
    @Target({ElementType.TYPE})
    public @interface Term {
        String value();
    }

    public class AdaptableHelper implements Adaptable {
        private List<Adaptor> adaptors = new ArrayList();

        @Override // com.google.gdata.data.Kind.Adaptable
        public void addAdaptor(Adaptor adaptor) {
            this.adaptors.add(adaptor);
        }

        @Override // com.google.gdata.data.Kind.Adaptable
        public Collection<Adaptor> getAdaptors() {
            return this.adaptors;
        }

        @Override // com.google.gdata.data.Kind.Adaptable
        public <E extends Adaptor> E getAdaptor(Class<E> cls) {
            for (Adaptor adaptor : this.adaptors) {
                if (adaptor.getClass().equals(cls)) {
                    return cls.cast(adaptor);
                }
            }
            return null;
        }
    }

    public class AdaptorException extends ServiceException {
        public AdaptorException(String str) {
            super(str);
            setHttpErrorCodeOverride(500);
        }

        public AdaptorException(String str, Throwable th) {
            super(str, th);
            setHttpErrorCodeOverride(500);
        }

        public AdaptorException(Throwable th) {
            super(th);
            setHttpErrorCodeOverride(500);
        }
    }

    public static boolean isKindCategory(Category category) {
        return "http://schemas.google.com/g/2005#kind".equals(category.getScheme());
    }

    public static String getKindServiceName(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        try {
            URL url = new URL(str);
            String[] strArrSplit = url.getHost().split("\\W");
            int length = strArrSplit.length - 1;
            for (int i = length; i >= 0; i--) {
                if (i != length) {
                    sb.append(".");
                }
                sb.append(strArrSplit[i]);
            }
            String[] strArrSplit2 = url.getPath().split("\\W");
            for (int i2 = 0; i2 < strArrSplit2.length; i2++) {
                if (strArrSplit2[i2].length() > 0) {
                    sb.append(".");
                    sb.append(strArrSplit2[i2]);
                }
            }
            if (url.getRef() != null) {
                String[] strArrSplit3 = url.getRef().split("\\W");
                for (int i3 = 0; i3 < strArrSplit3.length; i3++) {
                    if (strArrSplit3[i3].length() > 0) {
                        sb.append(".");
                        sb.append(strArrSplit3[i3]);
                    }
                }
            }
            return sb.toString();
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException("Kind term must be a valid URL", e2);
        }
    }

    public static Class<Adaptor> getAdaptorClass(String str, Adaptable adaptable) throws AdaptorException {
        ClassLoader classLoader = adaptable.getClass().getClassLoader();
        List<Class<Adaptor>> arrayList = kindAdaptors.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            try {
                InputStream resourceAsStream = classLoader.getResourceAsStream(META_DIRECTORY + getKindServiceName(str));
                if (resourceAsStream == null) {
                    return null;
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.charAt(0) != '#') {
                        arrayList.add(classLoader.loadClass(line));
                    }
                }
                kindAdaptors.put(str, (List<Class<Adaptor>>) arrayList);
            } catch (IOException e2) {
                throw new AdaptorException("Unable to load Adaptor service info", e2);
            } catch (ClassNotFoundException e3) {
                throw new AdaptorException("Unable to load Adaptor class", e3);
            }
        }
        if (arrayList.size() == 1) {
            return (Class) arrayList.get(0);
        }
        for (Class<Adaptor> cls : arrayList) {
            for (Class<?> superclass = adaptable.getClass(); Adaptable.class.isAssignableFrom(superclass); superclass = superclass.getSuperclass()) {
                if (superclass.isAssignableFrom(cls)) {
                    return cls;
                }
            }
        }
        return null;
    }

    public static Adaptor getAdaptor(String str, Adaptable adaptable) throws AdaptorException {
        Constructor<Adaptor> constructor;
        Adaptor adaptorNewInstance;
        Class<Adaptor> adaptorClass = getAdaptorClass(str, adaptable);
        if (adaptorClass == null) {
            return null;
        }
        Adaptor adaptor = adaptable.getAdaptor(adaptorClass);
        if (adaptor == null) {
            Class<?> superclass = adaptable.getClass();
            while (true) {
                if (superclass == null) {
                    constructor = null;
                    break;
                }
                try {
                    constructor = adaptorClass.getConstructor(superclass);
                    break;
                } catch (NoSuchMethodException e2) {
                    superclass = superclass.getSuperclass();
                }
            }
            if (constructor == null) {
                try {
                    constructor = adaptorClass.getConstructor(new Class[0]);
                } catch (NoSuchMethodException e3) {
                    throw new AdaptorException("Unable to construct Adaptor " + adaptorClass + " instance for " + adaptable.getClass());
                }
            }
            try {
                if (superclass == null) {
                    adaptorNewInstance = constructor.newInstance(new Object[0]);
                } else {
                    adaptorNewInstance = constructor.newInstance(adaptable);
                }
                adaptable.addAdaptor(adaptorNewInstance);
                return adaptorNewInstance;
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new AdaptorException("Unable to create kind Adaptor", e5);
            }
        }
        return adaptor;
    }
}
