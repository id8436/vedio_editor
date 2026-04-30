.class public interface abstract Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;
.super Ljava/lang/Object;
.source "IAdobeAuthManagerCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TS:",
        "Ljava/lang/Object;",
        "TE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTE;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTS;)V"
        }
    .end annotation
.end method
