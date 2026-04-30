.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;
.super Ljava/lang/Object;
.source "AdobeLibrarySyncManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeLibraryMergerCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

.field final synthetic val$elementsAddedForLibrary:Ljava/util/HashMap;

.field final synthetic val$elementsDeletedForLibrary:Ljava/util/HashMap;

.field final synthetic val$elementsModifiedForLibrary:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;->val$elementsAddedForLibrary:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;->val$elementsModifiedForLibrary:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;->val$elementsDeletedForLibrary:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElementAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;->val$elementsAddedForLibrary:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const/4 v0, 0x1

    return v0
.end method

.method public onElementDeleted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;->val$elementsDeletedForLibrary:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const/4 v0, 0x1

    return v0
.end method

.method public onElementModified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$9;->val$elementsModifiedForLibrary:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const/4 v0, 0x1

    return v0
.end method
