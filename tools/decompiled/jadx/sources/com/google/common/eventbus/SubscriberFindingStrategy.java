package com.google.common.eventbus;

import com.google.common.collect.Multimap;

/* JADX INFO: loaded from: classes3.dex */
interface SubscriberFindingStrategy {
    Multimap<Class<?>, EventSubscriber> findAllSubscribers(Object obj);
}
