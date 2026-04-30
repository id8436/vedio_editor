package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.Multimap;
import com.google.common.collect.SetMultimap;
import com.google.common.reflect.TypeToken;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mortbay.jetty.servlet.ServletHandler;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public class EventBus {
    private static final LoadingCache<Class<?>, Set<Class<?>>> flattenHierarchyCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<?>, Set<Class<?>>>() { // from class: com.google.common.eventbus.EventBus.1
        @Override // com.google.common.cache.CacheLoader
        public Set<Class<?>> load(Class<?> cls) {
            return TypeToken.of((Class) cls).getTypes().rawTypes();
        }
    });
    private final ThreadLocal<Queue<EventWithSubscriber>> eventsToDispatch;
    private final SubscriberFindingStrategy finder;
    private final ThreadLocal<Boolean> isDispatching;
    private SubscriberExceptionHandler subscriberExceptionHandler;
    private final SetMultimap<Class<?>, EventSubscriber> subscribersByType;
    private final ReadWriteLock subscribersByTypeLock;

    public EventBus() {
        this(ServletHandler.__DEFAULT_SERVLET);
    }

    public EventBus(String str) {
        this(new LoggingSubscriberExceptionHandler(str));
    }

    public EventBus(SubscriberExceptionHandler subscriberExceptionHandler) {
        this.subscribersByType = HashMultimap.create();
        this.subscribersByTypeLock = new ReentrantReadWriteLock();
        this.finder = new AnnotatedSubscriberFinder();
        this.eventsToDispatch = new ThreadLocal<Queue<EventWithSubscriber>>() { // from class: com.google.common.eventbus.EventBus.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public Queue<EventWithSubscriber> initialValue() {
                return new LinkedList();
            }
        };
        this.isDispatching = new ThreadLocal<Boolean>() { // from class: com.google.common.eventbus.EventBus.3
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.lang.ThreadLocal
            public Boolean initialValue() {
                return false;
            }
        };
        this.subscriberExceptionHandler = (SubscriberExceptionHandler) Preconditions.checkNotNull(subscriberExceptionHandler);
    }

    public void register(Object obj) {
        Multimap<Class<?>, EventSubscriber> multimapFindAllSubscribers = this.finder.findAllSubscribers(obj);
        this.subscribersByTypeLock.writeLock().lock();
        try {
            this.subscribersByType.putAll(multimapFindAllSubscribers);
        } finally {
            this.subscribersByTypeLock.writeLock().unlock();
        }
    }

    public void unregister(Object obj) {
        for (Map.Entry<Class<?>, Collection<EventSubscriber>> entry : this.finder.findAllSubscribers(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<EventSubscriber> value = entry.getValue();
            this.subscribersByTypeLock.writeLock().lock();
            try {
                Set<EventSubscriber> set = this.subscribersByType.get(key);
                if (!set.containsAll(value)) {
                    throw new IllegalArgumentException("missing event subscriber for an annotated method. Is " + obj + " registered?");
                }
                set.removeAll(value);
            } finally {
                this.subscribersByTypeLock.writeLock().unlock();
            }
        }
    }

    public void post(Object obj) {
        boolean z;
        boolean z2 = false;
        Iterator<Class<?>> it = flattenHierarchy(obj.getClass()).iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            Class<?> next = it.next();
            this.subscribersByTypeLock.readLock().lock();
            try {
                Set<EventSubscriber> set = this.subscribersByType.get(next);
                if (!set.isEmpty()) {
                    z = true;
                    Iterator<EventSubscriber> it2 = set.iterator();
                    while (it2.hasNext()) {
                        enqueueEvent(obj, it2.next());
                    }
                }
                z2 = z;
            } finally {
                this.subscribersByTypeLock.readLock().unlock();
            }
        }
        if (!z && !(obj instanceof DeadEvent)) {
            post(new DeadEvent(this, obj));
        }
        dispatchQueuedEvents();
    }

    void enqueueEvent(Object obj, EventSubscriber eventSubscriber) {
        this.eventsToDispatch.get().offer(new EventWithSubscriber(obj, eventSubscriber));
    }

    void dispatchQueuedEvents() {
        if (!this.isDispatching.get().booleanValue()) {
            this.isDispatching.set(true);
            try {
                Queue<EventWithSubscriber> queue = this.eventsToDispatch.get();
                while (true) {
                    EventWithSubscriber eventWithSubscriberPoll = queue.poll();
                    if (eventWithSubscriberPoll != null) {
                        dispatch(eventWithSubscriberPoll.event, eventWithSubscriberPoll.subscriber);
                    } else {
                        return;
                    }
                }
            } finally {
                this.isDispatching.remove();
                this.eventsToDispatch.remove();
            }
        }
    }

    void dispatch(Object obj, EventSubscriber eventSubscriber) {
        try {
            eventSubscriber.handleEvent(obj);
        } catch (InvocationTargetException e2) {
            try {
                this.subscriberExceptionHandler.handleException(e2.getCause(), new SubscriberExceptionContext(this, obj, eventSubscriber.getSubscriber(), eventSubscriber.getMethod()));
            } catch (Throwable th) {
                Logger.getLogger(EventBus.class.getName()).log(Level.SEVERE, String.format("Exception %s thrown while handling exception: %s", th, e2.getCause()), th);
            }
        }
    }

    @VisibleForTesting
    Set<Class<?>> flattenHierarchy(Class<?> cls) {
        try {
            return flattenHierarchyCache.getUnchecked(cls);
        } catch (UncheckedExecutionException e2) {
            throw Throwables.propagate(e2.getCause());
        }
    }

    final class LoggingSubscriberExceptionHandler implements SubscriberExceptionHandler {
        private final Logger logger;

        public LoggingSubscriberExceptionHandler(String str) {
            this.logger = Logger.getLogger(EventBus.class.getName() + "." + ((String) Preconditions.checkNotNull(str)));
        }

        @Override // com.google.common.eventbus.SubscriberExceptionHandler
        public void handleException(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
            this.logger.log(Level.SEVERE, "Could not dispatch event: " + subscriberExceptionContext.getSubscriber() + " to " + subscriberExceptionContext.getSubscriberMethod(), th.getCause());
        }
    }

    class EventWithSubscriber {
        final Object event;
        final EventSubscriber subscriber;

        public EventWithSubscriber(Object obj, EventSubscriber eventSubscriber) {
            this.event = Preconditions.checkNotNull(obj);
            this.subscriber = (EventSubscriber) Preconditions.checkNotNull(eventSubscriber);
        }
    }
}
