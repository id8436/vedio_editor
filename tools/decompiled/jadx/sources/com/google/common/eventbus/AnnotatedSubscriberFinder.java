package com.google.common.eventbus;

import com.google.common.base.Objects;
import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.reflect.TypeToken;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
class AnnotatedSubscriberFinder implements SubscriberFindingStrategy {
    private static final LoadingCache<Class<?>, ImmutableList<Method>> subscriberMethodsCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<?>, ImmutableList<Method>>() { // from class: com.google.common.eventbus.AnnotatedSubscriberFinder.1
        @Override // com.google.common.cache.CacheLoader
        public ImmutableList<Method> load(Class<?> cls) throws Exception {
            return AnnotatedSubscriberFinder.getAnnotatedMethodsInternal(cls);
        }
    });

    AnnotatedSubscriberFinder() {
    }

    @Override // com.google.common.eventbus.SubscriberFindingStrategy
    public Multimap<Class<?>, EventSubscriber> findAllSubscribers(Object obj) {
        HashMultimap hashMultimapCreate = HashMultimap.create();
        for (Method method : getAnnotatedMethods(obj.getClass())) {
            hashMultimapCreate.put(method.getParameterTypes()[0], makeSubscriber(obj, method));
        }
        return hashMultimapCreate;
    }

    private static ImmutableList<Method> getAnnotatedMethods(Class<?> cls) {
        try {
            return subscriberMethodsCache.getUnchecked(cls);
        } catch (UncheckedExecutionException e2) {
            throw Throwables.propagate(e2.getCause());
        }
    }

    final class MethodIdentifier {
        private final String name;
        private final List<Class<?>> parameterTypes;

        MethodIdentifier(Method method) {
            this.name = method.getName();
            this.parameterTypes = Arrays.asList(method.getParameterTypes());
        }

        public int hashCode() {
            return Objects.hashCode(this.name, this.parameterTypes);
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof MethodIdentifier)) {
                return false;
            }
            MethodIdentifier methodIdentifier = (MethodIdentifier) obj;
            return this.name.equals(methodIdentifier.name) && this.parameterTypes.equals(methodIdentifier.parameterTypes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<Method> getAnnotatedMethodsInternal(Class<?> cls) {
        Set setRawTypes = TypeToken.of((Class) cls).getTypes().rawTypes();
        HashMap mapNewHashMap = Maps.newHashMap();
        Iterator it = setRawTypes.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getMethods()) {
                if (method.isAnnotationPresent(Subscribe.class)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length != 1) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation, but requires " + parameterTypes.length + " arguments.  Event subscriber methods must require a single argument.");
                    }
                    MethodIdentifier methodIdentifier = new MethodIdentifier(method);
                    if (!mapNewHashMap.containsKey(methodIdentifier)) {
                        mapNewHashMap.put(methodIdentifier, method);
                    }
                }
            }
        }
        return ImmutableList.copyOf(mapNewHashMap.values());
    }

    private static EventSubscriber makeSubscriber(Object obj, Method method) {
        if (methodIsDeclaredThreadSafe(method)) {
            return new EventSubscriber(obj, method);
        }
        return new SynchronizedEventSubscriber(obj, method);
    }

    private static boolean methodIsDeclaredThreadSafe(Method method) {
        return method.getAnnotation(AllowConcurrentEvents.class) != null;
    }
}
