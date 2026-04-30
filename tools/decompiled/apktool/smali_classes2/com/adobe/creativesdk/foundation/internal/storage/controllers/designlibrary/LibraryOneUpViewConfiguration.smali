.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryOneUpViewConfiguration;
.super Ljava/lang/Object;
.source "LibraryOneUpViewConfiguration.java"


# static fields
.field public static final LIBRARY_COLLECTION_HREF_KEY:Ljava/lang/String; = "collectionhref"

.field public static final LIBRARY_COLLECTION_PARENT_HREF_KEY:Ljava/lang/String; = "collectionParentHref"

.field public static final START_INDEX_KEY:Ljava/lang/String; = "startIndex"


# instance fields
.field private collectionHref:Ljava/lang/String;

.field private collectionParentHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeFromBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "collectionhref"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryOneUpViewConfiguration;->collectionHref:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "collectionParentHref"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryOneUpViewConfiguration;->collectionParentHref:Ljava/lang/String;

    .line 20
    return-void
.end method
