.class interface abstract Lcom/adobe/premiereclip/sharing/InitVideoUploadAPICustomService;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# virtual methods
.method public abstract init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "command"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "total_bytes"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "media_type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "media_category"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lf/g",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/e;
    .end annotation

    .annotation runtime Lf/b/o;
        a = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
