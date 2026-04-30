.class public Lcom/twitter/sdk/android/core/internal/scribe/ac;
.super Ljava/lang/Object;
.source "ScribeEvent.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/scribe/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/scribe/g",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/ab;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ac;->a:Lcom/google/gson/Gson;

    .line 132
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/internal/scribe/ab;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ac;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    check-cast p1, Lcom/twitter/sdk/android/core/internal/scribe/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ac;->a(Lcom/twitter/sdk/android/core/internal/scribe/ab;)[B

    move-result-object v0

    return-object v0
.end method
