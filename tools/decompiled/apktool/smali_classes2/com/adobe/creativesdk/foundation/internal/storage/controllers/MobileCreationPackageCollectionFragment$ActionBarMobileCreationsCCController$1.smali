.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController$1;
.super Ljava/util/HashMap;
.source "MobileCreationPackageCollectionFragment.java"


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
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController;)V
    .locals 2

    .prologue
    .line 510
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 512
    const-string/jumbo v0, "area"

    const-string/jumbo v1, "browser"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "mobileCreations"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v0, "action"

    const-string/jumbo v1, "sortByDate"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$ActionBarMobileCreationsCCController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    return-void
.end method
