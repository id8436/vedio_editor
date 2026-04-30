.class interface abstract Lcom/adobe/premiereclip/sharing/FinalizeVideoUploadAPICustomService;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# virtual methods
.method public abstract finalize(Ljava/lang/String;J)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "command"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lf/b/c;
            a = "media_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lf/g",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadEnd;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/e;
    .end annotation

    .annotation runtime Lf/b/o;
        a = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
