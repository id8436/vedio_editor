.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController$1;
.super Ljava/util/HashMap;
.source "AdobeUxActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;)V
    .locals 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string/jumbo v0, "area"

    const-string/jumbo v1, "browser"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v0, "action"

    const-string/jumbo v1, "view"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
