package com.google.api.gbase.client;

import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class FeedURLFactory {
    public static final String DEFAULT_BASE_URL = "http://www.google.com/base/";
    private static final FeedURLFactory instance = new FeedURLFactory();
    private URL baseUrl;
    private URL feedAttributes;
    private URL feedItems;
    private URL feedItemsBatch;
    private URL feedLocales;
    private URL feedSnippets;
    private URL feedSnippetsBatch;

    public static FeedURLFactory getDefault() {
        return instance;
    }

    private FeedURLFactory() {
        try {
            init(DEFAULT_BASE_URL);
        } catch (MalformedURLException e2) {
            throw new RuntimeException("Unexpected malformed URL", e2);
        }
    }

    public FeedURLFactory(String str) throws MalformedURLException {
        init(str);
    }

    private void init(String str) throws MalformedURLException {
        this.baseUrl = new URL(str);
        this.feedSnippets = new URL(this.baseUrl, "feeds/snippets/");
        this.feedSnippetsBatch = new URL(this.baseUrl, "feeds/snippets/batch");
        this.feedItems = new URL(this.baseUrl, "feeds/items/");
        this.feedItemsBatch = new URL(this.baseUrl, "feeds/items/batch");
        this.feedLocales = new URL(this.baseUrl, "feeds/locales/");
        this.feedAttributes = new URL(this.baseUrl, "feeds/attributes/");
    }

    public URL getBaseURL() {
        return this.baseUrl;
    }

    private String encode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 is not supported by the JVM", e2);
        }
    }

    public URL getSnippetsFeedURL() {
        return this.feedSnippets;
    }

    public URL getSnippetsBatchFeedURL() {
        return this.feedSnippetsBatch;
    }

    public URL getSnippetsEntryURL(String str) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("entryId is null");
        }
        return new URL(this.feedSnippets, encode(str));
    }

    public URL getItemsFeedURL() {
        return this.feedItems;
    }

    public URL getItemsEntryURL(String str) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("entryId is null");
        }
        return new URL(this.feedItems, encode(str));
    }

    public URL getItemsBatchFeedURL() {
        return this.feedItemsBatch;
    }

    public URL getLocalesFeedURL() {
        return this.feedLocales;
    }

    public URL getItemTypesFeedURL(String str) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("locale is null");
        }
        return new URL(this.baseUrl, "feeds/itemtypes/" + encode(str));
    }

    public URL getItemTypesEntryURL(String str, String str2) throws MalformedURLException {
        if (str == null) {
            throw new NullPointerException("locale is null");
        }
        if (str2 == null) {
            throw new NullPointerException("itemType is null");
        }
        return new URL(this.baseUrl, "feeds/itemtypes/" + encode(str) + URIUtil.SLASH + encode(str2));
    }

    public URL getAttributesFeedURL() {
        return this.feedAttributes;
    }
}
