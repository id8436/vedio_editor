.class public interface abstract Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
.super Ljava/lang/Object;
.source "Credential.java"


# virtual methods
.method public abstract getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;
.end method

.method public abstract intercept(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
