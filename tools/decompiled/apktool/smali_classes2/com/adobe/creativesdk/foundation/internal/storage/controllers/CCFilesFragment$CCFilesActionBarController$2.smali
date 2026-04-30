.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$2;
.super Ljava/util/HashMap;
.source "CCFilesFragment.java"


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
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;)V
    .locals 2

    .prologue
    .line 717
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 719
    const-string/jumbo v0, "area"

    const-string/jumbo v1, "browser"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string/jumbo v0, "action"

    const-string/jumbo v1, "viewAsGrid"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void
.end method
