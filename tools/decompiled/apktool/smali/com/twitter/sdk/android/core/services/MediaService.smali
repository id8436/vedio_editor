.class public interface abstract Lcom/twitter/sdk/android/core/services/MediaService;
.super Ljava/lang/Object;
.source "MediaService.java"


# virtual methods
.method public abstract upload(Ld/az;Ld/az;Ld/az;)Lf/g;
    .param p1    # Ld/az;
        .annotation runtime Lf/b/q;
            a = "media"
        .end annotation
    .end param
    .param p2    # Ld/az;
        .annotation runtime Lf/b/q;
            a = "media_data"
        .end annotation
    .end param
    .param p3    # Ld/az;
        .annotation runtime Lf/b/q;
            a = "additional_owners"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/az;",
            "Ld/az;",
            "Ld/az;",
            ")",
            "Lf/g",
            "<",
            "Lcom/twitter/sdk/android/core/a/h;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/l;
    .end annotation

    .annotation runtime Lf/b/o;
        a = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
