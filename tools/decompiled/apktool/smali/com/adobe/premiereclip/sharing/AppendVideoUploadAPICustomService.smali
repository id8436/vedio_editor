.class interface abstract Lcom/adobe/premiereclip/sharing/AppendVideoUploadAPICustomService;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# virtual methods
.method public abstract append(Ld/az;Ld/az;Ld/az;Ld/az;)Lf/g;
    .param p1    # Ld/az;
        .annotation runtime Lf/b/q;
            a = "command"
        .end annotation
    .end param
    .param p2    # Ld/az;
        .annotation runtime Lf/b/q;
            a = "media_id"
        .end annotation
    .end param
    .param p3    # Ld/az;
        .annotation runtime Lf/b/q;
            a = "media"
        .end annotation
    .end param
    .param p4    # Ld/az;
        .annotation runtime Lf/b/q;
            a = "segment_index"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/az;",
            "Ld/az;",
            "Ld/az;",
            "Ld/az;",
            ")",
            "Lf/g",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadPart;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/l;
    .end annotation

    .annotation runtime Lf/b/o;
        a = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
