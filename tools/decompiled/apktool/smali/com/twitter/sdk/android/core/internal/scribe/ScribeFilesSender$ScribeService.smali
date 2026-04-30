.class interface abstract Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"


# virtual methods
.method public abstract upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/s;
            a = "version"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lf/b/s;
            a = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "log[]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lf/g",
            "<",
            "Ld/bf;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/e;
    .end annotation

    .annotation runtime Lf/b/k;
        a = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lf/b/o;
        a = "/{version}/jot/{type}"
    .end annotation
.end method

.method public abstract uploadSequence(Ljava/lang/String;Ljava/lang/String;)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/s;
            a = "sequence"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "log[]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lf/g",
            "<",
            "Ld/bf;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/e;
    .end annotation

    .annotation runtime Lf/b/k;
        a = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lf/b/o;
        a = "/scribe/{sequence}"
    .end annotation
.end method
