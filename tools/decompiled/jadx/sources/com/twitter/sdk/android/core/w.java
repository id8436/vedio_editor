package com.twitter.sdk.android.core;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.services.CollectionService;
import com.twitter.sdk.android.core.services.ConfigurationService;
import com.twitter.sdk.android.core.services.FavoriteService;
import com.twitter.sdk.android.core.services.ListService;
import com.twitter.sdk.android.core.services.MediaService;
import com.twitter.sdk.android.core.services.SearchService;
import com.twitter.sdk.android.core.services.StatusesService;
import d.ar;
import f.aw;
import f.ay;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: TwitterApiClient.java */
/* JADX INFO: loaded from: classes.dex */
public class w {
    final aw retrofit;
    final ConcurrentHashMap<Class, Object> services;

    public w() {
        this(com.twitter.sdk.android.core.internal.a.e.a(af.a().g()), new com.twitter.sdk.android.core.internal.z());
    }

    public w(ar arVar) {
        this(com.twitter.sdk.android.core.internal.a.e.a(arVar, af.a().g()), new com.twitter.sdk.android.core.internal.z());
    }

    public w(aj ajVar) {
        this(com.twitter.sdk.android.core.internal.a.e.a(ajVar, af.a().c()), new com.twitter.sdk.android.core.internal.z());
    }

    public w(aj ajVar, ar arVar) {
        this(com.twitter.sdk.android.core.internal.a.e.a(arVar, ajVar, af.a().c()), new com.twitter.sdk.android.core.internal.z());
    }

    w(ar arVar, com.twitter.sdk.android.core.internal.z zVar) {
        this.services = buildConcurrentMap();
        this.retrofit = buildRetrofit(arVar, zVar);
    }

    private aw buildRetrofit(ar arVar, com.twitter.sdk.android.core.internal.z zVar) {
        return new ay().a(arVar).a(zVar.a()).a(f.a.a.a.a(buildGson())).a();
    }

    private Gson buildGson() {
        return new GsonBuilder().registerTypeAdapterFactory(new com.twitter.sdk.android.core.a.k()).registerTypeAdapterFactory(new com.twitter.sdk.android.core.a.m()).registerTypeAdapter(com.twitter.sdk.android.core.a.c.class, new com.twitter.sdk.android.core.a.d()).create();
    }

    private ConcurrentHashMap buildConcurrentMap() {
        return new ConcurrentHashMap();
    }

    public AccountService getAccountService() {
        return (AccountService) getService(AccountService.class);
    }

    public FavoriteService getFavoriteService() {
        return (FavoriteService) getService(FavoriteService.class);
    }

    public StatusesService getStatusesService() {
        return (StatusesService) getService(StatusesService.class);
    }

    public SearchService getSearchService() {
        return (SearchService) getService(SearchService.class);
    }

    public ListService getListService() {
        return (ListService) getService(ListService.class);
    }

    public CollectionService getCollectionService() {
        return (CollectionService) getService(CollectionService.class);
    }

    public ConfigurationService getConfigurationService() {
        return (ConfigurationService) getService(ConfigurationService.class);
    }

    public MediaService getMediaService() {
        return (MediaService) getService(MediaService.class);
    }

    protected <T> T getService(Class<T> cls) {
        if (!this.services.contains(cls)) {
            this.services.putIfAbsent(cls, this.retrofit.a(cls));
        }
        return (T) this.services.get(cls);
    }
}
