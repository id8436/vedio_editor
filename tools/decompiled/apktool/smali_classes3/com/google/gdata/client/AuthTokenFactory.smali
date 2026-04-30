.class public interface abstract Lcom/google/gdata/client/AuthTokenFactory;
.super Ljava/lang/Object;
.source "AuthTokenFactory.java"


# virtual methods
.method public abstract getAuthToken()Lcom/google/gdata/client/AuthTokenFactory$AuthToken;
.end method

.method public abstract handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/GoogleService$SessionExpiredException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation
.end method
