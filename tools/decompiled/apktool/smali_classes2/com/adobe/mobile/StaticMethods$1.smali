.class final Lcom/adobe/mobile/StaticMethods$1;
.super Ljava/util/HashMap;
.source "StaticMethods.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 400
    const-string/jumbo v0, "a.push.optin"

    const-string/jumbo v1, "False"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/StaticMethods$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
