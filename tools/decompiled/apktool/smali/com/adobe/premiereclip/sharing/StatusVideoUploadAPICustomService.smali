.class interface abstract Lcom/adobe/premiereclip/sharing/StatusVideoUploadAPICustomService;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# virtual methods
.method public abstract status(Ljava/lang/String;J)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "command"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lf/b/t;
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
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/f;
        a = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
