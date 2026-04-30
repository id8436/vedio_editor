package com.behance.sdk.OAuth;

import oauth.signpost.OAuthConsumer;
import oauth.signpost.OAuthProvider;
import oauth.signpost.basic.DefaultOAuthConsumer;
import oauth.signpost.basic.DefaultOAuthProvider;

/* JADX INFO: loaded from: classes2.dex */
public class TwitterClient {
    public static final String TWITTER_ACCESS_TOKEN_URL = "https://api.twitter.com/oauth/access_token";
    public static final String TWITTER_AUTHORIZE_TOKEN_URL = "https://api.twitter.com/oauth/authorize";
    public static final String TWITTER_OAUTH_CALLBACK_URI = "com.behance.behance://oauth.callback";
    public static final String TWITTER_REQUEST_TOKEN_URL = "https://api.twitter.com/oauth/request_token";
    private static TwitterClient instance;
    private OAuthConsumer mConsumer;
    private OAuthProvider mProvider;
    private String oAuthURL;
    private String oAuthVerifier;
    private String userName;

    public String getoAuthURL() {
        return this.oAuthURL;
    }

    public void setoAuthURL(String str) {
        this.oAuthURL = str;
    }

    public String getoAuthVerifier() {
        return this.oAuthVerifier;
    }

    public void setoAuthVerifier(String str) {
        this.oAuthVerifier = str;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public static TwitterClient getInstance(String str, String str2) {
        if (instance == null) {
            instance = new TwitterClient(str, str2);
        }
        return instance;
    }

    private TwitterClient(String str, String str2) {
        initialize(str, str2);
    }

    private void initialize(String str, String str2) {
        this.mProvider = new DefaultOAuthProvider(TWITTER_REQUEST_TOKEN_URL, TWITTER_ACCESS_TOKEN_URL, TWITTER_AUTHORIZE_TOKEN_URL);
        this.mConsumer = new DefaultOAuthConsumer(str, str2);
    }

    public OAuthProvider getOAuthProvider() {
        return this.mProvider;
    }

    public OAuthConsumer getOAuthConsumer() {
        return this.mConsumer;
    }
}
