.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$1;
.super Ljava/util/HashMap;
.source "DesignLibraryItemsFragment.java"


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
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;)V
    .locals 2

    .prologue
    .line 894
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 896
    const-string/jumbo v0, "area"

    const-string/jumbo v1, "operations"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "library"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string/jumbo v0, "action"

    const-string/jumbo v1, "rename"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    return-void
.end method
