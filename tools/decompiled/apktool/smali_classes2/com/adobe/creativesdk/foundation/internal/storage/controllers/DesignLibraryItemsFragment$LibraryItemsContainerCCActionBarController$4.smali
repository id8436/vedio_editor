.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$4;
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
    .line 934
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 936
    const-string/jumbo v0, "area"

    const-string/jumbo v1, "operations"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "library"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string/jumbo v0, "action"

    const-string/jumbo v1, "delete"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    return-void
.end method
