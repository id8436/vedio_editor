.class final Lcom/facebook/i/b;
.super Ljava/util/HashMap;
.source "AppEventsLoggerUtility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/facebook/i/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sget-object v0, Lcom/facebook/i/c;->a:Lcom/facebook/i/c;

    const-string/jumbo v1, "MOBILE_APP_INSTALL"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/i/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/facebook/i/c;->b:Lcom/facebook/i/c;

    const-string/jumbo v1, "CUSTOM_APP_EVENTS"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/i/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
