.class public Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropContentHolder;
.super Ljava/lang/Object;
.source "UploadDragDropContentHolder.java"


# instance fields
.field private itemsUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private targetFolderHref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropContentHolder;->targetFolderHref:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropContentHolder;->itemsUriList:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public getItemsUriList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropContentHolder;->itemsUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetFolderHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropContentHolder;->targetFolderHref:Ljava/lang/String;

    return-object v0
.end method
