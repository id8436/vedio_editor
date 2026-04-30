.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;
.super Ljava/lang/Object;
.source "AdobeEditSelectedLibraryElementsController.java"


# static fields
.field private static editController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;


# instance fields
.field private targetAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static clearSelection()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->editController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;

    .line 42
    return-void
.end method

.method public static sharedController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->editController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->editController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;

    .line 23
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->editController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;

    return-object v0
.end method


# virtual methods
.method public getTargetAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->targetAssets:Ljava/util/List;

    return-object v0
.end method

.method public setTargetAssets(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;)V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->targetAssets:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->targetAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public setTargetAssets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementWithParent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeEditSelectedLibraryElementsController;->targetAssets:Ljava/util/List;

    .line 29
    return-void
.end method
