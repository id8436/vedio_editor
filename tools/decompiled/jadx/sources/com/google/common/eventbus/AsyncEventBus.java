package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.eventbus.EventBus;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import org.mortbay.jetty.servlet.ServletHandler;

/* JADX INFO: loaded from: classes3.dex */
@Beta
public class AsyncEventBus extends EventBus {
    private final ConcurrentLinkedQueue<EventBus.EventWithSubscriber> eventsToDispatch;
    private final Executor executor;

    public AsyncEventBus(String str, Executor executor) {
        super(str);
        this.eventsToDispatch = new ConcurrentLinkedQueue<>();
        this.executor = (Executor) Preconditions.checkNotNull(executor);
    }

    public AsyncEventBus(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super(subscriberExceptionHandler);
        this.eventsToDispatch = new ConcurrentLinkedQueue<>();
        this.executor = (Executor) Preconditions.checkNotNull(executor);
    }

    public AsyncEventBus(Executor executor) {
        super(ServletHandler.__DEFAULT_SERVLET);
        this.eventsToDispatch = new ConcurrentLinkedQueue<>();
        this.executor = (Executor) Preconditions.checkNotNull(executor);
    }

    @Override // com.google.common.eventbus.EventBus
    void enqueueEvent(Object obj, EventSubscriber eventSubscriber) {
        this.eventsToDispatch.offer(new EventBus.EventWithSubscriber(obj, eventSubscriber));
    }

    @Override // com.google.common.eventbus.EventBus
    protected void dispatchQueuedEvents() {
        while (true) {
            EventBus.EventWithSubscriber eventWithSubscriberPoll = this.eventsToDispatch.poll();
            if (eventWithSubscriberPoll != null) {
                dispatch(eventWithSubscriberPoll.event, eventWithSubscriberPoll.subscriber);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.eventbus.EventBus
    public void dispatch(final Object obj, final EventSubscriber eventSubscriber) {
        Preconditions.checkNotNull(obj);
        Preconditions.checkNotNull(eventSubscriber);
        this.executor.execute(new Runnable() { // from class: com.google.common.eventbus.AsyncEventBus.1
            @Override // java.lang.Runnable
            public void run() {
                AsyncEventBus.super.dispatch(obj, eventSubscriber);
            }
        });
    }
}
